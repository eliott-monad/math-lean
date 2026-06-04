---
id: THM-408-moser-layered-slabs-have-unit-spines
source: 01-canon/theorems/THM-408-moser-layered-slabs-have-unit-spines.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-408
title: Moser layered slabs have explicit unit Hamiltonian spines
status: PROVED
source: codex-2026-06-04-S628
depends_on:
  - HYP-2203
related:
  - HYP-2202
  - HYP-2201
  - HYP-2188
---

# THM-408 - Moser Layered Slabs Have Unit Spines

## Statement

Work in the rank-4 Moser coordinate carrier used by S614/S617/S626.  Its unit
shell contains the following vectors:

```text
(-1,1,0,0), (0,-1,0,0), (0,0,-1,0),
(0,0,1,0),  (0,0,0,-1), (0,0,0,1)
```

For every integer `m >= 0`, define the `plus` layer word

```text
W_a^+ =
(a,1,1,-1), (a,1,0,-1), (a,1,0,0), (a,1,1,0),
(a,0,1,0),  (a,0,0,0),  (a,0,0,-1), (a,0,1,-1)
```

and the cap

```text
C^+ =
(0,1,1,-1), (0,1,0,-1), (0,1,0,0),
(0,1,1,0),  (0,0,1,0),  (0,0,0,0).
```

## Notes for the formalizer

(none yet)
