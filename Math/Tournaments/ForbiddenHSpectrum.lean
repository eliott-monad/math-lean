/-
# Tournaments — the forbidden H-spectrum via the SCC equidecomposition

Provenance: `eliottcassidy2000/math` — HYP-2255 (S626).  The H-invariant `H(T) = I(Ω,2)` (#Hamiltonian paths) is
**multiplicative over strongly-connected components**: `H(T) = ∏ᵢ H(SCCᵢ)` (the condensation is a transitive order,
and a Hamiltonian path factors through it — the SCC *equidecomposition*, with the *equinumerosity*
`Ham(T) ≅ ∏ Ham(SCCᵢ)`).  Hence every achievable `H` is a product of **atoms** — H-values of strongly-connected
tournaments.  The forbidden values are exactly the integers with no atom-factorization.  This file formalizes the
arithmetic payoff: if no atom equals `7·3ʲ` (the strengthened THM-029/079 — a strongly-connected tournament never
has `H = 7·3ʲ`), then `7·3ᵏ` is not a product of atoms, hence forbidden.  This reduces the whole forbidden-spectrum
question to a multiplicative-number-theory statement about the atom set.
-/
import Mathlib

namespace Math.Tournaments

/-- **Forbidden `7·3ᵏ` from the SCC equidecomposition.**  If `A` is the set of achievable atoms (H-values of
strongly-connected tournaments) and no atom equals `7·3ʲ`, then no product of atoms equals `7·3ᵏ`: writing the
product, `7` (prime) must divide some atom `a`; `a ∣ 7·3ᵏ` with `7 ∣ a` forces `a = 7·3ʲ`, contradicting the
hypothesis.  So `H = 7·3ᵏ` is unrealizable. -/
theorem forbidden_seven_mul_three_pow {A : ℕ → Prop} (hA : ∀ j : ℕ, ¬ A (7 * 3 ^ j))
    (k : ℕ) {s : Multiset ℕ} (hs : ∀ a ∈ s, A a) : s.prod ≠ 7 * 3 ^ k := by
  intro hp
  have h7 : Nat.Prime 7 := by norm_num
  have h3 : Nat.Prime 3 := by norm_num
  have hdvd : (7 : ℕ) ∣ s.prod := by rw [hp]; exact dvd_mul_right 7 (3 ^ k)
  obtain ⟨a, has, h7a⟩ := h7.prime.exists_mem_multiset_dvd hdvd
  have hadvd : a ∣ 7 * 3 ^ k := by rw [← hp]; exact Multiset.dvd_prod has
  obtain ⟨b, hb⟩ := h7a
  have hb3 : b ∣ 3 ^ k := by
    have hmul : 7 * b ∣ 7 * 3 ^ k := by rw [← hb]; exact hadvd
    exact (Nat.mul_dvd_mul_iff_left (by norm_num : 0 < 7)).mp hmul
  obtain ⟨j, _, hj⟩ := (Nat.dvd_prime_pow h3).mp hb3
  have hAa : A a := hs a has
  rw [hb, hj] at hAa
  exact hA j hAa

/-- **Specialization: `H = 7` and `H = 21` are forbidden** (the named gaps `k = 0, 1`), given that no atom is `7·3ʲ`.
The full `7·3ᵏ` family follows uniformly from the same atom hypothesis. -/
theorem forbidden_seven_and_twentyone {A : ℕ → Prop} (hA : ∀ j : ℕ, ¬ A (7 * 3 ^ j))
    {s : Multiset ℕ} (hs : ∀ a ∈ s, A a) : s.prod ≠ 7 ∧ s.prod ≠ 21 := by
  refine ⟨?_, ?_⟩
  · have := forbidden_seven_mul_three_pow hA 0 hs; simpa using this
  · have := forbidden_seven_mul_three_pow hA 1 hs; simpa using this

end Math.Tournaments
