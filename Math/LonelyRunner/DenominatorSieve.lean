/-
# Lonely Runner — denominator sieve at reduced rational clocks

Provenance: `eliottcassidy2000/math` —
`01-canon/theorems/THM-369-lrc-sieve-lean-formalization.md` (THM-369), packaging
the small-denominator sieve of
`01-canon/theorems/THM-366-lrc-small-denominator-divisibility-sieve.md`.

At a reduced rational clock `a/q`, a runner of speed `v` can be closer than
`1/q` to an integer only if the integer numerator `v*a - m*q` vanishes.  Since
`gcd(a,q)=1`, this can happen only when `q ∣ v`.  Thus, if no speed is divisible
by `q` and `q ≤ n`, every runner is at rational distance at least `1/n` from
every integer.  This is the master denominator sieve in the candidate's
"far from every integer" encoding.
-/
import Mathlib

namespace Math.LonelyRunner

/-- Rational "far from every integer" version of the Lonely Runner predicate. -/
def LonelyRat {ι : Type*} (n : ℕ) (v : ι → ℕ) (t : ℚ) : Prop :=
  ∀ i, ∀ m : ℤ, (1 : ℚ) / n ≤ |(v i : ℚ) * t - (m : ℚ)|

private lemma int_num_nonzero_of_not_dvd
    {q va : ℕ} {m : ℤ} (hva : ¬ q ∣ va) :
    (((va : ℕ) : ℤ) - m * (q : ℤ)) ≠ 0 := by
  intro hzero
  have hdivInt : (q : ℤ) ∣ (va : ℤ) := by
    refine ⟨m, ?_⟩
    calc
      (va : ℤ) = m * (q : ℤ) := sub_eq_zero.mp hzero
      _ = (q : ℤ) * m := by ring
  exact hva (Int.natCast_dvd_natCast.mp hdivInt)

/-- **THM-369, denominator sieve.**  At a reduced clock `a/q`, if no speed is divisible by
`q` and `q ≤ n`, then the clock is a closed lonely witness at threshold `1/n`. -/
theorem sieve_frac {ι : Type*} {q n a : ℕ} {v : ι → ℕ}
    (hq : 0 < q) (hqn : q ≤ n) (hcop : Nat.Coprime a q)
    (hv : ∀ i, ¬ q ∣ v i) :
    LonelyRat n v ((a : ℚ) / (q : ℚ)) := by
  intro i m
  have hqQ : (0 : ℚ) < (q : ℚ) := by exact_mod_cast hq
  let z : ℤ := ((v i * a : ℕ) : ℤ) - m * (q : ℤ)
  have hz_ne : z ≠ 0 := by
    dsimp [z]
    refine int_num_nonzero_of_not_dvd ?_
    intro hdiv
    exact hv i (hcop.symm.dvd_of_dvd_mul_right hdiv)
  have hz_abs_one : (1 : ℚ) ≤ |(z : ℚ)| := by
    exact_mod_cast Int.one_le_abs hz_ne
  have hq_abs : |(q : ℚ)| = (q : ℚ) := abs_of_nonneg (le_of_lt hqQ)
  have hdist_q : (1 : ℚ) / (q : ℚ) ≤ |(z : ℚ) / (q : ℚ)| := by
    rw [abs_div, hq_abs]
    exact div_le_div_of_nonneg_right hz_abs_one (le_of_lt hqQ)
  have hdist_eq :
      (v i : ℚ) * ((a : ℚ) / (q : ℚ)) - (m : ℚ) = (z : ℚ) / (q : ℚ) := by
    dsimp [z]
    field_simp [hqQ.ne']
    norm_num
    ring
  have hthreshold : (1 : ℚ) / n ≤ (1 : ℚ) / q :=
    one_div_le_one_div_of_le hqQ (by exact_mod_cast hqn)
  exact le_trans hthreshold (by simpa [hdist_eq] using hdist_q)

/-- The bare unit-numerator denominator sieve. -/
theorem sieve_one_div {ι : Type*} {q n : ℕ} {v : ι → ℕ}
    (hq : 0 < q) (hqn : q ≤ n) (hv : ∀ i, ¬ q ∣ v i) :
    LonelyRat n v ((1 : ℚ) / (q : ℚ)) :=
  sieve_frac hq hqn (by simp) hv

end Math.LonelyRunner
