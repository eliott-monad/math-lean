/-
# Collatz — the cycle resonance equation (the 2-adic/3-adic twin of the LRC resonance)

Provenance: `eliottcassidy2000/math` — the Collatz↔LRC connection (S614). Mathlib has no Collatz
development; this is foundational.

The Syracuse map sends an odd `n` to the odd `(3n+1)/2^{v₂(3n+1)}`. A length-`L` cycle is a sequence
of odd `n_0,…,n_{L−1}` with `n_{i+1}·2^{k_i} = 3·n_i + 1`. Multiplying around the cycle gives the
**resonance equation**

    2^{∑ k_i} · ∏ n_i = ∏ (3·n_i + 1),

so `2^K = 3^L · ∏(1 + 1/(3 n_i))` — a near-equality `2^K ≈ 3^L`, the multiplicative analogue of the
Lonely-Runner resonance `Σ m_i v_i = 0`. The Collatz conjecture (no nontrivial cycle) is that this
resonance has no nontrivial solution — the "circuit-free" condition of the 2-adic/3-adic problem.
-/
import Mathlib

namespace Math.Collatz

open Finset

variable {L : ℕ} [NeZero L]

/-- **The Collatz cycle resonance equation.** For any cyclic Syracuse cycle (`n_{i+1}·2^{k_i} =
3·n_i + 1`), `2^{∑ k_i} · ∏ n_i = ∏ (3 n_i + 1)` — telescoping the step relation around the cycle.
This is the exact 2-adic/3-adic resonance `2^K ≈ 3^L` underlying every Collatz cycle. -/
theorem cycle_resonance {n k : Fin L → ℕ}
    (h : ∀ i : Fin L, n (i + 1) * 2 ^ (k i) = 3 * n i + 1) :
    2 ^ (∑ i, k i) * (∏ i, n i) = ∏ i, (3 * n i + 1) := by
  have hshift : (∏ i, n (i + 1)) = ∏ i, n i :=
    Fintype.prod_equiv (Equiv.addRight (1 : Fin L)) (fun i => n (i + 1)) n (fun _ => rfl)
  calc 2 ^ (∑ i, k i) * (∏ i, n i)
      = (∏ i, n (i + 1)) * ∏ i, 2 ^ (k i) := by
        rw [hshift, Finset.prod_pow_eq_pow_sum, mul_comm]
    _ = ∏ i, (n (i + 1) * 2 ^ (k i)) := by rw [Finset.prod_mul_distrib]
    _ = ∏ i, (3 * n i + 1) := Finset.prod_congr rfl (fun i _ => h i)

/-- The odd step always lands on an even number: `3n+1` is even for odd `n` (so a `÷2` follows and
`v₂(3n+1) ≥ 1`). -/
theorem even_three_mul_add_one {n : ℕ} (hn : Odd n) : Even (3 * n + 1) := by
  rcases hn with ⟨m, rfl⟩
  exact ⟨3 * m + 2, by ring⟩

/-- Consequence of the resonance: `3^L · ∏ n_i ≤ 2^K · ∏ n_i` for any cycle (the cycle must
"out-grow" `3^L` by a power of two — `2^K ≥ 3^L`, the resonance from above). -/
theorem three_pow_le_two_pow {n k : Fin L → ℕ}
    (h : ∀ i : Fin L, n (i + 1) * 2 ^ (k i) = 3 * n i + 1) :
    3 ^ L * (∏ i, n i) ≤ 2 ^ (∑ i, k i) * (∏ i, n i) := by
  rw [cycle_resonance h]
  calc 3 ^ L * ∏ i, n i = ∏ i : Fin L, (3 * n i) := by
        rw [Finset.prod_mul_distrib, Finset.prod_const, Finset.card_univ, Fintype.card_fin]
    _ ≤ ∏ i, (3 * n i + 1) := Finset.prod_le_prod (fun _ _ => Nat.zero_le _)
          (fun i _ => Nat.le_succ _)

end Math.Collatz
