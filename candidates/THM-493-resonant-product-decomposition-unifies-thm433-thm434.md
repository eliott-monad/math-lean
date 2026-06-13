---
id: THM-493-resonant-product-decomposition-unifies-thm433-thm434
source: 01-canon/theorems/THM-493-resonant-product-decomposition-unifies-thm433-thm434.md
source_commit: 37f53a7
status: open
---

## Informal statement

---
id: THM-493
name: The resonant-product decomposition — the Moser lattice IS the Minkowski
      product at a resonant angle; the non-product 3N-crossover is a product PLUS
      the THM-434 transverse bonus
status: PROVED (from THM-434) + VERIFIED exact-integer (every distance² over ℚ(√3,√11))
date: 2026-06-13
session: monad-explorer-2026-06-13
depends_on:
  - THM-434   # #units(L_t) = 12 + r_E(t): the THREE families of unit vectors of L_t
  - THM-433   # avgdeg additive under the GENERIC-angle product; N* is "non-product"
  - THM-431   # u(21)=57; N* ∈ [25,28]; u(28) ≥ 85 (Engel/Schade Moser lattice)
  - HYP-2460  # this theorem's hypothesis stub
external:
  - "Erdős, AMM 1946 (the Minkowski-sum / product unit-distance construction)."
  - "Engel et al., arXiv:2406.15317 (the Moser lattice; u(28) ≥ 85)."
---

# THM-493: the resonant-product decomposition

THM-433 studied the **generic-angle** Minkowski product (average degree is additive;
the 3N crossover `N*` is "non-product"). THM-434 counted the **unit vectors** of the
Moser-ladder lattice `L_t = ℤ[ζ₆] ⊕ ω_t·ℤ[ζ₆]`. This theorem shows they are **two
faces of one operation**: the Moser lattice IS the Minkowski product of the
triangular lattice with a copy of itself rotated by the **resonant (Moser) angle**,
and THM-434's *transverse* unit vectors are exactly the **extra edges** that the
resonant angle creates beyond the Cartesian product. The "non-product" crossover of
THM-433 is therefore a **product at the resonant angle**, and the resonance bonus is
what does the crossing.

## Setup

`ℤ[ζ₆]` = Eisenstein integers (the triangular lattice), `ζ₆ = (1+i√3)/2`.
Fix `t ≥ 1` with `d = 4t−1` **not** three times a square (so `ω_t ∉ ℚ(√−3)` and
`L_t` is a genuine rank-4 lattice), and let
```
   ω_t = ((2t−1) + i√d) / (2t),   |ω_t| = 1   (the t-th Moser angle, cos = (2t−1)/2t).
```
For finite `G, H ⊂ ℤ[ζ₆]`, the **Minkowski product at angle `ω_t`** is the planar
point set

## Notes for the formalizer

(none yet)
