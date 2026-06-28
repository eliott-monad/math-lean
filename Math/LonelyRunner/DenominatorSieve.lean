/-
# Lonely Runner — denominator sieve at reduced rational clocks

Provenance: `eliottcassidy2000/math` —
`01-canon/theorems/THM-369-lrc-sieve-lean-formalization.md` (THM-369), packaging
the small-denominator sieve of
`01-canon/theorems/THM-366-lrc-small-denominator-divisibility-sieve.md`, and
`01-canon/theorems/THM-390-lrc-padic-zero-branch-cover-core.md` (THM-390), the
zero-branch cover core.

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

/-! ## THM-390: zero-branch mass and denominator-node cover -/

/-- The zero-branch mass at denominator `q`: speeds in `V` divisible by `q`. -/
def zeroBranchMass (q : ℕ) (V : Finset ℕ) : ℕ :=
  (V.filter (fun v => q ∣ v)).card

/-- A denominator node is covered when some active speed is divisible by it. -/
def coversDenominator (q : ℕ) (V : Finset ℕ) : Prop :=
  ∃ v ∈ V, q ∣ v

/-- Zero branch mass is exactly failure to cover the denominator node. -/
theorem zeroBranchMass_eq_zero_iff_not_covers (q : ℕ) (V : Finset ℕ) :
    zeroBranchMass q V = 0 ↔ ¬ coversDenominator q V := by
  simp [zeroBranchMass, coversDenominator]

/-- Positive branch mass is exactly denominator-node coverage. -/
theorem zeroBranchMass_pos_iff_covers (q : ℕ) (V : Finset ℕ) :
    0 < zeroBranchMass q V ↔ coversDenominator q V := by
  rw [Nat.pos_iff_ne_zero]
  simp [zeroBranchMass, coversDenominator]

private theorem no_dvd_of_zeroBranchMass_eq_zero {q : ℕ} {V : Finset ℕ}
    (hz : zeroBranchMass q V = 0) (x : {v // v ∈ V}) : ¬ q ∣ x.val := by
  intro hx
  exact (zeroBranchMass_eq_zero_iff_not_covers q V).mp hz ⟨x.val, x.property, hx⟩

/-- **THM-390(1), arithmetic core.** If no speed in `V` is divisible by `q`, then the
clock `t = 1/q` is far from every integer by at least `1/q` for every active speed. -/
theorem zeroBranch_one_div_far {q : ℕ} {V : Finset ℕ}
    (hq : 0 < q) (hz : zeroBranchMass q V = 0) :
    LonelyRat q (fun x : {v // v ∈ V} => x.val) ((1 : ℚ) / (q : ℚ)) := by
  exact sieve_one_div hq le_rfl (no_dvd_of_zeroBranchMass_eq_zero hz)

/-- **THM-390(1), open witness.** If `2 ≤ q < n` and the zero-branch mass at `q` is zero,
then `t = 1/q` beats the `1/n` threshold strictly. -/
theorem zeroBranch_one_div_openWitness {q n : ℕ} {V : Finset ℕ}
    (hq : 2 ≤ q) (hqn : q < n) (hz : zeroBranchMass q V = 0) :
    ∀ x : {v // v ∈ V}, ∀ m : ℤ,
      (1 : ℚ) / (n : ℚ) <
        |(x.val : ℚ) * ((1 : ℚ) / (q : ℚ)) - (m : ℚ)| := by
  have hfar := zeroBranch_one_div_far (q := q) (V := V) (by omega) hz
  have hstrict : (1 : ℚ) / (n : ℚ) < (1 : ℚ) / (q : ℚ) := by
    exact one_div_lt_one_div_of_lt (by exact_mod_cast (by omega : 0 < q)) (by exact_mod_cast hqn)
  intro x m
  exact lt_of_lt_of_le hstrict (hfar x m)

/-- **THM-390(2), compact wall witness.** If `q ≤ n` and the zero-branch mass at `q`
is zero, then `t = 1/q` is a closed lonely witness at threshold `1/n`. -/
theorem zeroBranch_one_div_compactWitness {q n : ℕ} {V : Finset ℕ}
    (hq : 0 < q) (hqn : q ≤ n) (hz : zeroBranchMass q V = 0) :
    LonelyRat n (fun x : {v // v ∈ V} => x.val) ((1 : ℚ) / (q : ℚ)) := by
  exact sieve_one_div hq hqn (no_dvd_of_zeroBranchMass_eq_zero hz)

/-- The endpoint case in THM-390(2): if no speed is divisible by `n`, then `t = 1/n`
is a closed witness. -/
theorem zeroBranch_wallWitness {n : ℕ} {V : Finset ℕ}
    (hn : 0 < n) (hz : zeroBranchMass n V = 0) :
    LonelyRat n (fun x : {v // v ∈ V} => x.val) ((1 : ℚ) / (n : ℚ)) :=
  zeroBranch_one_div_compactWitness hn le_rfl hz

/-- A zero-branch open sieve witness at denominator `q`. -/
def HasOpenDenominatorSieveWitness (n q : ℕ) (V : Finset ℕ) : Prop :=
  2 ≤ q ∧ q < n ∧ zeroBranchMass q V = 0

/-- A zero-branch compact sieve witness at denominator `q`. -/
def HasCompactDenominatorSieveWitness (n q : ℕ) (V : Finset ℕ) : Prop :=
  2 ≤ q ∧ q ≤ n ∧ zeroBranchMass q V = 0

/-- **THM-390(3), open-node cover core.** If there is no open zero-branch sieve witness
among `q = 2, ..., n-1`, then every such denominator node is covered by a divisible speed. -/
theorem covers_of_no_openDenominatorSieveWitness {n : ℕ} {V : Finset ℕ}
    (hno : ∀ q, ¬ HasOpenDenominatorSieveWitness n q V) :
    ∀ q, 2 ≤ q → q < n → coversDenominator q V := by
  intro q hq hqn
  rw [← zeroBranchMass_pos_iff_covers]
  exact Nat.pos_iff_ne_zero.mpr fun hz => hno q ⟨hq, hqn, hz⟩

/-- **THM-390(3), compact cover core.** If there is no compact zero-branch sieve witness
among `q = 2, ..., n`, then every such denominator node is covered by a divisible speed. -/
theorem covers_of_no_compactDenominatorSieveWitness {n : ℕ} {V : Finset ℕ}
    (hno : ∀ q, ¬ HasCompactDenominatorSieveWitness n q V) :
    ∀ q, 2 ≤ q → q ≤ n → coversDenominator q V := by
  intro q hq hqn
  rw [← zeroBranchMass_pos_iff_covers]
  exact Nat.pos_iff_ne_zero.mpr fun hz => hno q ⟨hq, hqn, hz⟩

end Math.LonelyRunner
