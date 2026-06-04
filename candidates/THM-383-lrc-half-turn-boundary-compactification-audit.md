---
id: THM-383-lrc-half-turn-boundary-compactification-audit
source: 01-canon/theorems/THM-383-lrc-half-turn-boundary-compactification-audit.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-383
name: lrc-half-turn-boundary-compactification-audit
status: PROVED (exact finite computation, bounded scope)
date: 2026-06-01
session: codex-2026-06-01-S513
depends_on:
  - THM-373
  - THM-374
---

# THM-383: Tie-wall compactification expands the bounded half-turn class menu

## Statement

In the bounded S512 circular-menu audit

```text
04-computation/lrc_iso_class_constraint_s512.py
```

the half-turn runner clock was sampled for primitive speed systems in the
following finite windows:

```text
total n=3, moving speeds <= 16
total n=4, moving speeds <= 10
total n=5, moving speeds <= 8
```

Open-cell samples use midpoints between consecutive event walls.  The
wall-compactified samples add the exact event-wall times, with the script's
fixed Hamiltonian tie path completing boundary tournaments.

The exact bounded counts are:

```text
total n   open phase classes   wall-compactified classes   A000568(n)
   3              2                         2                   2
   4              2                         4                   4

## Notes for the formalizer

(none yet)
