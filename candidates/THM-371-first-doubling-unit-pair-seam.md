---
id: THM-371-first-doubling-unit-pair-seam
source: 01-canon/theorems/THM-371-first-doubling-unit-pair-seam.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-371
name: first-doubling-unit-pair-seam
status: PROVED
date: 2026-05-31
session: codex-2026-05-31-S453
depends_on: []
---

# THM-371: The first doubling seam for units and pairs

## Statement

Let `m` be odd.

1. The reduction map

```text
U(2m) -> U(m)
```

on residue units is a bijection.  Its inverse sends a unit `a mod m` to the
unique odd lift among `a` and `a+m`.

2. Consequently,

```text
phi(2m) = phi(m).
```

3. Later dyadic row steps are honest doublings:

```text
phi(2^(r+1)m) = 2 phi(2^r m),  r >= 1.
```

4. The maximum matching count has the complementary first-seam law

```text
floor(2m/2) = 2 floor(m/2) + 1.

## Notes for the formalizer

(none yet)
