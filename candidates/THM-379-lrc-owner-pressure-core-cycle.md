---
id: THM-379-lrc-owner-pressure-core-cycle
source: 01-canon/theorems/THM-379-lrc-owner-pressure-core-cycle.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-379
name: lrc-owner-pressure-core-cycle
status: PROVED
date: 2026-06-01
session: codex-2026-06-01-S503
depends_on:
  - THM-357
  - THM-359
  - THM-365
---

# THM-379: Owner-realized endpoint cores force pressure cycles

## Statement

Let `(E,I,B,P)` be a finite endpoint/interval protection system as in
THM-359:

```text
B(i) subset E       boundary endpoints of interval i,
P(e) subset I       intervals strictly protecting endpoint e.
```

Let `(E',I')` be a nonempty protection core.  Suppose there is a finite owner
set `R` and owner maps

```text
o_E : E' -> R,
o_I : I' -> R.
```

Assume the core is owner-compatible:

1. every interval owner appears as an endpoint owner:

```text
o_I(I') subset o_E(E');
```

## Notes for the formalizer

(none yet)
