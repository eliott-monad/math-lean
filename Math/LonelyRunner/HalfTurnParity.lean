/-
# The half-turn is a mod-2 detector: why the n=14 leak lives in the 2-fiber

Provenance: `eliottcassidy2000/math` — HYP-2317 (S639).  In the n=14 LRC covering model, the only
non-scalar binary blocker is the **half-turn** (residue `7 = 14/2`) placed on a single coordinate, and
its uncovered "leak" lives **entirely in the odd (mod-2) fiber** of the CRT splitting
`ℤ/14 ≅ ℤ/2 × ℤ/7`, spread uniformly across all seven mod-7 classes (computation S639).  The reason is
purely algebraic and is captured here: the half-turn element `7 ∈ ℤ/14` is **2-torsion**, so
multiplication by it **factors through `ℤ/2`** — its image is `{0, 7}` and its kernel is the even
sublattice `2·(ℤ/14)`.  A half-turn blocker can therefore only resolve the **parity** of the shift; it
is structurally blind to the mod-7 coordinate (the "7-runner base").  So the leak is organized by the
divisor **2, not 7** — the project's 2-adic seam / the `σ : v ↦ -v` involution (HYP-2185), which on
`ℤ/14` is exactly multiplication by the half-turn... and the cure, if any, must come from genuinely
mod-7 (non-2-torsion) residues, not from more half-turns.
-/
import Mathlib

namespace Math.LonelyRunner

/-- **The half-turn is 2-torsion.**  `7 = 14/2` has additive order 2 in `ℤ/14`: `7 + 7 = 0`.  This is
the `σ`-involution (`v ↦ -v` half-turn) at the additive level. -/
theorem half_turn_two_torsion : (7 : ZMod 14) + 7 = 0 := by decide

/-- **Multiplication by the half-turn factors through `ℤ/2`.**  For every shift `s`, `7 * s ∈ {0, 7}`:
the half-turn map has image the order-2 subgroup `{0, 7}` — it only ever outputs the two values telling
you the *parity* of `s`. -/
theorem half_turn_image (s : ZMod 14) : 7 * s = 0 ∨ 7 * s = 7 := by revert s; decide

/-- **The half-turn is a mod-2 detector.**  `7 * s = 0` iff `s` is even (lies in the sublattice
`2·(ℤ/14)`).  So a half-turn blocker sees only `s mod 2`; it is blind to the mod-7 fiber — exactly why
the n=14 covering leak is confined to the odd (mod-2) coset and hits every mod-7 class. -/
theorem half_turn_detects_parity (s : ZMod 14) :
    7 * s = 0 ↔ ∃ t : ZMod 14, s = 2 * t := by revert s; decide

/-- The odd-fiber leak is genuine: on an odd shift the half-turn fires (`7 * s = 7 ≠ 0`), so it can
never *cover* the even-vs-odd distinction by parity alone — two complementary half-turns are needed to
tile both cosets (the S639 "spurious full cover"), confirming the quotient model is too lossy. -/
theorem half_turn_odd_fires (t : ZMod 14) : 7 * (2 * t + 1) = 7 := by revert t; decide

end Math.LonelyRunner
