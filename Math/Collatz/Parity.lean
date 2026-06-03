/-
# Collatz — the shortcut map and its 2-adic (parity-signature) structure

Provenance: `eliottcassidy2000/math` — the Collatz↔LRC connection (S614). The "shortcut" Syracuse map
`T(n) = n/2` (even) or `(3n+1)/2` (odd) folds one `÷2` into every step, so each step advances the
2-adic scale by one. Lagarias: the first `K` parities of a trajectory form a binary signature that
determines `n mod 2^K`, and `T` is a 2-adic shift on these signatures — exactly HYP-2117's doubling
dynamics with the `3x+1` `+1`-twist. We formalize the branch structure and the **2-adic contraction
step**: congruence mod `2^{K+1}` is carried by `T` to congruence mod `2^K`, the inductive heart of
the parity-vector bijection.
-/
import Mathlib

namespace Math.Collatz

/-- The shortcut Collatz map: `T(n) = n/2` for even `n`, `(3n+1)/2` for odd `n`. -/
def shortcut (n : ℕ) : ℕ := if n % 2 = 0 then n / 2 else (3 * n + 1) / 2

theorem shortcut_even {n : ℕ} (h : n % 2 = 0) : shortcut n = n / 2 := by
  simp [shortcut, h]

theorem shortcut_odd {n : ℕ} (h : n % 2 = 1) : shortcut n = (3 * n + 1) / 2 := by
  simp [shortcut, h]

/-- On evens, `T(2m) = m`. -/
theorem shortcut_two_mul (m : ℕ) : shortcut (2 * m) = m := by
  rw [shortcut_even (by omega)]; omega

/-- On odds, `T(2m+1) = 3m+2`. -/
theorem shortcut_two_mul_add_one (m : ℕ) : shortcut (2 * m + 1) = 3 * m + 2 := by
  rw [shortcut_odd (by omega)]; omega

/-- Halving a congruence whose modulus is also halved: `2a ≡ 2b (mod 2c) → a ≡ b (mod c)`. -/
theorem half_modEq {a b c : ℕ} (h : 2 * a ≡ 2 * b [MOD 2 * c]) : a ≡ b [MOD c] := by
  unfold Nat.ModEq at h ⊢
  rw [Nat.mul_mod_mul_left, Nat.mul_mod_mul_left] at h
  omega

/-- **2-adic contraction of the shortcut map.** If `n ≡ m (mod 2^{K+1})` then `T(n) ≡ T(m) (mod
2^K)`: one shortcut step advances the 2-adic scale by exactly one. (Inductive heart of the
Lagarias parity-vector bijection: the first `K` parities are a binary signature of `n mod 2^K`.) -/
theorem shortcut_mod_pow {K n m : ℕ} (h : n ≡ m [MOD 2 ^ (K + 1)]) :
    shortcut n ≡ shortcut m [MOD 2 ^ K] := by
  have hc : (2 : ℕ) ^ (K + 1) = 2 * 2 ^ K := by rw [pow_succ]; ring
  rw [hc] at h
  have hpar : n % 2 = m % 2 := Nat.ModEq.of_dvd ⟨2 ^ K, by ring⟩ h
  rcases Nat.mod_two_eq_zero_or_one n with hn0 | hn1
  · -- both even
    have hm0 : m % 2 = 0 := by omega
    rw [shortcut_even hn0, shortcut_even hm0]
    apply half_modEq
    rwa [Nat.two_mul_div_two_of_even (Nat.even_iff.mpr hn0),
      Nat.two_mul_div_two_of_even (Nat.even_iff.mpr hm0)]
  · -- both odd
    have hm1 : m % 2 = 1 := by omega
    rw [shortcut_odd hn1, shortcut_odd hm1]
    apply half_modEq
    have he₁ : 2 * ((3 * n + 1) / 2) = 3 * n + 1 :=
      Nat.two_mul_div_two_of_even (by rcases Nat.odd_iff.mpr hn1 with ⟨t, rfl⟩; exact ⟨3 * t + 2, by ring⟩)
    have he₂ : 2 * ((3 * m + 1) / 2) = 3 * m + 1 :=
      Nat.two_mul_div_two_of_even (by rcases Nat.odd_iff.mpr hm1 with ⟨t, rfl⟩; exact ⟨3 * t + 2, by ring⟩)
    rw [he₁, he₂]
    exact (h.mul_left 3).add_right 1

end Math.Collatz
