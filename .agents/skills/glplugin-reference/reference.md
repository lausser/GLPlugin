# GLPlugin method reference

Source analyzed: `/home/lausser/git/GLPlugin` (the canonical, up-to-date clone —
**not** any `check_xxx_health/GLPlugin/` submodule copy, which may be pinned to an
older commit). At the time this was written, that clone was at commit `616ee0c`.
Line numbers are a starting point, not a guarantee — if a `grep -n "sub name"` doesn't
land on the line given here, the file has moved on since; trust the grep.

Scope: this is a curated reference of the methods a plugin/vendor author actually calls
from `Device`/`Vendor`/`Model`/`Component`/`Item` code. It deliberately omits pure
transport internals (`get_entries_get_bulk`, `sort_oids`, `session_translate`, the
`SNMP/Backend/*.pm` files, etc.) that only GLPlugin itself calls, and the entire
`SNMP/MibsAndOids/*.pm` tree (generated OID data, not framework code — see the main
`CLAUDE.md` for that workflow instead).

Class hierarchy these methods come from (a `Device`/`Component`/`Item` object is always
one of these, and inherits everything above it):

```
Monitoring::GLPlugin                     (messages, thresholds*, args, modes, state, debug)
  Monitoring::GLPlugin::Item             (generic non-table item: new/init/check)
  Monitoring::GLPlugin::TableItem        (generic table-row item)
  Monitoring::GLPlugin::SNMP             (+ SNMP fetch/session/classification)
    Monitoring::GLPlugin::SNMP::Item
    Monitoring::GLPlugin::SNMP::TableItem  (+ SNMP value decoders)
  Monitoring::GLPlugin::UPNP             (+ UPNP discovery, used by check_nwc_health's AVM/FritzBox code)
  Monitoring::GLPlugin::DB               (+ DBI fetch/session — no current check_xxx_health repo uses this,
                                            but it's available if a future plugin talks to a database)
```

Threshold/perfdata/message plumbing (`set_thresholds`, `add_perfdata`, `add_message`,
`check_messages`, ...) technically lives in `Monitoring::GLPlugin::Commandline`, but you
never instantiate that class yourself — every `Item`/`Device` object reaches it
transparently via `AUTOLOAD` delegation to the single plugin-wide `$plugin` object, so
just call these methods on `$self` as shown below.

**The two accessors you'll use more than anything else:** `$self->opts->whatever` (every
registered CLI option, from any class, anywhere) and `$self->mode` (the `internal`
string of the currently-running mode). They're trivial, but between them they're by far
the most frequently called things in every one of these plugins — if you're not sure how
a piece of framework state reaches your code, it's one of these two.

This reference was built by grepping actual usage frequency across
`check_nwc_health`'s ~213,000-line **built** plugin (`plugins-scripts/check_nwc_health`,
which is every vendor module concatenated together) to make sure it covers what vendor
code actually calls, not just what looks important from reading GLPlugin in isolation —
re-run that grep (`grep -oE '\$self->[A-Za-z_]+' plugins-scripts/check_nwc_health | sort | uniq -c | sort -rn`)
if you want to sanity-check this reference against a newer build.

---

## 1. Status & messages

The plugin accumulates messages/severities as it goes; the framework computes the final
exit code from all of them at the end. You almost never call `nagios_exit` yourself.

| Method | File:line | Use |
|---|---|---|
| `$self->add_ok($msg)` / `add_warning($msg)` / `add_critical($msg)` / `add_unknown($msg)` | Commandline.pm:90 (via `add_message`) | Record a message at a fixed severity |
| `$self->add_message($level, $msg)` | Commandline.pm:90 | Generic form; `$level` is `OK`/`WARNING`/`CRITICAL`/`UNKNOWN` (exported constants) or the value returned by `check_thresholds()` |
| `$self->check_messages(...)` | Commandline.pm:276 | Rolls up all accumulated messages into `($code, $message)`. Called by the framework at the end — you rarely call it yourself except to inspect state mid-check (e.g. `Device.pm`'s classify() checks `$self->check_messages()` after `check_snmp_and_model()` to bail out early if that failed) |
| `$self->clear_ok` / `clear_warning` / `clear_critical` / `clear_unknown` | GLPlugin.pm:1015-1030 | Discard previously-added messages of one severity — used sparingly, e.g. to undo a spurious CRITICAL from a validator before re-evaluating (see `SNMP.pm`'s `validate_args` for the canonical example) |
| `$self->add_ok_mitigation($msg)` (+ warning/critical/unknown variants) | GLPlugin.pm:965-1000 | Same as `add_*`, but the severity is capped by `--mitigation` if the user passed it. Use these instead of the plain `add_*` methods for any check outcome you want `--mitigation` to be able to soften |
| `$self->no_such_mode()` | GLPlugin.pm:83 / SNMP.pm:1640 | The required fallback at the end of every mode-dispatch `if/elsif` chain — exits UNKNOWN with a clear "mode not implemented for this device" message instead of silently returning OK |
| `$self->no_such_model()` | SNMP.pm:1634 | Similar fallback for classify()/rebless() chains that fail to recognize the device at all |
| `$self->add_html($line)` | Commandline.pm:243 | Append a raw line to a separate HTML-output buffer (rendered by `html_string()`), independent of the plain-text message stream — used for `list-*`/table-shaped output rendered as an HTML `<table>` rather than ASCII (see `table_html` in §12) |

## 2. Human-readable info text

| Method | File:line | Use |
|---|---|---|
| `$self->add_info($text)` | GLPlugin.pm:1152 | Append to the running "what am I looking at" narration. Conventionally called at the top of every `check()` before evaluating thresholds — see the CPU example in the top-level `CLAUDE.md` |
| `$self->annotate_info($text)` | GLPlugin.pm:1159 | Append to the *last* `add_info` call instead of starting a new sentence |
| `$self->get_info` / `get_last_info` | GLPlugin.pm:1174-1184 | Read back accumulated info text, e.g. to build a composite message across several sub-items |

## 3. Thresholds

Both classic-Nagios range syntax (`10`, `10:`, `~:10`, `10:20`, `@10:20`) and plain
numbers are supported by `check_thresholds` — you don't need to parse `--warning`
yourself.

- `$self->set_thresholds(warning => $w, critical => $c)` — sets the **default**
  threshold bucket. Use this when the Component only ever checks one thing (a single
  CPU, a single uptime value).
- `$self->set_thresholds(metric => 'some_label', warning => $w, critical => $c)` — sets
  a **named** bucket, and lets `--warningx some_label=...` / `--criticalx some_label=...`
  (including `*`-glob keys) override it per-run without any code change. Use this
  whenever a Component can produce more than one instance (per-interface, per-CPU,
  per-pool) — `$label` should match the perfdata label you'll use in `add_perfdata` so
  users can find it in `--help` output and target it correctly.
- `$self->check_thresholds($value)` — evaluate against the **default** bucket, returns
  `OK`/`WARNING`/`CRITICAL`.
- `$self->check_thresholds(value => $value, metric => 'some_label')` — evaluate against
  a named bucket (falls back to the default bucket's warning/critical if that metric was
  never `set_thresholds`-ed). Can also pass `warning => ...` / `critical => ...` inline
  to bypass `set_thresholds` entirely for a one-off check.
- `$self->force_thresholds(...)` (Commandline.pm:500) — like `set_thresholds` but not
  overridable by `--warning`/`--critical`; rare, for thresholds that are a hard protocol
  limit rather than a policy choice.
- `$self->mod_threshold($metric, $factor_or_coderef)` (Commandline.pm:604) — scale/modify
  an already-set threshold (e.g. converting a percent threshold to an absolute byte
  threshold once you know total capacity).

Always call `set_thresholds` + `check_thresholds` inside the `Item`/`TableItem`'s
`check()`, never in `init()`/`finish()` — thresholds depend on `--warning`/`--warningx`
having already been parsed, which is guaranteed by the time `check()` runs.

## 4. Perfdata

- `$self->add_perfdata(label => $label, value => $value, uom => '%'|'B'|'c'|'', warning => ..., critical => ..., min => ..., max => ...)`
  (Commandline.pm:107). `warning`/`critical`/`min`/`max` are optional; if omitted, the
  framework fills warning/critical in from whatever `set_thresholds` bucket matches
  `$label` automatically — so in the common case you only pass `label`, `value`, `uom`.
  Respects `--morphperfdata`/`--selectedperfdata` automatically; don't reimplement that
  filtering yourself.
- Perfdata labels are part of the plugin's public contract (people graph them) — reuse
  the label pattern already used by sibling Components for the same kind of metric
  (`cpu_<name>_usage`, `mem_<name>_usage`, `if_<name>_in_octets`, etc.) rather than
  inventing a new naming scheme.

## 5. Rates, counters, and state across runs

Nagios plugins are stateless per-invocation; anything based on a rate (octets/sec,
errors/sec) needs the previous run's raw counter values persisted to disk.

- `$self->valdiff({name => $unique_key}, qw(counterFieldA counterFieldB))`
  (GLPlugin.pm:1204) — the standard way to do this. Give it a unique identity for the
  item (e.g. `$ifIndex.'#'.$ifDescr` for an interface) and the list of raw counter
  attribute names already sitting in `$self->{...}`. It loads the previous run's values
  from the statefile, computes `$self->{delta_<field>}` for each one plus
  `$self->{delta_timestamp}`, and stores the current values for next time. See
  `CheckNwcHealth::IFMIB::Component::InterfaceSubsystem::calc_usage` for the canonical
  usage/rate-from-delta pattern. Respects `--lookback` automatically — don't hand-roll
  your own "time since last run" math.
- `$self->protect_value($identity, $key, 'percent'|'positive'|$coderef)` (GLPlugin.pm:1465) —
  wraps a single (non-rate) value: if the freshly-fetched value fails the given
  validity check (e.g. a percent outside 0–100, a negative "positive"-only counter,
  or a custom coderef predicate), silently substitutes the last known-good cached value
  instead of alerting on what's almost certainly a bad SNMP read. Use this for gauges
  that are known to occasionally glitch on certain firmware, not as a general-purpose
  safety net for every value.
- `$self->save_state(...)` / `load_state(...)` (GLPlugin.pm:1507/1533) — the lower-level
  primitives `valdiff`/`protect_value` are built on. Reach for these directly only when
  you need to persist something that isn't a simple counter-diff (e.g. "was this alarm
  already active last run", used by watch-style modes like `watch-fexes`/`watch-accesspoints`).
- `--statefilesdir` controls where all of the above write their cache files; you never
  need to construct the path yourself (`create_statefilesdir`/`create_statefile`,
  GLPlugin.pm:1421/1438, handle that).

## 6. Blacklisting components

- `$self->is_blacklisted()` (GLPlugin.pm:1101) — check inside a Component/Item's
  `check()` (or before adding it to a results list at all) whether the user's
  `--blacklist` excludes this instance; if so, skip alerting on it instead of reporting
  a false failure for a component the user already knows is absent/dead.
- `$self->blacklist()` (GLPlugin.pm:1090) — mark an item blacklisted programmatically
  (rare; normally driven by matching `--blacklist` against `internal_name()`).
- Every `Item`/`TableItem` needs a working `internal_name()` (often inherited/derived
  from its identifying fields) for `--blacklist TYPE:name` matching to work at all —
  if blacklisting silently doesn't work for a new Component, check that first.

## 7. Selecting a specific instance: `--name`/`--name2`/`--name3`

- `$self->filter_name($name)` / `filter_name2($name)` / `filter_name3($name)`
  (GLPlugin.pm:523-537) — call from a Component's `init()` (typically inside the
  filter/callback passed to `get_snmp_tables`) to decide whether a given row matches
  the user's `--name`/`--name2`/`--name3`. Automatically treats the option as a regex
  instead of an exact match when `--regexp` is given — don't hand-roll that branch.

## 8. Classification: detecting vendor/model

- `$self->rebless($class)` (GLPlugin.pm:58) — the standard way to switch an object's
  class mid-flight while keeping all its accumulated data (`ref($self)` changes; the
  object doesn't). Prefer this over a raw `bless $self, $class` for anything under your
  own `CheckXxxHealth::*` namespace, since `rebless` also records `{classified_as}` and
  logs the switch at `--verbose`.
- `$self->implements_mib('SOME-MIB')` / `implements_mib('SOME-MIB', 'someTable')`
  (SNMP.pm:1775) — true if the device answers on that MIB's (or that table's) OID
  subtree, whether by matching `sysObjectID` or by a live/simulated GETNEXT probe.
  Prefer this over regex-matching `productname`/`sysDescr` where possible — it
  generalizes across firmware variants that changed their banner text but kept the same
  MIB support.
- `$self->require_mib('SOME-MIB')` (SNMP.pm:1734) — loads the given MIB's symbol table
  (from `GLPlugin/lib/.../MibsAndOids/SOMEMIB.pm`) if it isn't loaded yet. Called
  automatically by `get_snmp_object`/`implements_mib`/etc. — you only call it yourself
  if you need a MIB's OIDs available before those helpers would otherwise pull it in.
- `$self->map_oid_to_class($oidPrefix, $class)` (SNMP.pm:1718) — a lighter-weight
  alternative to a `productname`/`implements_mib` `if/elsif` chain, for when
  classification is purely "this `sysObjectID` prefix always means this class" (see
  `CheckUpsHealth::Device::classify` for real examples).
- `$self->check_snmp_and_model()` (SNMP.pm:1174) — the one-time SNMP handshake +
  sysDescr/sysObjectID fetch that `Device::classify()` calls before any of the above;
  you call this once per plugin run, not per Component.

## 9. SNMP data fetching

- `$self->get_snmp_object($mib, $objectName, $index)` (SNMP.pm:2236) — single scalar
  OID fetch, symbol-resolved. `$index` is optional (omit for scalar/`.0` objects).
- `$self->get_snmp_objects($mib, qw(name1 name2 ...))` (SNMP.pm:2088) — fetches several
  scalar objects from the same MIB in one call and drops each straight into
  `$self->{name1}`, `$self->{name2}`, etc.
- `$self->get_snmp_tables($mib, [ [$arrayAttr, $tableName, $itemClass, $filterCoderef, $onlyTheseRows, $cacheKeyAttr], ... ])`
  (SNMP.pm:2098) — the workhorse for anything table-shaped. Only the first three
  elements are commonly used (see the CPU example in `CLAUDE.md`); the optional 4th
  (`$filterCoderef`, called as `$filter->($new_item_object)`, row is skipped if it
  returns false) is the idiomatic way to combine table-fetching with `filter_name()`
  in one step; the 5th/6th are for restricting to specific row indices / caching by a
  key other than the row index. One call can populate several array attributes at once
  by passing multiple inner arrayrefs. Table fetches are automatically cached per
  `($mib, $table)` for the life of the process, so calling it twice for the same table
  (e.g. once per mode branch) is cheap.
- `$self->get_snmp_tables_cached($mib, $infos, $retention)` (SNMP.pm:2129) — like
  `get_snmp_tables` but persists the *parsed* result across plugin runs for `$retention`
  seconds — for tables that are expensive to fetch and change rarely (e.g. a full
  interface name table used only to resolve a cache of ifIndex → ifDescr).
- `$self->merge_tables($table1, $table2, ...)` / `merge_tables_with_code(...)`
  (SNMP.pm:2170/2186) — join multiple already-fetched table arrays that share a common
  index, when one logical row's data is spread across two SNMP tables. **Caveat:** the
  per-row `finish()` hook already ran on each table *before* the merge happens, so a
  merged row can't derive fields from both tables inside `finish()` — see the
  `finish_after_merge()` idiom in §16 for the established workaround.
- `$self->get_snmp_table_objects($mib, $table, $indicesOrUndef, $columnsOrUndef)`
  (SNMP.pm:2328) — the lower-level primitive `get_snmp_tables` builds on. Returns plain
  row hashrefs instead of auto-blessed `Item` objects, and lets you pass an explicit
  `\@indices` (e.g. to restrict to the interfaces matching `--name` before fetching, an
  optimization `get_snmp_tables` doesn't offer) or an explicit `\@columns` list (fetch
  only specific columns of a wide table). Reach for it directly instead of
  `get_snmp_tables` when you need that restriction, or need to inspect/modify a row
  before deciding which class to bless it into. `$table` also accepts a
  `'table1+table2'` form (literal `+`) as a shorthand to fetch two tables that share the
  same index and merge them in one call — an alternative to `merge_tables` for the
  common two-table-same-index case (see `CheckNwcHealth::Cisco::CISCOPORTSECURITYMIB::Component::InterfaceSubsystem`'s
  `'IFMIB', 'ifTable+ifXTable'` fetch for a real example).
- `$self->add_rawdata($oid, $value)` / `$self->rawdata()` (SNMP.pm:3464/3469) — inject
  or read a raw numeric-OID → value pair in the same in-memory store that backs
  `--snmpwalk` simulation. Real use: `Device::classify()`'s fallback for a device that
  answers almost nothing (only `UCD-SNMP-MIB`) manually fakes a `sysObjectID` response
  with `add_rawdata` so the rest of the classification chain has *something* to match
  against instead of crashing on undef.
- `$self->mibs_and_oids_definition($mib, $definitionName, @values)` (SNMP.pm:2208) —
  looks up a named decoder a MIB module registers for a TEXTUAL-CONVENTION-like type
  (e.g. `INET-ADDRESS-MIB`'s `InetAddressType`/`InetAddress`/`InetAddressMaker`), as
  opposed to a plain OID-name-to-number lookup. Use it when a raw SNMP value needs a
  semantic decode that a MIB module already provides (address-family-aware address
  parsing is the main real example in this codebase) rather than writing your own
  decode logic inline.
- `$self->uptime()` (SNMP.pm:1687) / `pretty_sysdesc()` (SNMP.pm:1376) / 
  `human_timeticks($ticks)` (SNMP.pm:1876) — convenience wrappers around the standard
  `sysUpTime`/`sysDescr` objects; `human_timeticks` turns a raw TimeTicks value into a
  "2 days, 9:33:07" style string for any other TimeTicks-typed object you fetch
  yourself (engine uptime, per-neighbor up-time, ...), not just the device's own uptime.

Raw OID names always come from a MIB module under
`GLPlugin/lib/Monitoring/GLPlugin/SNMP/MibsAndOids/` — if `get_snmp_object` silently
returns `undef`, first suspect a typo'd object name or a MIB that isn't in that
directory yet, not a broken framework call.

## 10. SNMP session management

Rarely needed directly — `check_snmp_and_model()` and the `get_snmp_*` helpers manage
the session for you — but relevant if a mode needs a second, differently-authenticated
SNMP context (e.g. BGP/OSPF peer data via `--community2`):

- `$self->establish_snmp_session()` / `establish_snmp_secondary_session()`
  (SNMP.pm:1394/1539) — open (or switch to) the primary/secondary SNMP session. See
  `CheckNwcHealth::Cisco::bgp` mode handling for the idiomatic
  try-primary-then-secondary-then-give-up pattern.

## 11. CLI: modes and options

- `$plugin->add_mode(internal => '...', spec => '...', alias => [...] , help => '...')`
  (GLPlugin.pm:342) — called once per supported `--mode` value, in the plugin's
  `.pl` entry point only (`run_plugin()`). `internal` is the string your `init()`
  dispatch chains match against `$self->mode`; `spec` is what the user types after
  `--mode`.
- `$plugin->add_arg(spec => 'name=s', help => '...', required => 0, default => ...)`
  (GLPlugin.pm:329) — register a new CLI option, entry point only. Check the
  "Common CLI options" table in the top-level `CLAUDE.md` before adding a new one —
  most needs (per-item thresholds, name selection, mitigation, rate windows) are
  already covered by an existing option.
- `$self->opts->something` — read any registered option's value from anywhere in the
  class hierarchy.
- `$self->override_opt('name', $value)` / `$self->create_opt('name')` — synthesized via
  `AUTOLOAD` (Commandline.pm:44); used to programmatically set/create an option value at
  runtime (e.g. `Device::classify()` forcing `productname` based on `--servertype`, or
  the `--mode walk` machinery repurposing `--snmpwalk` into an internal `--snmpdump`).
- `$self->mod_arg('name', sub { ... })` (GLPlugin.pm:337) — register a post-processing
  hook on an option's value (validation/transformation) at the point it's declared.

## 12. Debugging & inspection

- `$self->debug($format, @args)` (GLPlugin.pm:485) — printf-style, gated on
  `--verbose`/`-v` level and optionally mirrored to `--tracefile`. Sprinkle liberally in
  new classify()/init() logic — it's the primary way to see *why* the plugin picked the
  class/branch it did when replaying a walk file with `-vv`.
- `$self->dump()` (GLPlugin.pm:609) — dumps an object's full internal state; called
  automatically on each Component at `--verbose >= 2` by the
  `analyze_and_check_*_subsystem` machinery (see `CLAUDE.md`), useful when a Component's
  `init()` looks right but `check()` produces the wrong numbers.
- `$self->table_ascii(...)` / `table_html(...)` (GLPlugin.pm:650/688) — render an
  array of items as a table; used by `list-*` modes (`list-interfaces`,
  `list-bgp-peers`, ...) instead of hand-formatting output.

## 13. `Item`/`TableItem` lifecycle (what to override)

Both base classes (`Monitoring::GLPlugin::Item`, `Monitoring::GLPlugin::SNMP::TableItem`,
and their DB/UPNP counterparts) follow the same contract:

- `new(%fields)` (Item.pm:6, TableItem.pm:6) — sets `%fields` onto `$self`, then calls
  `init()` (Item) or the table-row equivalent. **You basically never override `new`.**
- `init()` — where you fetch/compute data. For a **Component** (the subsystem class
  itself), this is where `get_snmp_tables`/`get_snmp_objects` calls go, populating array
  attributes that hold your `Item`/`TableItem` instances.
- `finish()` (TableItem only, called once per row right after construction) — derive/
  normalize fields (pick the right revision of a counter, resolve a related OID like an
  `entPhysicalName`, decide a display `name`). Do data massaging here, not in `check()`.
- `check()` — the actual health judgement: `add_info` → `set_thresholds` →
  `check_thresholds` → `add_message` → `add_perfdata`. **If you don't define `check()`
  at the Component level, the inherited `Item::check()` (Item.pm:18) automatically
  iterates every array-ref attribute on `$self` and calls `->check()` on each element**
  — which is why most Component classes only need `init()` plus a `check()` on the
  inner per-row class. Only write a Component-level `check()` when you need cross-item
  aggregation (e.g. "critical if fewer than 2 of N power supplies are OK").
- SNMP-specific row decoders on `Monitoring::GLPlugin::SNMP::TableItem` worth knowing
  about: `unhex_ip`/`unhex_ipv6`/`compact_v6`/`unhex_mac`/`unhex_octet_string`
  (SNMP/TableItem.pm) — use these instead of hand-rolling hex/octet-string parsing when
  a table row carries a raw `InetAddress`/`PhysAddress`/`OCTET STRING` value.

## 14. Composing a Component from several sub-Components (`*_subsystem` composition)

**This is unrelated to the `analyze_and_check_<name>_subsystem` `AUTOLOAD` mechanism**
(that one wires a Model class's mode-dispatch to a single Component class — see the
repo's own `CLAUDE.md`). This section is about a Component class that is itself made of
several independent child Component classes, each doing its own SNMP fetch and its own
`check()`, rolled up into one combined result. Confirmed in active use in
`check_nwc_health` and `check_ups_health`; reach for it whenever one logical check (e.g.
"hardware-health") naturally splits into independent sub-areas (CPU environmentals,
memory environmentals, rack unit, fans, ...) that you'd rather keep as separate classes
than cram into one `init()`.

Real examples: `CheckNwcHealth::Cisco::UCS::Component::EnvironmentalSubsystem` composes
five children (cpu/mem/rackunit/equipment/storage); `CheckUpsHealth::UPS::Component::EnvironmentalSubsystem`
composes two (selftest/alarm).

- `$self->init_subsystems([ [$key, $childClass], [$key2, $childClass2], ... ])`
  (Item.pm:30) — call from the composite Component's own `init()`. For each pair,
  instantiates `$childClass->new()` (which runs the child's own `init()` — its SNMP
  fetches happen right here) and stores the object at `$self->{$key}`. **`$key` must
  end in `_subsystem`** — every other method below finds child objects by grepping
  `keys %{$self}` for that suffix, not from any list you pass elsewhere. If the user
  passed `--subsystem cpu_subsystem,mem_subsystem`, any pair whose `$key` isn't in that
  list is skipped (not constructed at all) — this is what lets a plugin support "only
  check part of hardware-health" without a dedicated `--mode`. `--subsystem` is
  plugin-specific, not a GLPlugin default (`add_arg(spec => 'subsystem=s', ...)` in the
  entry-point `.pl`) — only add it if the repo doesn't already register it.
- `$self->check_subsystems()` (Item.pm:44) — calls `->check()` on every `*_subsystem`
  child. Call from the composite Component's own `check()`.
- `$self->subsystem_summary($text)` (Item.pm:80) — called by a **child** Component's
  `check()`, typically after `$self->SUPER::check()` (which runs the inherited
  per-row-array iteration described in §13), to register the one-line summary its
  parent will collect, e.g. `$self->subsystem_summary(sprintf("%d cpus checked", scalar(@{$self->{processorunits}})))`.
- `$self->summarize_subsystems()` (Item.pm:60) — call from the composite Component's
  `check()` after `check_subsystems()`; returns every child's `{subsystem_summary}`
  joined with `", "`. Feed it to `reduce_messages_short(...)` to collapse everything
  down to one "X working fine, Y working fine" line — but only takes effect under
  `--report short`; without that flag every individual sub-item message still shows, by
  design.
- `$self->dump_subsystems()` (Item.pm:72) — call from an overridden `dump()` on the
  composite Component so `--verbose >= 2` recurses into every child's own dump instead
  of just the (mostly empty) composite object's top-level fields.

Minimal skeleton for a new composite Component:
```perl
package CheckXxxHealth::Vendor::Model::Component::HardwareSubsystem;
our @ISA = qw(Monitoring::GLPlugin::SNMP::Item);

sub init {
  my ($self) = @_;
  $self->init_subsystems([
      ["cpu_subsystem", "CheckXxxHealth::Vendor::Model::Component::CpuEnvSubsystem"],
      ["fan_subsystem", "CheckXxxHealth::Vendor::Model::Component::FanEnvSubsystem"],
  ]);
}

sub check {
  my ($self) = @_;
  $self->check_subsystems();
  $self->reduce_messages_short($self->summarize_subsystems() || "hardware working fine");
}

sub dump { my ($self) = @_; $self->dump_subsystems(); }

package CheckXxxHealth::Vendor::Model::Component::CpuEnvSubsystem;
our @ISA = qw(Monitoring::GLPlugin::SNMP::Item);

sub init {
  my ($self) = @_;
  $self->get_snmp_tables('SOME-MIB', [
      ['cpus', 'someCpuEnvTable', 'CheckXxxHealth::Vendor::Model::Component::CpuEnvSubsystem::Cpu'],
  ]);
}

sub check {
  my ($self) = @_;
  $self->SUPER::check();   # runs ->check() on every entry in @{$self->{cpus}}
  $self->subsystem_summary(sprintf("%d cpus checked", scalar(@{$self->{cpus}})));
}
```

## 15. Non-SNMP transports (niche, but available)

- `Monitoring::GLPlugin::UPNP` (`check_upnp_and_model()`, UPNP.pm:46) — SSDP/UPNP
  discovery, currently only exercised by `check_nwc_health`'s AVM/FritzBox code.
- `Monitoring::GLPlugin::DB` (`add_db_args`, `get_db_tables`, DB.pm) — a DBI-based
  counterpart to the SNMP layer (connection args, cached table fetches, its own
  `Item`/`TableItem`). None of the four current `check_xxx_health` repos use it — 
  `check_sap_health` talks to SAP via RFC calls written directly in its own classes,
  inheriting only the generic `Monitoring::GLPlugin` base — but it's the right base
  class to reach for if a future plugin's data source is a SQL database.

## 16. Global scratch variables & version comparisons

`$self->{...}` is per-object; a value set on a `Device` before it gets `rebless`ed, or
set on one `Component`, is not automatically visible from an unrelated `Item` deep in a
different Component. For the (uncommon but real) case where you need one piece of data
visible from anywhere in the current run regardless of which object/class is asking,
GLPlugin keeps a single package-global store, independent of any particular object:

- `$self->set_variable($key, $value)` / `$self->get_variable($key, $fallback)`
  (GLPlugin.pm:474/479) — read/write `$Monitoring::GLPlugin::variables->{$key}`. Real
  example: `Cisco::IOS`'s memory-usage code parses a firmware version out of `sysDescr`
  once (`$self->set_variable("version", $1)`), and other code checks it later via
  `version_is_minimum(...)` without re-fetching or re-parsing `sysDescr` itself.
- `$self->version_is_minimum($versionString)` (GLPlugin.pm:538) — dotted-version
  comparison (`"9.3.2"`, `"x.4"` with `x` as a wildcard segment) against whatever was
  last `set_variable("version", ...)`'d (or, as a fallback, `$self->{version}` on the
  current object). Use this instead of hand-rolling a version-string regex/split when a
  vendor's behavior/OID support differs between firmware releases.

## 17. SNMP GETBULK workarounds for buggy agents

Some SNMP agents (older Bintec/BiBoard devices are the concrete example in this
codebase) misbehave on GETBULK requests — hang, error out, or return garbage — even
though GETNEXT works fine. Rather than let every table fetch time out and fail, mark
the device once and the framework quietly falls back to plain GETNEXT for the rest of
the run:

- `$self->bulk_is_baeh($threshold)` (SNMP.pm:1623) — call once, early (typically the
  first line of a `Device`/`Component`'s `init()`, right after you've identified the
  vendor/model), to declare "this device's SNMP implementation can't be trusted with
  bulk requests." Every subsequent `get_table`/table fetch on this run uses GETNEXT
  instead. ("baeh" — as in the German interjection for "ugh/yuck" — is the maintainer's
  affectionate name for a broken agent, not a technical acronym.)
- `$self->bulk_baeh_reset()` (SNMP.pm:1616) — undo that, if you need bulk requests back
  for a later part of the same run.
- `$self->mult_snmp_max_msg_size($factor)` / `$self->reset_snmp_max_msg_size()`
  (SNMP.pm:1601/1608) — the sibling workaround for "the agent's replies are too big for
  its own advertised `maxMsgSize`," usually triggered automatically by `get_table`'s own
  error-recovery when it sees a "message size exceeded" error back from the agent —
  you'll rarely call these yourself, but recognize them if you see one in a stack of
  debug output while chasing a table-fetch failure on a new device.

## 18. Idioms built from plain Perl inheritance — not GLPlugin calls

These three method *names* are not defined anywhere in GLPlugin — grepping GLPlugin's
source for them will find nothing. They're naming conventions individual vendor authors
invented, using nothing but ordinary Perl `@ISA`/`SUPER::` inheritance, to solve
recurring problems the framework doesn't have a dedicated hook for. Recognize them when
you see them in existing vendor code, and feel free to invent your own equivalents under
different names for a new vendor — there's no framework registry to update.

- **`check_state()` — shared judgement logic across many similar sub-entity types.**
  When a vendor's hardware-health tree has many structurally similar leaf classes (fans,
  power supplies, modules, ports — each a `TableItem` off an `ENTITY-STATE-MIB`-style
  table), put the common admin/oper/standby/usage-state judgement once in a shared
  intermediate base class as `check_state()`, and have each leaf either call
  `$self->check_state()` as-is from its own `check()`, or override `check_state()` and
  call `$self->SUPER::check_state()` first to layer extra vendor/entity-specific rules
  on top of the common ones (see `CheckNwcHealth::Arista::Component::EnvironmentalSubsystem::{Entity,Fan,Powersupply}`
  for the real pattern). Prefer this over copy-pasting the same state-judgement logic
  into every leaf class.
- **`finish_after_merge()` — a second normalization pass after `merge_tables`.** The
  automatic `finish()` hook (§13) runs per-row at construction time, which is *before*
  `merge_tables`/`merge_tables_with_code` (§9) has joined that row with a second table's
  data — so a field that depends on both tables can't be derived inside `finish()`. The
  established fix, seen repeatedly in `check_nwc_health`'s Huawei entity code, is to
  write your own `finish_after_merge()` method (defaults/derives fields exactly like
  `finish()` would, just working on the now-merged row) and call it explicitly as the
  first line of `check()`, after the merge has already happened — not to fight this by
  cramming merge-dependent logic into `finish()`.
- **`overall_init()`/`overall_check()`/`overall_dump()` — graceful degradation to an
  aggregate when a per-instance table is empty.** Some devices only populate a detailed
  per-CPU (or per-whatever) table on certain models/firmware; on others the table comes
  back empty even though a single global aggregate OID (overall CPU usage, say) is
  always available. The idiom: `init()` fetches both the table and the aggregate
  scalar(s); `check()` branches on `scalar(@{$self->{items}}) == 0` — non-empty table
  → check each row normally, empty table → call your own `overall_check()` which
  evaluates the aggregate scalar(s) directly with the usual `set_thresholds`/
  `check_thresholds`/`add_perfdata` sequence. `overall_dump()` mirrors this for
  `--verbose >= 2` output. See `CheckNwcHealth::Foundry::Component::CpuSubsystem` for
  the real example. A rarer but legitimate variant of this idiom overrides `new()`
  itself to decide up front (from `$self->mode`) whether to call the normal `init()` or
  a cheaper `overall_init()` at all — see `CheckNwcHealth::F5::F5BIGIP::Component::CpuSubsystem`.
  This is the one common, legitimate reason to override `new()` at all; outside of this
  pattern, don't (see §13).
