/-
# Lonely Runner — twisted involutions on flow shells (the n=14 criss-cross)

Provenance: `eliottcassidy2000/math` — HYP-2205 (S619). The covering picture (HYP-2195) on the space-time torus:
runner `v` is the geodesic flow `x = v·t`, the forbidden region is the origin-strip `‖x‖ < δ`, and a lonely time is
a vertical line dodging every strip-crossing. Antipodal speed pairs `{v, −v}` carve a **criss-cross lattice** in
space-time, and the **twisted involution** `σ : t ↦ −t` (equivalently `v ↦ −v`) is the reflection symmetry of the
whole flow.

For the LRC(14) residual (a multiple-of-14 "apex" speed present, `δ = 1/14`) the computation shows: every unit clock
`j/14` is a *forced cross* — the tight runners are exactly one σ-pair `{v, −v}`, one needing `ε > 0`, one `ε < 0` —
so the apex (which sits at the origin at every unit clock) forces a perturbation that strikes one arm, and no
unit-clock witness exists. The lonely times instead live in the laminar shells off the grid, and **the lonely set is
σ-symmetric with both fixed points blocked**, so σ acts *freely* (a free-orbit cascade). This file formalizes that
core: the clock distance is even (the twisted involution), and both reflection fixed points `t = 0, 1/2` are
forbidden, plus the criss-cross congruence twist.
-/
import Mathlib
import Math.LonelyRunner.CoveringDepth

namespace Math.LonelyRunner

/-! ## The twisted involution: the clock distance is even -/

/-- **The twisted involution `σ : x ↦ −x`.** The clock distance is even: `dZ (−x) = dZ x`. This is the reflection
symmetry of the entire flow (`‖v(−t)‖ = ‖vt‖`), the involution whose flow-shell action organizes the lonely set. -/
theorem dZ_neg (x : ℝ) : dZ (-x) = dZ x := by
  refine le_antisymm ?_ ?_
  · have h := dZ_le_dist_int (-x) (-round x)
    have e : |(-x) - ((-round x : ℤ) : ℝ)| = dZ x := by
      push_cast; rw [dZ, ← abs_neg]; ring_nf
    rwa [e] at h
  · have h := dZ_le_dist_int x (-round (-x))
    have e : |x - ((-round (-x) : ℤ) : ℝ)| = dZ (-x) := by
      push_cast; rw [dZ, ← abs_neg]; ring_nf
    rwa [e] at h

/-- Integer translation invariance: `dZ (n + x) = dZ x`. -/
theorem dZ_intCast_add (n : ℤ) (x : ℝ) : dZ ((n : ℝ) + x) = dZ x := by
  refine le_antisymm ?_ ?_
  · have h := dZ_le_dist_int ((n : ℝ) + x) (n + round x)
    have e : |((n : ℝ) + x) - ((n + round x : ℤ) : ℝ)| = dZ x := by
      push_cast; rw [dZ]; ring_nf
    rwa [e] at h
  · have h := dZ_le_dist_int x (round ((n : ℝ) + x) - n)
    have e : |x - ((round ((n : ℝ) + x) - n : ℤ) : ℝ)| = dZ ((n : ℝ) + x) := by
      push_cast; rw [dZ]; ring_nf
    rwa [e] at h

/-- The clock distance vanishes exactly on the integers (the origin of the circle). -/
theorem dZ_eq_zero_iff (x : ℝ) : dZ x = 0 ↔ ∃ n : ℤ, x = n := by
  rw [dZ, abs_eq_zero, sub_eq_zero]
  exact ⟨fun h => ⟨round x, h⟩, fun ⟨n, hn⟩ => by rw [hn, round_intCast]⟩

/-- `dZ` of an integer is `0`. -/
theorem dZ_intCast (n : ℤ) : dZ (n : ℝ) = 0 := (dZ_eq_zero_iff _).2 ⟨n, rfl⟩

/-! ## The forbidden predicate and the free-orbit obstruction at the reflection fixed points -/

/-- Runner `v` is **forbidden** at clock `t` when its flow is within `δ` of the origin: `‖v·t‖ < δ`. -/
def Forbid (δ v t : ℝ) : Prop := dZ (v * t) < δ

/-- **The twisted involution acts on the flow.** `Forbid δ v (−t) ↔ Forbid δ v t`: the forbidden structure (hence
the depth and the lonely set) is symmetric under `σ : t ↦ −t`. -/
theorem Forbid_neg (δ v t : ℝ) : Forbid δ v (-t) ↔ Forbid δ v t := by
  unfold Forbid
  rw [mul_neg, dZ_neg]

/-- **Fixed point `t = 0` is blocked.** At the origin of the clock every runner sits on the origin
(`dZ (v·0) = 0 < δ`), so `t = 0` is never lonely. -/
theorem Forbid_zero (δ v : ℝ) (hδ : 0 < δ) : Forbid δ v 0 := by
  unfold Forbid; rw [mul_zero]; simpa [dZ] using hδ

/-- **Fixed point `t = 1/2` is blocked for even speeds.** An even-speed runner `v = 2k` is on the origin at the
half-clock (`dZ (2k · (1/2)) = dZ k = 0 < δ`), so `t = 1/2` is never lonely when an even speed is present. Together
with `Forbid_zero` this is why the reflection involution `σ` has **no lonely fixed point**: it acts freely on the
lonely set (a free-orbit cascade — global rigidity, not a pinned apex). -/
theorem Forbid_half_even (δ : ℝ) (k : ℤ) (hδ : 0 < δ) : Forbid δ (2 * k : ℝ) (1 / 2) := by
  unfold Forbid
  have : (2 * (k : ℝ)) * (1 / 2) = (k : ℝ) := by ring
  rw [this, dZ_intCast k]; exact_mod_cast hδ

/-! ## The criss-cross twist: antipodal speeds are tight on opposite sides -/

/-- **The criss-cross congruence twist.** If `v·j ≡ 1 (mod N)` (runner `v` tight on the `+` side at clock `j/N`),
then the antipodal runner `N − v` satisfies `(N − v)·j ≡ −1 (mod N)` — tight on the `−` side. The twisted
involution `σ` swaps the two arms of the cross; the apex (forced off `ε = 0`) must strike one of them, which is why
the unit-clock witness fails on the LRC(14) residual. -/
theorem antipodal_cross {N v j : ℤ} (h : v * j ≡ 1 [ZMOD N]) :
    (N - v) * j ≡ -1 [ZMOD N] := by
  have hN : N * j ≡ 0 [ZMOD N] := (Int.modEq_zero_iff_dvd).mpr ⟨j, rfl⟩
  have e : (N - v) * j = N * j - v * j := by ring
  rw [e]
  simpa using Int.ModEq.sub hN h

end Math.LonelyRunner
