/-
# The involution modulus 24

Provenance: `eliottcassidy2000/math` — `01-canon/theorems/THM-484-involution-modulus-24.md`
(commit `7b9c76c`).  The informal theorem identifies `24` as the arithmetic modulus whose
unit group consists entirely of involutions, with `φ(24) = 8` and unit set
`{1,5,7,11,13,17,19,23}`.  This file formalizes the elementary verified core: all units
modulo `24` square to `1`, the explicit unit set has cardinality `8`, every natural number
coprime to `24` satisfies `n^2 ≡ 1 (mod 24)`, and for positive moduli the exponent-two
condition is equivalent to divisibility by `24`.
-/
import Mathlib

namespace Math.NumberTheory

open scoped ArithmeticFunction.carmichael

/-- A modulus whose unit group has exponent at most two. -/
def UnitsExponentTwo (n : ℕ) : Prop :=
  ∀ u : (ZMod n)ˣ, u ^ 2 = 1

/-- **The involution modulus core.**  Every unit modulo `24` is its own inverse. -/
theorem unitsExponentTwo_twentyFour : UnitsExponentTwo 24 := by
  intro u
  revert u
  decide

/-- Equivalently, every unit of `ℤ/24ℤ` has square `1`. -/
theorem zmod24_unit_sq_one (u : (ZMod 24)ˣ) : u ^ 2 = 1 :=
  unitsExponentTwo_twentyFour u

/-- `φ(24) = 8`, expressed as the cardinality of the unit group of `ZMod 24`. -/
theorem card_units_zmod24 : Fintype.card (ZMod 24)ˣ = 8 := by
  decide

/-- The eight units modulo `24` are exactly `1,5,7,11,13,17,19,23`. -/
theorem units_zmod24_values :
    (Finset.univ.image fun u : (ZMod 24)ˣ => (u : ZMod 24)) =
      ({1, 5, 7, 11, 13, 17, 19, 23} : Finset (ZMod 24)) := by
  decide

/-- The divisor side of the verified exponent-two list:
`1,2,3,4,6,8,12,24` all have exponent-two unit groups. -/
theorem unitsExponentTwo_twentyFour_divisors :
    UnitsExponentTwo 1 ∧ UnitsExponentTwo 2 ∧ UnitsExponentTwo 3 ∧ UnitsExponentTwo 4 ∧
      UnitsExponentTwo 6 ∧ UnitsExponentTwo 8 ∧ UnitsExponentTwo 12 ∧ UnitsExponentTwo 24 := by
  constructor
  · intro u; revert u; decide
  constructor
  · intro u; revert u; decide
  constructor
  · intro u; revert u; decide
  constructor
  · intro u; revert u; decide
  constructor
  · intro u; revert u; decide
  constructor
  · intro u; revert u; decide
  constructor
  · intro u; revert u; decide
  · exact unitsExponentTwo_twentyFour

/-- The same involution fact in congruence form: if `n` is coprime to `24`, then
`n^2 ≡ 1 (mod 24)`. -/
theorem sq_mod_twentyFour_eq_one_of_coprime (n : ℕ) (h : Nat.Coprime n 24) :
    n ^ 2 % 24 = 1 := by
  have hunit : IsUnit (n : ZMod 24) := (ZMod.isUnit_iff_coprime n 24).2 h
  rcases hunit with ⟨u, hu⟩
  have hs_units : u ^ 2 = 1 := zmod24_unit_sq_one u
  have hs_ring : ((u : ZMod 24) ^ 2) = 1 := by
    change ((u ^ 2 : (ZMod 24)ˣ) : ZMod 24) = 1
    rw [hs_units]
    rfl
  have hn_ring : ((n ^ 2 : ℕ) : ZMod 24) = 1 := by
    simpa [hu, pow_two] using hs_ring
  have hmod := (ZMod.natCast_eq_natCast_iff' (n ^ 2) 1 24).1 hn_ring
  simpa using hmod

/-- The eight residue classes coprime to `24` are exactly the eight involutions. -/
theorem coprime_residue_classes_mod24 :
    (Finset.univ.filter fun a : ZMod 24 => IsUnit a) =
      ({1, 5, 7, 11, 13, 17, 19, 23} : Finset (ZMod 24)) := by
  decide

/-- The unit-square condition is exactly the assertion that the Carmichael exponent divides `2`. -/
theorem unitsExponentTwo_iff_carmichael_dvd_two {n : ℕ} (hn : n ≠ 0) :
    UnitsExponentTwo n ↔ ArithmeticFunction.carmichael n ∣ 2 := by
  constructor
  · intro h
    rw [ArithmeticFunction.carmichael_eq_exponent hn]
    exact Monoid.exponent_dvd_of_forall_pow_eq_one h
  · intro h u
    have hExp : Monoid.exponent (ZMod n)ˣ ∣ 2 := by
      rwa [← ArithmeticFunction.carmichael_eq_exponent hn]
    exact (Monoid.exponent_dvd_iff_forall_pow_eq_one (G := (ZMod n)ˣ)).1 hExp u

lemma carmichael_two_pow_dvd_two_iff {k : ℕ} :
    ArithmeticFunction.carmichael (2 ^ k) ∣ 2 ↔ k ≤ 3 := by
  constructor
  · intro h
    by_contra hk
    have hk4 : 4 ≤ k := by omega
    have hkne : k ≠ 2 := by omega
    have hpow : 4 ∣ ArithmeticFunction.carmichael (2 ^ k) := by
      rw [ArithmeticFunction.carmichael_two_pow_of_ne_two hkne]
      change 2 ^ 2 ∣ 2 ^ (k - 2)
      exact Nat.pow_dvd_pow 2 (by omega)
    have : 4 ∣ 2 := hpow.trans h
    norm_num at this
  · intro hk
    interval_cases k
    · rw [ArithmeticFunction.carmichael_two_pow_of_le_two (n := 0) (by norm_num)]
      norm_num
    · rw [ArithmeticFunction.carmichael_two_pow_of_le_two (n := 1) (by norm_num)]
      norm_num
    · rw [ArithmeticFunction.carmichael_two_pow_of_le_two (n := 2) (by norm_num)]
      norm_num
    · rw [ArithmeticFunction.carmichael_two_pow_of_ne_two (n := 3) (by norm_num)]
      norm_num

lemma prime_pow_carmichael_dvd_two {p k : ℕ} (hp : p.Prime) (hk : 0 < k)
    (h : ArithmeticFunction.carmichael (p ^ k) ∣ 2) :
    (p = 2 ∧ k ≤ 3) ∨ (p = 3 ∧ k = 1) := by
  by_cases hp2 : p = 2
  · subst p
    exact Or.inl ⟨rfl, (carmichael_two_pow_dvd_two_iff.mp h)⟩
  · have htot :
        ArithmeticFunction.carmichael (p ^ k) = p ^ (k - 1) * (p - 1) := by
      rw [ArithmeticFunction.carmichael_pow_of_prime_ne_two k hp hp2,
        Nat.totient_prime_pow hp hk]
    have hpred_dvd_two : p - 1 ∣ 2 := by
      rw [htot] at h
      have hpred_dvd_prod : p - 1 ∣ p ^ (k - 1) * (p - 1) := by
        simp [mul_comm]
      exact hpred_dvd_prod.trans h
    have hp_le_three : p ≤ 3 := by
      have hp_pos : 0 < p - 1 := Nat.sub_pos_of_lt hp.one_lt
      have hle : p - 1 ≤ 2 := Nat.le_of_dvd (by norm_num) hpred_dvd_two
      omega
    have hp_ge_three : 3 ≤ p := by
      have hp_ge_two : 2 ≤ p := hp.two_le
      omega
    have hp3 : p = 3 := le_antisymm hp_le_three hp_ge_three
    subst p
    right
    refine ⟨rfl, ?_⟩
    by_contra hk1
    have hk2 : 2 ≤ k := by omega
    have hthree : 3 ∣ ArithmeticFunction.carmichael (3 ^ k) := by
      rw [ArithmeticFunction.carmichael_pow_of_prime_ne_two k (by norm_num) (by norm_num),
        Nat.totient_prime_pow (by norm_num) hk]
      have : 3 ∣ 3 ^ (k - 1) := by
        exact dvd_pow_self 3 (by omega)
      exact this.trans (Nat.dvd_mul_right (3 ^ (k - 1)) (3 - 1))
    have : 3 ∣ 2 := hthree.trans h
    norm_num at this

/-- **Maximality of the involution modulus.**  For positive moduli, every unit squares to `1`
if and only if the modulus divides `24`. -/
theorem unitsExponentTwo_iff_dvd_twentyFour {n : ℕ} (hn : n ≠ 0) :
    UnitsExponentTwo n ↔ n ∣ 24 := by
  rw [unitsExponentTwo_iff_carmichael_dvd_two hn]
  constructor
  · intro h
    have hfac24 :
        Nat.factorization 24 = Finsupp.single 2 3 + Finsupp.single 3 1 := by
      rw [show 24 = 2 ^ 3 * 3 ^ 1 by norm_num]
      rw [Nat.factorization_mul (by norm_num) (by norm_num)]
      rw [Nat.Prime.factorization_pow (by norm_num : Nat.Prime 2),
        Nat.Prime.factorization_pow (by norm_num : Nat.Prime 3)]
    rw [← Nat.factorization_le_iff_dvd hn (by norm_num), hfac24]
    intro p
    by_cases hp : p.Prime
    · by_cases hpn : p ∣ n
      · have hk : 0 < n.factorization p := hp.factorization_pos_of_dvd hn hpn
        have hpown : p ^ n.factorization p ∣ n :=
          (hp.pow_dvd_iff_le_factorization hn).2 le_rfl
        have hlocal : ArithmeticFunction.carmichael (p ^ n.factorization p) ∣ 2 :=
          (ArithmeticFunction.carmichael_dvd hpown).trans h
        rcases prime_pow_carmichael_dvd_two hp hk hlocal with ⟨rfl, hk3⟩ | ⟨rfl, hk1⟩
        · simp [hk3]
        · simp [hk1]
      · rw [Nat.factorization_eq_zero_of_not_dvd hpn]
        simp
    · rw [Nat.factorization_eq_zero_of_not_prime n hp]
      simp
  · intro hdiv
    have hc24 : ArithmeticFunction.carmichael 24 = 2 := by
      rw [show 24 = 8 * 3 by norm_num, ArithmeticFunction.carmichael_mul (by norm_num)]
      rw [show 8 = 2 ^ 3 by norm_num,
        ArithmeticFunction.carmichael_two_pow_of_ne_two (n := 3) (by norm_num)]
      rw [show 3 = 3 ^ 1 by norm_num,
        ArithmeticFunction.carmichael_pow_of_prime_ne_two (p := 3) (n := 1) (by norm_num)
          (by norm_num)]
      norm_num
      rw [Nat.totient_prime (by norm_num : Nat.Prime 3)]
      norm_num
    exact (ArithmeticFunction.carmichael_dvd hdiv).trans (by rw [hc24])

end Math.NumberTheory
