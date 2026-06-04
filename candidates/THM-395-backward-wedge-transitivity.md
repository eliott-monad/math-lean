---
id: THM-395-backward-wedge-transitivity
source: 01-canon/theorems/THM-395-backward-wedge-transitivity.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-395
name: backward-wedge-transitivity
status: PROVED
date: 2026-06-01
session: codex-2026-06-01-S550
depends_on:
  - HYP-2040
---

# THM-395: Transitivity is exactly zero backward-wedge debt

## Statement

Let `T` be a finite tournament.  For every oriented edge `X -> Y`, define the
backward-wedge set

```text
W_T(X,Y) = { Z distinct from X,Y : Z -> X and Y -> Z }.
```

Then the following are equivalent:

1. `T` is transitive: whenever `X -> Y` and `Y -> Z`, then `X -> Z`.
2. Every oriented edge has empty backward wedge:

```text
W_T(X,Y) = empty for every edge X -> Y.
```

Moreover, if `c_3(T)` is the number of directed 3-cycles in `T`, then

```text
sum_{X -> Y} |W_T(X,Y)| = 3 * c_3(T).
```

Equivalently, each accepted transitive edge `X -> Y` carries the hidden local
clearance

```text

## Notes for the formalizer

(none yet)
