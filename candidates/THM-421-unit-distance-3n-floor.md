---
id: THM-421-unit-distance-3n-floor
source: 01-canon/theorems/THM-421-unit-distance-3n-floor.md
source_commit: c21c071
status: open
---

## Informal statement

---
id: THM-421
name: unit-distance-3n-common-neighbour-floor
status: PROVED (lower bound 17) + VERIFIED construction (upper bound 32)
date: 2026-06-06
session: monad-explorer-2026-06-06-S709
depends_on:
  - HYP-2262   # kissing cap is not the unit-distance cap (S702): two norm-1 layers
  - HYP-2267   # triangular sqrt(7) DISK patch beats 3N at N=43 (S703), now sharpened to 32
  - THM-412    # density quantization (the quantized 2D unit-distance density ladder)
  - HYP-2170   # UD graph = Cay(Z[zeta6],U6); the "3" = kissing/2 = Eisenstein rosette
---

# THM-421: The common-neighbour floor for beating 3N unit distances

## Setup

For a finite planar point set `P` (|P| = N), let `U(P)` be the number of
**unit distances**: pairs `{x,y} ⊆ P` with `‖x−y‖ = 1`. The unit-distance graph
has these pairs as edges. S702/S703 established that, unlike the **penny graph**
(min-distance ≥ 1, capped by Harborth `⌊3n−√(12n−3)⌋ < 3n` via the kissing bound
κ ≤ 6), a *general* unit-distance graph **can exceed 3N** by using a non-minimal
radius (the additive norm-R layer, HYP-2262): the triangular (Eisenstein) lattice
at unit² = 7 has every interior point of degree 12 (density → 6 > 3).

Open handoff **S702(b):** *"is triangular N = 43 provably the 2D-optimal finite
construction [beating 3N]?"* HYP-2267 gave only a constructive **upper** bound (43)
**over lattice disk patches**. This theorem supplies the missing rigorous **lower**
bound over **all** finite planar sets, and sharpens the upper bound to 39.

## Statement

**(A) Lower bound [PROVED].** Every finite planar point set with `U(P) > 3N`
satisfies `N ≥ 17`. More generally, in *any* graph in which every two vertices have
**at most 2 common neighbours**, average degree `> D` forces

```
        N  ≥  C(D,2) + 2 .
```

## Notes for the formalizer

(none yet)
