---
id: THM-494-transverse-resonance-is-rational-cosine-the-bisector-is-off-ladder
source: 01-canon/theorems/THM-494-transverse-resonance-is-rational-cosine-the-bisector-is-off-ladder.md
source_commit: 37f53a7
status: open
---

## Informal statement

---
id: THM-494
name: The transverse-resonance angles are exactly the rational-cosine rotations;
      the perfect 30° bisector ℤ[ζ₁₂] is OFF the Moser ladder and transverse-free
status: PROVED (from THM-434 + Kronecker + Niven) + VERIFIED exact-integer
        (densest-patch search, n=21..30)
date: 2026-06-13
session: monad-explorer-2026-06-13
depends_on:
  - THM-434   # #units(L_t)=12+r_E(t); transverse vectors α(1−ω_t), |1−ω_t|²=1/t
  - THM-493   # resonant-product decomposition; Δ_t bonus = the crossing
  - HYP-2461  # tie-vs-crossing dichotomy; the t=4 control; the ℤ[ζ₁₂] handoff question
resolves:
  - "HYP-2461 next-explorer question: does the exact-30° lattice ℤ[ζ₁₂] cross 3N at n=28?"
external:
  - "Niven, *Irrational Numbers* (Carus Monograph 11, 1956), Cor. 3.12: if θ/π∈ℚ and
     cosθ∈ℚ then cosθ∈{0,±½,±1}."
  - "Kronecker 1857: an algebraic integer all of whose conjugates have absolute value
     1 is a root of unity."
---

# THM-494: transverse resonance ⟺ rational cosine; the bisector is off-ladder

## Context

THM-434 counts the unit vectors of the Moser-ladder bridge lattice
`L_t = ℤ[ζ₆] ⊕ ω_t·ℤ[ζ₆]` (two triangular lattices glued at the Moser angle
`ω_t`, `cos = (2t−1)/2t`): `12 + r_E(t)`, the extra `r_E(t)` being the **transverse**
unit vectors `α(1−ω_t)` with Eisenstein norm `N(α)=t`. THM-493 shows those transverse
vectors are exactly the **resonance bonus** `Δ_t` that carries `u(28) ≥ 85 > 84`
across `3N`. HYP-2461's free-patch search + the `t=4` control localized the crossing
to `t=3` (`√−11`) and asked the natural sharpening:

> Does the **exact-30° bisector** lattice `ℤ[ζ₁₂]` — the geometrically *perfect*
> interleaving angle, which the `L_t` family brackets (`t=3`→33.6°, `t=4`→29.0°)
> but can never hit — cross `3N` at `n=28`? If even it fails, `√−11` is
> *arithmetically* singular, not merely off the geometric optimum.

This theorem answers it: **No.** And it explains why with a clean characterization
of *which* gluing angles can carry transverse unit vectors at all.

## Notes for the formalizer

(none yet)
