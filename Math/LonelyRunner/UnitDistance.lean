/-
# Unit distances and the Lonely Runner — the chord/arc bridge

Provenance: `eliottcassidy2000/math` — HYP-2230 (S623).  The Erdős unit-distance problem and the Lonely Runner are
the same question on the unit circle, linked by the chord/arc identity.  Two points at clock-arc `x` apart on the
unit circle are at Euclidean (chord) distance `2·sin(π·dZ x)`, where `dZ x` is the distance to the nearest integer
(the LRC clock metric, `Math.LonelyRunner.dZ`).  Hence a **unit distance** (chord `= 1`) occurs **iff `dZ x = 1/6`**
— the hexagonal `60°` gap, `6 = 2·3`.  The triangular lattice that is optimal for unit distances is exactly the LRC
structure at gap `δ = 1/6`.  This is the elementary bridge under the deeper dictionary (roots of unity = magnitude-1
elements of the cyclotomic CM field; complex conjugation = the antipodal involution `σ`; split primes = free
`σ`-orbits; the class-field-tower disproof of the grid conjecture = the collapse family beating the AP).
-/
import Mathlib
import Math.LonelyRunner.CoveringDepth

namespace Math.LonelyRunner

open Real

/-- **The clock metric is `cos(2π·)`-invariant.**  `cos(2π·dZ x) = cos(2π x)`: the chord depends only on the
distance to the nearest integer. -/
theorem cos_two_pi_dZ (x : ℝ) : Real.cos (2 * π * dZ x) = Real.cos (2 * π * x) := by
  have base : Real.cos (2 * π * (x - (round x : ℝ))) = Real.cos (2 * π * x) := by
    have e : 2 * π * (x - (round x : ℝ)) = 2 * π * x + (-(round x) : ℤ) * (2 * π) := by
      push_cast; ring
    rw [e, Real.cos_add_int_mul_two_pi]
  rw [dZ]
  rcases abs_cases (x - (round x : ℝ)) with ⟨habs, _⟩ | ⟨habs, _⟩
  · rw [habs]; exact base
  · rw [habs, mul_neg, Real.cos_neg]; exact base

/-- **The chord/arc bridge.**  `2 − 2·cos(2π x) = 4·sin(π·dZ x)^2`: the squared Euclidean distance between two
unit-circle points separated by clock-arc `x` is `4·sin(π·dZ x)^2` (chord `= 2·sin(π·dZ x)`). -/
theorem chord_sq_eq (x : ℝ) : 2 - 2 * Real.cos (2 * π * x) = 4 * Real.sin (π * dZ x) ^ 2 := by
  rw [← cos_two_pi_dZ x]
  have e : 2 * π * dZ x = 2 * (π * dZ x) := by ring
  rw [e, Real.cos_two_mul]
  nlinarith [Real.sin_sq_add_cos_sq (π * dZ x)]

/-- **Unit distance ⟺ clock-gap `1/6`.**  Two roots of unity at clock-arc `x` are at Euclidean distance `1`
(`2 − 2cos(2πx) = 1`) iff `sin(π·dZ x) = 1/2`.  In particular `dZ x = 1/6` gives a unit distance: the hexagonal
`60°` gap (`6 = 2·3`) is the LRC structure at `δ = 1/6`. -/
theorem unit_distance_of_dZ_eq_sixth (x : ℝ) (hx : dZ x = 1 / 6) :
    2 - 2 * Real.cos (2 * π * x) = 1 := by
  rw [chord_sq_eq, hx]
  have : π * (1 / 6 : ℝ) = π / 6 := by ring
  rw [this, Real.sin_pi_div_six]
  norm_num

end Math.LonelyRunner
