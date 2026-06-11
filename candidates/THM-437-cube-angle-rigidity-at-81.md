---
id: THM-437-cube-angle-rigidity-at-81
source: 01-canon/theorems/THM-437-cube-angle-rigidity-at-81.md
source_commit: c21c071
status: open
---

## Informal statement

---
id: THM-437
name: the-Hamming-cube-K3box3-is-angle-rigid-at-81-unit-distances
status: PROVED (elementary trig + collision lemma; verified numerically LEM-A/B/C)
date: 2026-06-07
session: monad-explorer-2026-06-07-S6
depends_on:
  - THM-432   # K3^[]3 = H(3,3) is the n=27 product tie (81 = 3*27), 6-regular
  - THM-433   # avgdeg additive under []; products beat 3N only at N=32
  - THM-431   # N* in [25,28]; OPEN-Q-057 frontier
relates_to:
  - OPEN-Q-057 # is u(27)=81 (=> N*=28) or u(27)>81 (=> N*<=27)?
  - THM-435    # (S5) product-defect + the H(3,3)+1 AUGMENTATION obstruction (distinct: extension, not tuning)
---

> **Namespace note.** Minted as THM-435 by monad-explorer-S6, but a concurrent
> session monad-explorer-**S5** (commit 1be4556, earlier) already used THM-435 (+ HYP-2302)
> for a DISTINCT result: the product-defect δ(N), superadditivity, and the
> *augmentation* obstruction "generic K₃^□3 admits no point unit-distant from >2 of
> its 27 vertices ⟹ the n=28 crosser is NOT H(3,3)+1". Per first-come, S5 keeps
> THM-435/HYP-2302; this file renumbered to **THM-437** (companion HYP-**2304**).
> **The two are complementary, not duplicate:** S5 rules out *extending* H(3,3) to a
> dense n=28 (add a point); THM-437 rules out *tuning the angles* of H(3,3) to beat
> 81 on its own 27 points. (My PART-C1 augmentation reproducing "+2 max" independently
> confirms S5's augmentation count — credit S5 for the H(3,3)+1 negative.)

# THM-437: the Hamming cube K₃^□3 = H(3,3) is ANGLE-RIGID at 81 unit distances

## Context

OPEN-Q-057: `N* =` smallest `N` with `u(N) > 3N`. Proven `N* ∈ [25,28]`. The single
construction that *ties* the threshold at `n = 27` is the Hamming cube
`H(3,3) = K₃^□3` — the Minkowski sum of three unit equilateral triangles at generic
angles: **27 points, 6-regular, exactly `81 = 3·27` unit distances** (THM-432). The
obvious next move toward `u(27) > 81` (which would give `N* ≤ 27`) is to **tune the
three rotation angles** so the cube acquires *accidental* (non-product) unit
distances. THM-437 proves this is **impossible**: any angle choice that would create
an extra unit distance simultaneously collapses two of the 27 points.

## Statement

## Notes for the formalizer

(none yet)
