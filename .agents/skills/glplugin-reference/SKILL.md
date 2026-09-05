---
name: glplugin-reference
description: Method reference for GLPlugin (Monitoring::GLPlugin::*), the shared Perl framework behind the check_nwc_health, check_sap_health, check_ups_health, check_wut_health family of Nagios/Icinga plugins. Use whenever you're writing or modifying a Device/Vendor/Model/Component/Item class in one of these plugins and need to know which existing GLPlugin method to call — for messages/status, thresholds, perfdata, SNMP fetching, vendor classification, rate/counter state, blacklisting, or CLI options — instead of reinventing it. Not needed for build-system or repo-layout questions (see that repo's CLAUDE.md instead).
---

# GLPlugin method reference

GLPlugin is the shared framework these plugins are built on (see each repo's
`CLAUDE.md` for the overall classify → rebless → dispatch → check architecture). This
skill is the API surface within that architecture: once you know *which* class you're
writing, this tells you *which method* does what you need.

Full categorized reference with signatures, file:line pointers, and gotchas:
**[reference.md](reference.md)**.

## Quick lookup by task

| You're trying to... | Reach for | Details |
|---|---|---|
| Report OK/WARNING/CRITICAL/UNKNOWN with a message | `add_message`, `add_ok`/`add_warning`/`add_critical`/`add_unknown` | §1 |
| Let `--mitigation` soften a failure | `add_ok_mitigation` / `add_warning_mitigation` / ... | §1 |
| End a mode-dispatch chain that didn't match | `$self->no_such_mode()` | §1 |
| Narrate what's being checked | `add_info` | §2 |
| Set/check a threshold (single item) | `set_thresholds(warning=>, critical=>)` + `check_thresholds($v)` | §3 |
| Set/check a threshold (per-instance, `--warningx` overridable) | `set_thresholds(metric=>'label', ...)` + `check_thresholds(value=>, metric=>)` | §3 |
| Emit perfdata | `add_perfdata(label=>, value=>, uom=>)` | §4 |
| Compute a rate from two SNMP counter reads | `valdiff({name=>$id}, qw(counterA counterB))` → `$self->{delta_counterA}` | §5 |
| Guard a flaky gauge/percent value | `protect_value($id, $key, 'percent'|'positive')` | §5 |
| Respect `--blacklist` for a component | `$self->is_blacklisted()` | §6 |
| Respect `--name`/`--name2`/`--regexp` for a component | `filter_name($name)` / `filter_name2` / `filter_name3` | §7 |
| Switch an object's class after detecting vendor/model | `$self->rebless('Some::Class')` | §8 |
| Check "does this device speak MIB X (or table Y)" | `$self->implements_mib('SOME-MIB'[, 'someTable'])` | §8 |
| Fetch one SNMP scalar | `get_snmp_object($mib, $name[, $index])` | §9 |
| Fetch several SNMP scalars at once | `get_snmp_objects($mib, qw(a b c))` | §9 |
| Fetch an SNMP table into Item objects | `get_snmp_tables($mib, [[$attr, $table, $class, $filter], ...])` | §9 |
| Print debug output visible under `-vv` | `$self->debug($fmt, @args)` | §12 |
| Render a `list-*` mode's output | `table_ascii(...)` / `table_html(...)` | §12 |
| Build one Component out of several independent sub-checks (CPU env, mem env, fans, ...) rolled into one result | `init_subsystems([[$key,$class],...])` + `check_subsystems()` + `summarize_subsystems()` + `subsystem_summary($text)` + `dump_subsystems()` | §14 |
| Fetch a table restricted to specific indices/columns, or two same-index tables in one call | `get_snmp_table_objects($mib, $table[+$table2], \@indices, \@columns)` | §9 |
| Fake/inject an SNMP OID response (e.g. for a device that answers almost nothing) | `add_rawdata($oid, $value)` | §9 |
| Decode a value using a MIB-provided TEXTUAL-CONVENTION-style helper (e.g. `InetAddress`) | `mibs_and_oids_definition($mib, $name, @values)` | §9 |
| Share one value across unrelated objects for the rest of this run (not persisted between runs) | `set_variable($key,$value)` / `get_variable($key)` | §16 |
| Gate vendor-specific behavior on a firmware/software version string | `version_is_minimum("9.3.2")` | §16 |
| Work around a device whose SNMP agent chokes on GETBULK | `$self->bulk_is_baeh()` early in `init()` | §17 |
| Share judgement logic across many similar leaf entity classes (fans, PSUs, modules, ...) | `check_state()` pattern (plain inheritance, not a GLPlugin call) | §18 |
| Derive a field that needs data from *two* tables just joined by `merge_tables` | `finish_after_merge()` pattern (plain inheritance, not a GLPlugin call) | §18 |
| Fall back to one aggregate value when a per-instance table comes back empty | `overall_init`/`overall_check`/`overall_dump` pattern (plain inheritance, not a GLPlugin call) | §18 |

## Three mechanisms named "subsystem"/lifecycle-hook-like that are easy to conflate

- `analyze_and_check_<anything>_subsystem("Some::Component::Class")` — how a **Model**
  class wires a mode to **one** Component — is `AUTOLOAD` magic with no defined method
  to find by grepping. It's documented in the repo's own `CLAUDE.md` (search for
  "analyze_and_check"), not here, since it's part of the architecture, not the method
  surface.
- `init_subsystems`/`check_subsystems`/`summarize_subsystems`/`subsystem_summary`/
  `dump_subsystems` (§14 below) — how **one Component** composes **several child
  Component objects** internally (e.g. one `hardware-health` check rolling up separate
  CPU/memory/fan/storage sub-checks). These are real methods defined on
  `Monitoring::GLPlugin::Item`, not `AUTOLOAD`, and they compose *within* a Component
  that some mode already dispatched to via the mechanism above — the two are used
  together, not as alternatives to each other.
- `check_state()`/`finish_after_merge()`/`overall_init()`/`overall_check()`/`overall_dump()`
  (§18) — despite reading like framework lifecycle hooks (they sit right next to real
  ones like `init()`/`finish()`/`check()`/`dump()`), **none of these exist in GLPlugin
  at all** — they're names individual vendor authors invented using plain
  `@ISA`/`SUPER::` inheritance for problems the framework has no dedicated hook for.
  Don't go looking for their definition in GLPlugin; do feel free to invent your own
  differently-named equivalent for a new vendor.

## Staying current

This reference was built by reading `/home/lausser/git/GLPlugin` (the canonical,
up-to-date clone) directly — not a possibly-stale `check_xxx_health/GLPlugin/`
submodule copy. If a method described here doesn't match what you find in a specific
repo's `GLPlugin/lib/`, that repo's submodule pin is older; trust the code, and treat
this file as due for a refresh (re-grep `/home/lausser/git/GLPlugin` for the current
signature).
