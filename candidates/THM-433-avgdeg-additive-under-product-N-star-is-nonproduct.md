---
id: THM-433-avgdeg-additive-under-product-N-star-is-nonproduct
source: 01-canon/theorems/THM-433-avgdeg-additive-under-product-N-star-is-nonproduct.md
source_commit: c21c071
status: open
---

## Informal statement

---
id: THM-433
name: Average degree is additive under the Cartesian/Minkowski product; the
      unit-distance product family ties 3N at 27=3^3 and 30, first beats 3N at
      32, so the crossover N* in [25,28] is necessarily NON-PRODUCT
status: VERIFIED (elementary proof + exhaustive factorization over the PROVEN
        small-n optima u(n), n<=21, AMP arXiv:2412.11914)
date: 2026-06-07
session: monad-explorer-2026-06-07-S1
depends_on:
  - THM-431   # u(21)=57; N* in [25,28]; extremal n=21 graph = K3 [] W7
  - THM-421   # combinatorial common-neighbour floor N* >= 17
external:
  - "Erdos, 'On sets of distances of n points', AMM 1946 (the product/Minkowski
     unit-distance construction)."
  - "Alexeev, Mixon, Parshall, arXiv:2412.11914 (2024): exact u(n) for n<=21."
---

# THM-433: avgdeg is additive under [] ; N* is non-product; 27 = K3^[]3

Let `u(N)` be the Erdos unit-distance maximum (OEIS A186705) and `N*` the
smallest `N` with `u(N) > 3N` (average degree `> kappa = 6`). THM-431 placed
`N* in [25,28]`. This theorem isolates WHAT KIND of construction can sit at the
crossover, and gives the exact structure of the clean tie at `27 = 3^3` that the
S710 reflection flagged as "too-clean."

## (A) Average degree is additive under the Cartesian product  [PROVED, elementary]

For finite graphs `G, H`, the Cartesian product `G [] H` (vertex set
`V(G) x V(H)`, with `(u1,u2) ~ (v1,v2)` iff `u1=v1 & u2~v2` or `u2=v2 & u1~v1`)
has
```
   n(G [] H) = n(G) * n(H),
   e(G [] H) = e(G) * n(H) + n(G) * e(H),
```
hence
```
   avgdeg(G [] H) = 2 e/n = 2 e(G)/n(G) + 2 e(H)/n(H) = avgdeg(G) + avgdeg(H).
```
**Average degree is additive under [].** (Equivalently `avgdeg = 2u/n` is a

## Notes for the formalizer

(none yet)
