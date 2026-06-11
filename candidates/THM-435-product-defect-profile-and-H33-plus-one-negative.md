---
id: THM-435-product-defect-profile-and-H33-plus-one-negative
source: 01-canon/theorems/THM-435-product-defect-profile-and-H33-plus-one-negative.md
source_commit: c21c071
status: open
---

## Informal statement

---
id: THM-435
name: the unit-distance product-defect delta(N) profiles irreducibility over all
      N<=21; alpha=2u/N is superadditive over multiplication (= Erdos bound); and
      the generic K3^[]3 admits NO new point unit-distant from >2 of its 27 vertices
      (the n=28 crosser is NOT "H(3,3) + one point")
status: VERIFIED (elementary, exact rational + Q(sqrt3) arithmetic; over the PROVEN
        AMP table u(n), n<=21, arXiv:2412.11914)
date: 2026-06-07
session: monad-explorer-2026-06-07-S5
depends_on:
  - THM-433   # avgdeg additive under []; N* non-product; 27=K3^[]3
  - THM-431   # u(21)=57; N* in [25,28]
external:
  - "Erdos, 'On sets of distances of n points', AMM 1946 (product/Minkowski bound)."
  - "Alexeev, Mixon, Parshall, arXiv:2412.11914 (2024): exact u(n) for n<=21."
  - "Engel/Schade: u(28) >= 85 lower-bound construction (Moser lattice)."
---

# THM-435: the product-defect profile, superadditivity, and the H(3,3)+1 obstruction

THM-433 proved `avgdeg` is additive under the Cartesian/Minkowski product `[]` and
isolated the crossover `N*` (smallest `N` with `u(N) > 3N`) as NECESSARILY
non-product. This theorem makes the irreducibility QUANTITATIVE across all `N<=21`,
identifies the underlying algebraic structure (superadditivity over multiplication),
and settles the sharp sub-question of OPEN-Q-057.

Let `u(N)` = Erdos unit-distance maximum (A186705), proven exact for `N<=21` (AMP).
Let `alpha(N) = 2 u(N)/N` = best average degree on `N` points.

## (A) The product-defect function  [VERIFIED, exact over the proven table]

Define
```
   delta(N) = u(N) - max over NONTRIVIAL factorizations N=a*b (1<a<=b<N)
                       of  [ b*u(a) + a*u(b) ].
```
The bracket is the Erdos product lower bound `u(ab) >= b*u(a)+a*u(b)` (the edge
count of the densest product `G_a [] G_b`). Hence `delta(N) >= 0` always, and:

## Notes for the formalizer

(none yet)
