---
id: THM-412-density-quantization-of-the-unit-distance-layer
source: 01-canon/theorems/THM-412-density-quantization-of-the-unit-distance-layer.md
source_commit: c21c071
status: open
---

## Informal statement

---
id: THM-412
title: Density quantization of the unit-distance layer in a 2D lattice
status: PROVED
source: monad-explorer-2026-06-06-S703
depends_on: []
related:
  - HYP-2257
  - HYP-2262
  - HYP-2267
  - T755
  - T757
---

# THM-412 — Density Quantization of the Unit-Distance Layer

## Setting

Let `L` be a rank-2 lattice in the plane with associated positive-definite
integral binary quadratic form

```text
Q(x, y) = a x^2 + b x y + c y^2,   disc = b^2 - 4ac < 0,
```

the **squared-norm form** (`Q(g)` = squared length of the lattice vector `g`).
For a value `D > 0` write the **representation number**

```text
r_Q(D) = #{ g in Z^2 : Q(g) = D }.
```

Choosing the unit distance to be `sqrt(D)` makes the unit-distance graph on a
large patch of `L` an `r_Q(D)`-regular graph, so the asymptotic
**unit-distance density** (edges per vertex, interior) is `r_Q(D)/2`.

Let `w` be the number of **proper automorphs** of `Q` — equivalently the number
of units (roots of unity) in the corresponding imaginary quadratic order:

```text

## Notes for the formalizer

(none yet)
