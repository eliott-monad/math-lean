/-
# THM-308: General Base Quadratic-Residue Congruence

Provenance: `eliottcassidy2000/math` —
`01-canon/theorems/THM-308-general-base-qr-congruence.md` (source commit `9f7fc6e`).
Generalizes THM-306 (the base-`2` case) to all bases.

For any integer `b` and any odd prime `p` with `p ∤ b`,
  `b ^ (p * (p - 1) / 2) ≡ legendreSym p b   (mod p²)`.

Combinatorial reading (`b = 2`): the number `2 ^ C(p,2)` of labeled tournaments on
`p` vertices is `≡ (2/p)` modulo `p²`.

Proof. `b ^ (p(p-1)/2) = (b ^ (p/2)) ^ p`. Euler's criterion gives
`b ^ (p/2) ≡ (b/p)  (mod p)`, and the binomial lift `x ≡ y (mod p) → xᵖ ≡ yᵖ (mod p²)`
together with `(b/p)ᵖ = (b/p)` (because `(b/p) = ±1` and `p` is odd) finish it.
-/
import Mathlib

namespace Math.NumberTheory

open Finset

/-- **Binomial lift.** If `n ∣ x - y` then `n² ∣ xⁿ - yⁿ`.  (No primality needed:
the inner geometric factor `∑ᵢ xⁱ yⁿ⁻¹⁻ⁱ` is `≡ n·yⁿ⁻¹ ≡ 0 (mod n)`, contributing
the second factor of `n`.) -/
theorem dvd_sq_sub_pow_of_dvd_sub (n : ℕ) (x y : ℤ) (h : (n : ℤ) ∣ x - y) :
    (n : ℤ) ^ 2 ∣ x ^ n - y ^ n := by
  rw [← geom_sum₂_mul x y n, sq]
  refine mul_dvd_mul ?_ h
  -- It remains to show `n ∣ ∑ i ∈ range n, xⁱ · yⁿ⁻¹⁻ⁱ`.
  rw [← ZMod.intCast_zmod_eq_zero_iff_dvd]
  have hxy : (x : ZMod n) = (y : ZMod n) := by
    have h0 := (ZMod.intCast_zmod_eq_zero_iff_dvd (x - y) n).mpr h
    push_cast at h0
    exact sub_eq_zero.mp h0
  push_cast
  rw [hxy]
  have hterm : ∀ i ∈ range n,
      (y : ZMod n) ^ i * (y : ZMod n) ^ (n - 1 - i) = (y : ZMod n) ^ (n - 1) := by
    intro i hi
    rw [← pow_add]
    congr 1
    have : i < n := mem_range.mp hi
    omega
  rw [sum_congr rfl hterm, sum_const, card_range, nsmul_eq_mul, ZMod.natCast_self, zero_mul]

/-- **THM-308 (General Base QR Congruence).** For an odd prime `p` and an integer `b`
with `p ∤ b`,
  `b ^ (p · (p − 1) / 2) ≡ legendreSym p b   (mod p²)`. -/
theorem general_base_qr_congruence (p : ℕ) [Fact p.Prime] (hp : p ≠ 2)
    (b : ℤ) (hb : ¬ (p : ℤ) ∣ b) :
    (p : ℤ) ^ 2 ∣ b ^ (p * (p - 1) / 2) - legendreSym p b := by
  have hpp : p.Prime := Fact.out
  have hb0 : (b : ZMod p) ≠ 0 := by
    rwa [Ne, ZMod.intCast_zmod_eq_zero_iff_dvd]
  -- Euler's criterion: `p ∣ b ^ (p/2) − (b/p)`.
  have heuler : (p : ℤ) ∣ b ^ (p / 2) - legendreSym p b := by
    rw [← ZMod.intCast_zmod_eq_zero_iff_dvd]
    push_cast
    rw [legendreSym.eq_pow p b, sub_self]
  -- Binomial lift to modulus `p²`.
  have hlift : (p : ℤ) ^ 2 ∣ (b ^ (p / 2)) ^ p - (legendreSym p b) ^ p :=
    dvd_sq_sub_pow_of_dvd_sub p (b ^ (p / 2)) (legendreSym p b) heuler
  -- `(b/p)ᵖ = (b/p)` since `(b/p) = ±1` and `p` is odd.
  have hchi : (legendreSym p b) ^ p = legendreSym p b := by
    rcases legendreSym.eq_one_or_neg_one p hb0 with h1 | h1
    · rw [h1, one_pow]
    · rw [h1, Odd.neg_one_pow (hpp.odd_of_ne_two hp)]
  -- Exponent bookkeeping: `(p/2)·p = p·(p−1)/2` for odd `p`.
  have hexp : p / 2 * p = p * (p - 1) / 2 := by
    obtain ⟨k, rfl⟩ := hpp.odd_of_ne_two hp
    have h1 : (2 * k + 1) / 2 = k := by omega
    have h2 : 2 * k + 1 - 1 = 2 * k := by omega
    rw [h1, h2, Nat.mul_div_assoc (2 * k + 1) (⟨k, rfl⟩ : (2 : ℕ) ∣ 2 * k),
      show 2 * k / 2 = k from by omega]
    ring
  have hpow : (b ^ (p / 2)) ^ p = b ^ (p * (p - 1) / 2) := by
    rw [← pow_mul, hexp]
  rwa [hpow, hchi] at hlift

end Math.NumberTheory
