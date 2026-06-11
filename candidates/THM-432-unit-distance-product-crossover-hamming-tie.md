---
id: THM-432-unit-distance-product-crossover-hamming-tie
source: 01-canon/theorems/THM-432-unit-distance-product-crossover-hamming-tie.md
source_commit: c21c071
status: open
---

## Informal statement

---
id: THM-432
name: the Erdos-product 3N-crossover; the n=27 unit-distance tie is the Hamming graph H(3,3)
status: PROVED (product formula + criterion, classical) + VERIFIED exact (Q(sqrt3),
        explicit algebraic angles); uses cited proven u(a) values (AMP 2412.11914)
date: 2026-06-07
session: monad-explorer-2026-06-07-S711
depends_on:
  - THM-431   # u(21)=57; N* in [25,28]; the tie at n=27
  - THM-421   # common-neighbour 3N floor (N* in [17,32])
  - THM-412   # density quantization of the unit-distance layer
  - HYP-2170  # UD graph = cyclotomic Cayley graph; "3" = kissing/2 = Eisenstein rosette
external:
  - "Alexeev, Mixon, Parshall, arXiv:2412.11914 (2024) — exact u(n), n<=21."
  - "Erdos (1946) — the Minkowski-sum / Cartesian-product unit-distance construction."
verified_by: 04-computation/unit_distance_product_crossover_monad_s711.py
---

# THM-432: The Erdos product and the n=27 tie = the Hamming graph H(3,3)

Let `u(N)` = the Erdos unit-distance maximum (OEIS A186705) and `N*` = the smallest
`N` with `u(N) > 3N` (average degree `> kissing number κ = 6`). THM-431 proved
`N* ∈ [25,28]` and that the best known construction **ties** (`u(27) ≥ 81 = 3·27`),
leaving open *why* the deficit closes to a clean tie exactly at `n = 27 = 3³`. This
theorem answers that, and shows the first crossing is **not** a product.

## (A) The product formula and the 3N criterion [PROVED — classical]

For finite planar unit-distance graphs `G, H` placed at a **generic relative angle**,
the Minkowski sum `G ⊕ H = {g + h}` realises the graph **Cartesian product `G □ H`**
as a planar unit-distance graph (Erdos 1946): the `n(G)n(H)` sum-points are distinct,
and the unit distances are exactly the "axis-parallel" ones — `g~g'` in `G` (fixed
`h`) and `h~h'` in `H` (fixed `g`) — with no diagonal coincidences at generic angle.
Hence

```
   n(G □ H) = n(G)·n(H),     e(G □ H) = e(G)·n(H) + n(G)·e(H).
```

Writing the **edge density** `ρ(G) = e(G)/n(G) = ½·avgdeg(G)`, the product density is

## Notes for the formalizer

(none yet)
