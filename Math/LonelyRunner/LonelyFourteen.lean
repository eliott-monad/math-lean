/-
# A proof for 14 runners: the consecutive config {1,…,13} is lonely at t = 1/14

Provenance: `eliottcassidy2000/math` — HYP-2326 (S648).  A genuine, machine-checked Lonely Runner proof
for the **canonical 14-runner configuration** — the 13 runners of speeds `1, 2, …, 13`.  At time
`t = 1/14` every runner `k ∈ {1,…,13}` sits at clock distance `‖k·(1/14)‖ = dZ(k/14) ≥ 1/14` from the
origin — i.e. all are at least the gap `1/14` away, so the watched (stationary) runner is **lonely**.

This is the *tight extremal* case (the friendliness session S647 showed its lonely set is the single
instant `t = 1/14`, measure zero — the friendliest config).  HONEST SCOPE: this proves LRC for *this one*
14-runner configuration; the full conjecture for **all** 14-runner speed sets is open (LRC is proven only
up to 7 runners, Barajas–Serra).  But for `{1,…,13}` the witness `t = 1/14` is airtight.
-/
import Mathlib
import Math.LonelyRunner.CoveringDepth

namespace Math.LonelyRunner

/-- **Clock-distance lower bound.**  If `0 ≤ δ` and `x ∈ [δ, 1 − δ]`, then `dZ x ≥ δ`: the nearest
integer (`0` or `1`) is at least `δ` away, and every other integer is even farther. -/
theorem dZ_ge_of_mem {δ : ℝ} (hδ : 0 ≤ δ) (x : ℝ) (hlo : δ ≤ x) (hhi : x ≤ 1 - δ) : δ ≤ dZ x := by
  have key : ∀ m : ℤ, δ ≤ |x - (m : ℝ)| := by
    intro m
    rcases (show 0 < m ∨ m ≤ 0 by omega) with hm | hm
    · have hm1 : (1 : ℝ) ≤ (m : ℝ) := by
        have : (1 : ℤ) ≤ m := by omega
        exact_mod_cast this
      rw [abs_of_nonpos (by linarith), neg_sub]; linarith
    · have hm0 : (m : ℝ) ≤ 0 := by exact_mod_cast hm
      rw [abs_of_nonneg (by linarith)]; linarith
  exact key (round x)

/-- **LRC for the 14 consecutive runners.**  Every runner `k ∈ {1,…,13}` is at clock distance
`dZ(k/14) ≥ 1/14` at time `t = 1/14`; so the standard 14-runner configuration `{1,…,13}` is lonely,
witnessed by `t = 1/14`.  (`k/14 ∈ [1/14, 13/14] = [1/14, 1 − 1/14]`, then `dZ_ge_of_mem`.) -/
theorem lonely_fourteen (k : ℕ) (hk1 : 1 ≤ k) (hk2 : k ≤ 13) :
    (1 : ℝ) / 14 ≤ dZ ((k : ℝ) / 14) := by
  have h1 : (1 : ℝ) ≤ (k : ℝ) := by exact_mod_cast hk1
  have h2 : (k : ℝ) ≤ 13 := by exact_mod_cast hk2
  apply dZ_ge_of_mem
  · norm_num
  · linarith
  · linarith

end Math.LonelyRunner
