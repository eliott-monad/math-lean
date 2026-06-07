/-
# LRC for 19 runners: the consecutive config {1,…,18} is lonely at t = 1/19 (general n, prime case)

Provenance: `eliottcassidy2000/math` — HYP-2327 (S649).  The user asked for "the full LRC, 19 not 14".
Where `14 = 2·7` is **composite** (and was attacked by fibering over the 7-clock, S640), **19 is prime**
— and `2` is a *primitive root* mod 19 (`ord₁₉(2) = 18`, a single 18-cycle), so there is **no CRT fiber
and no doubling sub-shell**: the `n = 14` reduction toolkit does not transfer.

What *is* provable is the **consecutive (tight extremal) configuration**, and here we do it for **every**
`n` at once (generalising S648's concrete `n = 14`): the runners `{1, …, n−1}` are lonely at `t = 1/n`,
because each `k/n ∈ [1/n, 1 − 1/n]` so `dZ(k/n) ≥ 1/n`.  Specialising to `n = 19` gives a genuine,
machine-checked Lonely Runner proof for the canonical 19-runner config.

HONEST SCOPE: this is the *one* tight config (also the friendliest, S647).  The **full** LRC for all
19-runner speed sets is open (proven only up to 7 runners, Barajas–Serra), and prime `n` is the hard case
for divisor/fiber methods (`2` primitive root ⇒ maximal mixing).  `19`'s structure lives on the CM side:
Heegner number `√−19` (the conjectural `χ = 5` step), the centered hexagon `19 = 1 + 6 + 12 = hex(2)`,
`2n − 1 = 37`.
-/
import Mathlib
import Math.LonelyRunner.LonelyFourteen

namespace Math.LonelyRunner

/-- **LRC for the consecutive config `{1,…,n−1}`, every `n`.**  At `t = 1/n` each runner `k ∈ {1,…,n−1}`
has clock distance `dZ(k/n) ≥ 1/n` (since `k/n ∈ [1/n, 1 − 1/n]`), so the config is lonely.  This is the
tight extremal family (the friendliest, S647); the witness is `t = 1/n`. -/
theorem consecutive_lonely {n k : ℕ} (hk1 : 1 ≤ k) (hk2 : k + 1 ≤ n) :
    (1 : ℝ) / n ≤ dZ ((k : ℝ) / n) := by
  have hnR : (0 : ℝ) < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  have h1 : (1 : ℝ) ≤ (k : ℝ) := by exact_mod_cast hk1
  have h2 : (k : ℝ) + 1 ≤ (n : ℝ) := by exact_mod_cast hk2
  apply dZ_ge_of_mem
  · positivity
  · gcongr
  · have hsum : (k : ℝ) / n + 1 / n ≤ 1 := by
      have hcomb : (k : ℝ) / n + 1 / n = (k + 1) / n := by ring
      rw [hcomb, div_le_one hnR]; linarith
    linarith

/-- **A proof for 19 runners.**  The canonical 19-runner configuration `{1,…,18}` is lonely at
`t = 1/19`: every runner `k ∈ {1,…,18}` has clock distance `dZ(k/19) ≥ 1/19`. -/
theorem lonely_nineteen (k : ℕ) (hk1 : 1 ≤ k) (hk2 : k ≤ 18) :
    (1 : ℝ) / 19 ≤ dZ ((k : ℝ) / 19) := by
  have h := consecutive_lonely (n := 19) hk1 (by omega)
  push_cast at h
  exact h

end Math.LonelyRunner
