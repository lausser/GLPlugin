[?25l[J[J[J[?2004h[?25h[?1049h[?1h=[?2004h[1;80r[?12h[?12l[27m[23m[29m[m[H[2J[?25l[80;1HE325: ATTENTION
Found a swap file by the name "MIBS/.ADIC_TAPE_LIBRARY_MIB.mib.swp"
[10Cowned by: Hulse+lausser   dated: Thu Jan 25 14:52:25 2018
[9Cfile name: ~Hulse+lausser/git/check_tl_health/MIBS/ADIC_TAPE_LIBRARY_MIB.mib
[10Cmodified: no
[9Cuser name: Hulse+lausser   host name: Hulse
[8Cprocess ID: 8096
While opening file "MIBS/ADIC_TAPE_LIBRARY_MIB.mib"
[13Cdated: Wed Jan 24 21:46:00 2018

(1) Another program may be editing the same file.  If this is the case,
    be careful not to end up with two different instances of the same
    file when making changes.  Quit, or continue with caution.
(2) An edit session for this file crashed.
    If this is the case, use ":recover" or "vim -r MIBS/ADIC_TAPE_LIBRARY_MIB.mib"
    to recover the changes (see ":help recovery").
    If you did this already, delete the swap file "MIBS/.ADIC_TAPE_LIBRARY_MIB.mib.swp"
    to avoid this message.

"MIBS/ADIC_TAPE_LIBRARY_MIB.mib"[79;1H"MIBS/ADIC_TAPE_LIBRARY_MIB.mib" 2454 lines, 83207 characters[80;1H[K[80;1HPress ENTER or type command to continue[?25h[1;1H[19L[?25l[1;1H-- ****************************************************
-- ADIC-TAPE-LIBRARY-MIB.mib: Tape Library Platform Specific MIB
--
-- $Date: 2014-04-03 12:42:38 -0600 (Thu, 03 Apr 2014) $
--
-- Copyright (c) 2005-2014 by Quantum Corporation
-- All rights reserved.
--
-- ****************************************************

-- Glossary of terms
--
-- RAS : Reliability, Accessibility  and Serviceability
-- EVPS: Extended Virtual Private SAN (the Quantum/ADIC
--[7CMasking and Mapping Feature)
--[20;1HADIC-TAPE-LIBRARY-MIB DEFINITIONS ::= BEGIN

IMPORTS
    NOTIFICATION-TYPE, MODULE-IDENTITY, enterprises,
    Integer32, OBJECT-TYPE FROM SNMPv2-SMI
    TEXTUAL-CONVENTION, DisplayString, TruthValue FROM SNMPv2-TC
    NOTIFICATION-GROUP, MODULE-COMPLIANCE,
    OBJECT-GROUP FROM SNMPv2-CONF;[29;5Hquantum OBJECT IDENTIFIER ::= { enterprises 3764 }[31;5Hstorage OBJECT IDENTIFIER ::= { quantum 1 }[33;5Hlibrary OBJECT IDENTIFIER ::= { storage 10 }[35;5HtapeLibraryMIB MODULE-IDENTITY
    LAST-UPDATED "201404030000Z"
    ORGANIZATION "Quantum Corporation"
    CONTACT-INFO[39;12H" Quantum Corporation[40;14H224 Airport Parkway, Suite 300[41;14HSan Jose, CA 95110[42;14HTel: +1 800 284-5101[44;14HE-mail: support@quantum.com"
    DESCRIPTION[46;9H"This MIB provides Tape Library product information."
    REVISION    "201404030000Z"
    DESCRIPTION[49;9H"MIB update as of April 2014"
    ::= { library 10 }[52;5HtapeLibrarySystem OBJECT IDENTIFIER ::= { tapeLibraryMIB 1 }

-- the following two OBJECT IDENTIFIERS are used to define SNMPv2 Notifications
-- that are backward compatible with SNMPv1 Traps.
    tapeLibraryMIBNotificationPrefix OBJECT IDENTIFIER ::= { tapeLibraryMIB 3 }
    tapeLibraryMIBNotifications OBJECT IDENTIFIER ::= { tapeLibraryMIBNotificationPrefix 0 }
    tapeLibraryMIBNotificationOnlyData OBJECT IDENTIFIER ::= { tapeLibraryMIBNotificationPrefix 1 }

--
-- Textual conventions
--[64;5HFCPortType ::= TEXTUAL-CONVENTION
    STATUS      current
    DESCRIPTION[67;9H"Port type qualifier."
    SYNTAX INTEGER {[69;12HnPort( 1 ),[70;12HnlPort( 2 ),[71;12HfPort( 3 ),[72;12HflPort( 4 ),[73;12Hunknown( 5 )
    }[76;5HSCSICtrlSpeed ::= TEXTUAL-CONVENTION
    STATUS      current
    DESCRIPTION[79;9H"SCSI Speed."[80;1H[K[1;1H[?25h[?25l[80;1H[1mrecording @u[1;1H[?25h[?2004l[?25l[mt-- [51C*t[?25h[?25l[2;79r[2;1H[L[1;80r[1;2H[K[2;1H-- ****************************************************[?25h[80;1H[?2004l[?1l>[?1049lVim: Caught deadly signal TERM
Vim: preserving files...
Vim: Finished.
[80;1H