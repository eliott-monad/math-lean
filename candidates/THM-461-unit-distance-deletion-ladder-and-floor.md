---
id: THM-461-unit-distance-deletion-ladder-and-floor
source: 01-canon/theorems/THM-461-unit-distance-deletion-ladder-and-floor.md
source_commit: c21c071
status: open
---

## Informal statement

---
id: THM-461
name: the-unit-distance-upper-bound-ladder-is-elementary-and-its-floor-is-exhausted
status: PROVED (elementary, complete) + VERIFIED exact-integer
date: 2026-06-10
session: monad-explorer-2026-06-10
depends_on:
  - THM-431   # u(21)=57 (AMP); N* in [25,28]; HYP-2298
  - THM-432   # avgdeg additive under product; n=27 tie = Hamming cube H(3,3)
  - THM-437   # cube angle-rigidity at 81
  - HYP-2298  # u(21)=57 proven, N* in [25,28]
sharpens:
  - OPEN-Q-057  # exact value of N*; reduces the floor side to small exact-value targets
---

# THM-461: the unit-distance upper-bound ladder above n=22 is elementary, and the 3N-floor it can reach is exhausted at N*≥25

## Context

`u(n)` = max number of **unit distances** among `n` points in the plane (Erdős).
`N* = ` smallest `n` with `u(n) > 3n` (average degree exceeds the planar kissing
number `κ=6`). Canon: `N* ∈ {25,26,27,28}` (THM-431), the sharp target being
`u(27)`: is it `81 = 3·27` (tie ⟹ `N*=28`) or `> 81`? The proven anchors are
`u(n)` exact for `n≤21` (Alexeev–Mixon–Parshall, arXiv:2412.11914; `u(21)=57`) and
the one nontrivial bound `u(22) ≤ 61`; the Moser-lattice constructions give the
lower bounds `L(n) = 60,64,68,72,76,81,85` for `n = 22…28` (Engel/Schade, repo
THM-431-C). This theorem dissects the **upper-bound (floor) side** of `N*`.

## Statement

**(A) The deletion ladder [PROVED, elementary].** For every finite point set on
`n` points,
```
        Σ_v u(G−v) = (n−2)·u(G),     hence     u(n) ≤ ⌊ n · u_max(n−1) / (n−2) ⌋.
```
**Consequence:** the best-known upper bounds for `u(23..27)` — `66, 72, 78, 84, 90`
— are **exactly** this averaging ladder iterated from the single hard bound
`u(22) ≤ 61`. Only `u(21)=57` (exact) and `u(22)≤61` require nontrivial machinery;
everything above `n=22` is one elementary averaging step per `n`.

## Notes for the formalizer

(none yet)
