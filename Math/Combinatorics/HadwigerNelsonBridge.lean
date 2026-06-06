/-
# The Hadwiger–Nelson ↔ Lonely-Runner ↔ unit-distance bridge: χ · α ≥ n

Provenance: `eliottcassidy2000/math` — HYP-2300 (S634).  All three problems live on the **unit-distance graph** `G`
of a homogeneous space (the plane for unit distance / Hadwiger–Nelson, the circle/torus for the Lonely Runner):
- **unit distance** maximizes the *edges* of `G`;
- **Hadwiger–Nelson** asks the *chromatic number* `χ(G)` (color the plane so unit-apart points differ);
- the **Lonely Runner** seeks a large *independent set* — the lonely / `1`-avoiding set `α(G)` (a point/time avoiding
  every forbidden unit relation).

A proper `k`-coloring partitions the `n` vertices into `k` independent sets, so the largest is an independent set `S`
with `k·|S| ≥ n`.  Hence **`χ · α ≥ n`**: a *dense* unit-distance graph (small `α` — loneliness is hard) *forces a
large chromatic number* (Hadwiger–Nelson), and a *large* lonely/avoiding set *caps* the chromatic number below.  An
insight on any corner transfers to the others via this bridge (and the shared Delsarte LP, HYP-2215).
-/
import Mathlib

namespace Math.Combinatorics

open SimpleGraph Finset

variable {V : Type*} [Fintype V] {G : SimpleGraph V}

/-- **The bridge `χ · α ≥ n`.**  A proper `k`-coloring of the unit-distance graph yields an independent set `S`
(a lonely / `1`-avoiding set) with `Fintype.card V ≤ k · |S|` — the largest color class.  So `α(G) ≥ n / χ(G)`. -/
theorem exists_indepSet_card_mul_ge {k : ℕ} (c : G.Coloring (Fin k)) (hk : 0 < k) :
    ∃ S : Finset V, G.IsIndepSet (S : Set V) ∧ Fintype.card V ≤ k * S.card := by
  have hsum : ∑ i : Fin k, (univ.filter (fun v => c v = i)).card = Fintype.card V := by
    rw [← Finset.card_univ]
    exact (Finset.card_eq_sum_card_fiberwise (fun v _ => mem_univ (c v))).symm
  by_contra hcon
  push_neg at hcon
  have key : ∀ i : Fin k, k * (univ.filter (fun v => c v = i)).card < Fintype.card V := by
    intro i
    refine hcon (univ.filter (fun v => c v = i)) ?_
    have heq : (↑(univ.filter (fun v => c v = i)) : Set V) = c.colorClass i := by
      ext a
      simp only [Finset.coe_filter, Finset.mem_univ, true_and, Set.mem_setOf_eq,
        Coloring.colorClass]
    rw [heq]; exact c.isIndepSet_colorClass i
  have hcontra : k * Fintype.card V < k * Fintype.card V := by
    calc k * Fintype.card V
        = ∑ i : Fin k, k * (univ.filter (fun v => c v = i)).card := by rw [← Finset.mul_sum, hsum]
      _ < ∑ _i : Fin k, Fintype.card V :=
          Finset.sum_lt_sum_of_nonempty (univ_nonempty_iff.mpr ⟨⟨0, hk⟩⟩) (fun i _ => key i)
      _ = k * Fintype.card V := by
          rw [Finset.sum_const, Finset.card_univ, Fintype.card_fin, smul_eq_mul]
  exact lt_irrefl _ hcontra

end Math.Combinatorics
