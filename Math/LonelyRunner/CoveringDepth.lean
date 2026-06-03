/-
# Lonely Runner — the covering-depth master object and the additive-chain resonance link

Provenance: `eliottcassidy2000/math` — HYP-2190 (S617).  A loneliness certificate is a clock time
`t` avoiding every runner's *forbidden arc* `{t : ‖vᵢ t‖ < δ}` (`‖·‖` = distance to the nearest
integer, the clock metric), so LRC at gap `δ` is a **circular-arc covering** problem.  The master
object is the covering-depth distribution `p_k = meas{t : depth(t) = k}`, `depth(t) = #{i : ‖vᵢt‖ <
δ}`; lonely times are `{depth = 0}`, of measure `p₀`, and everything about LRC at gap `δ` is a
functional of this one distribution.

Two facts are formalized.

* **First moment is vacuous.**  Each runner's forbidden arc has measure `2δ`, so `∫ depth = 2nδ`
  and the naive union bound `p₀ ≥ 1 − 2nδ` is `≤ 0` for `δ = 1/(n+1)`, `n ≥ 1`.  LRC's content is
  therefore NOT in the first moment but in the *correlations* among the arcs.

* **The additive-chain resonance link.**  The clock distance `dZ x = |x − round x|` is *subadditive*:
  `dZ (x + y) ≤ dZ x + dZ y`.  Hence a sum-relation `v_c = v_a + v_b` forces
  `‖v_c t‖ ≤ ‖v_a t‖ + ‖v_b t‖` — the three forbidden arcs are *dependent*, the mechanism behind the
  collapse family (`p₀ = 0`: the AP and the sporadic additive chains `(1,3,4,7)`, `(1,3,4,5,9)`,
  each top a sum of two below).  An `a+b=c` relation is exactly a small `Σ mᵢ vᵢ = 0` resonance.
-/
import Mathlib

namespace Math.LonelyRunner

open scoped BigOperators

/-! ## The clock distance and its subadditivity (the resonance link) -/

/-- The **clock distance** of a real `x`: its distance to the nearest integer, `‖x‖` on the circle
`ℝ/ℤ`. -/
noncomputable def dZ (x : ℝ) : ℝ := |x - round x|

/-- `dZ` is nonnegative. -/
theorem dZ_nonneg (x : ℝ) : 0 ≤ dZ x := abs_nonneg _

/-- `round x` is the closest integer: `dZ x ≤ |x − n|` for every integer `n`. -/
theorem dZ_le_dist_int (x : ℝ) (n : ℤ) : dZ x ≤ |x - n| := by
  rcases eq_or_ne (round x) n with h | h
  · rw [dZ, h]
  · have hint : (1 : ℤ) ≤ |round x - n| := Int.one_le_abs (sub_ne_zero.mpr h)
    have h1 : (1 : ℝ) ≤ |(round x : ℝ) - (n : ℝ)| := by exact_mod_cast hint
    have hr : dZ x ≤ 1 / 2 := abs_sub_round x
    -- |round x - n| ≤ |round x - x| + |x - n| = dZ x + |x - n|
    have htri : |(round x : ℝ) - n| ≤ dZ x + |x - n| := by
      have := abs_sub_le (round x : ℝ) x (n : ℝ)
      rwa [show |(round x : ℝ) - x| = dZ x by rw [dZ, abs_sub_comm]] at this
    linarith

/-- **Clock-distance subadditivity.**  `dZ (x + y) ≤ dZ x + dZ y`: the resonance link.  (Proof: the
nearest integer to `x+y` is at least as close as `round x + round y`.) -/
theorem dZ_add_le (x y : ℝ) : dZ (x + y) ≤ dZ x + dZ y := by
  calc dZ (x + y) ≤ |(x + y) - ((round x : ℝ) + (round y : ℝ))| := by
        have := dZ_le_dist_int (x + y) (round x + round y)
        rwa [Int.cast_add] at this
    _ = |(x - round x) + (y - round y)| := by ring_nf
    _ ≤ |x - round x| + |y - round y| := by
        simpa [Real.norm_eq_abs] using norm_add_le (x - round x) (y - round y)
    _ = dZ x + dZ y := rfl

/-- **Additive-chain resonance link.**  If `v_c = v_a + v_b`, then for every clock time `t` the
forbidden-arc functions satisfy `‖v_c t‖ ≤ ‖v_a t‖ + ‖v_b t‖`: a sum-relation makes the three
forbidden arcs dependent.  When `a` and `b` are both at a tight boundary (`‖v_a t‖, ‖v_b t‖ ≤ δ`),
the relation pins `‖v_c t‖ ≤ 2δ` — the collapse mechanism of the additive-chain family. -/
theorem dZ_chain_le {va vb vc : ℝ} (t : ℝ) (h : vc = va + vb) :
    dZ (vc * t) ≤ dZ (va * t) + dZ (vb * t) := by
  rw [h, add_mul]; exact dZ_add_le _ _

/-! ## The covering-depth first moment is vacuous

Each runner's forbidden arc `{t ∈ [0,1) : ‖vᵢ t‖ < δ}` has Lebesgue measure `2δ`, so the depth
integrates to `2nδ` and the union bound on the lonely measure is `p₀ ≥ 1 − 2nδ`.  At the LRC gap
`δ = 1/(n+1)` this lower bound is nonpositive for every `n ≥ 1`: the first moment says nothing, and
the loneliness must come from arc correlations (the collapse family / resonance). -/

/-- **First-moment vacuity.**  At `δ = 1/(n+1)` the total forbidden measure `2nδ = 2n/(n+1) ≥ 1`
for all `n ≥ 1`, so the union-bound lonely estimate `1 − 2nδ ≤ 0` is vacuous. -/
theorem union_bound_vacuous (n : ℕ) (hn : 1 ≤ n) :
    1 - 2 * (n : ℝ) * (1 / (n + 1)) ≤ 0 := by
  have hpos : (0 : ℝ) < (n : ℝ) + 1 := by positivity
  rw [sub_nonpos]
  rw [mul_one_div, le_div_iff₀ hpos] at *
  · have : (1 : ℝ) ≤ (n : ℝ) := by exact_mod_cast hn
    nlinarith

end Math.LonelyRunner
