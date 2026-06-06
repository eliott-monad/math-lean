/-
# Lonely Runner — signed speeds (directions): the σ gauge, and difference ↦ sum

Provenance: `eliottcassidy2000/math` — HYP-2280 (S631).  Allowing a runner to move in the opposite direction is the
sign flip `v ↦ −v`, the antipodal involution `σ`.  Since the clock distance is even (`dZ_neg`), **loneliness is
sign-invariant**: the forbidden arc of `−v` equals that of `v`, so the gap depends only on `|speeds|` — the sign is a
*gauge* freedom (the σ-quotient is the physical object).  "Every other runner counterclockwise" is the even/odd
2-coloring gauge.  The one place direction bites is the **relative** frame: from a runner's viewpoint others move at
the *difference* `vᵢ − vₖ`, but reversing a runner turns it into the *sum* `vᵢ + vₖ` — directions toggle
difference ↔ sum (the Goldbach/Lemoine additive structure, HYP-2275).
-/
import Mathlib
import Math.LonelyRunner.FlowShell

namespace Math.LonelyRunner

/-- **Direction reversal is a gauge.**  A runner of speed `−v` has the same forbidden arc as one of speed `v`
(`‖(−v)t‖ = ‖vt‖`): loneliness is invariant under reversing any runner's direction, so it depends only on the
*unsigned* speeds — the antipodal `σ` acts trivially on the gap. -/
theorem Forbid_neg_speed (δ v t : ℝ) : Forbid δ (-v) t ↔ Forbid δ v t := by
  unfold Forbid; rw [neg_mul, dZ_neg]

/-- **Direction toggles difference ↔ sum (the relative-frame trick).**  In a runner's relative frame the others move
at the *difference* `vᵢ − vₖ`; reversing runner `i` (`vᵢ ↦ −vᵢ`) gives the *sum*: `‖(−vᵢ − vₖ)t‖ = ‖(vᵢ + vₖ)t‖`.  So
choosing directions selects between the difference-lattice and the sum-lattice of relative speeds (the resonance
gauge; the additive `p+q` vs `p−q` structure). -/
theorem dZ_reverse_to_sum (vi vk t : ℝ) : dZ ((-vi - vk) * t) = dZ ((vi + vk) * t) := by
  rw [show (-vi - vk) = -(vi + vk) by ring, neg_mul, dZ_neg]

end Math.LonelyRunner
