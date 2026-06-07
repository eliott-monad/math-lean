/-
# Friendliness = never having been lonely yet: a first-passage property, with a 1/n floor

Provenance: `eliottcassidy2000/math` — HYP-2325 (S647).  Redefining **friendliness** as the user did:
not an instantaneous count, but the property of having **never been lonely yet** up to time `t`.  A
runner is *lonely* at `t` if it is far (`‖vᵢt‖ ≥ δ`) from every other runner; it is **friendly** on
`[0, τ)` where `τ` is the **first lonely time** = `inf{t > 0 : lonely t}` = the first **gap** in the
danger-arc covering `⋃ᵢ {t : ‖vᵢt‖ < δ}` (the Vitali/covering view, HYP-2200).  The "yet" makes
friendliness a *one-way* survival property: once lonely, always *has-been-lonely*.

Two facts:
* **The "yet" is monotone.**  "Has been lonely by `t`" only grows; friendliness (its negation) is a
  first-passage / stopping property.
* **Friendliness lasts at least `1/n`.**  With a runner of speed `1` present, for every `t ∈ [0, 1/n)`
  the clock distance `dZ(1·t) = dZ t ≤ t < 1/n`, so that runner is inside your gap and you are not
  lonely.  Hence the first lonely time `τ ≥ 1/n`.
-/
import Mathlib
import Math.LonelyRunner.CoveringDepth

namespace Math.LonelyRunner

/-- **The "yet" is monotone.**  `everLonely t := ∃ s ∈ [0,t], lonely s` is monotone in `t` — once you
have been lonely you have always *been* lonely.  So friendliness (never lonely yet) is its antitone
negation: a one-way first-passage property, not an instantaneous one. -/
theorem everLonely_monotone (lonely : ℝ → Prop) :
    Monotone (fun t => ∃ s, 0 ≤ s ∧ s ≤ t ∧ lonely s) := by
  intro a b hab
  exact fun ⟨s, hs0, hsa, hl⟩ => ⟨s, hs0, le_trans hsa hab, hl⟩

/-- **Friendliness lasts at least `1/n`** (the unit-speed floor on the first lonely time).  With a
runner of speed `1` present, for every time `t ∈ [0, 1/n)` the clock distance `dZ(1·t) = dZ t ≤ t <
1/n`, so that runner is inside your gap — you are *not* lonely.  Hence you are friendly throughout
`[0, 1/n)`, i.e. the first lonely time satisfies `τ ≥ 1/n`. -/
theorem friendly_until_inv_n (n : ℕ) (t : ℝ) (h0 : 0 ≤ t) (ht : t < 1 / n) :
    dZ (1 * t) < 1 / n := by
  rw [one_mul]
  have hle : dZ t ≤ t := by
    have h := dZ_le_dist_int t 0
    simpa [Int.cast_zero, sub_zero, abs_of_nonneg h0] using h
  linarith

end Math.LonelyRunner
