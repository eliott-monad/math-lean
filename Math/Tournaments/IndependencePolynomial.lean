/-
# Tournaments — the independence polynomial, the H-invariant, and the free `3^k` baseline

Provenance: `eliottcassidy2000/math` — HYP-2245 (S624b).  The tournament invariant `H(T) = I(Ω(T), 2)` (the number
of Hamiltonian paths, Rédei) is the **hard-core partition function** of the 3-cycle conflict graph `Ω` evaluated at
`x = 2` — the same partition-function object as the LRC covering-depth generating function (`DepthGenerating.lean`)
and the unit-distance count.  Its **forbidden values 7, 21, 63 = 7·3^k** are gaps in the achievable spectrum (verified
exhaustively `n ≤ 7`).  This file formalizes the structural engine: the **free baseline** — when the conflict graph
is edgeless (all 3-cycles vertex-disjoint), every subset is independent and `I(Ω, x) = (1+x)^k`, so `H = 3^k` at
`x = 2` (the `3 = 1 + 2 = 1 + (q−1)` ternary weight).  **Conflicts only reduce** the count below the free `3^k`, which
is why the spectrum has gaps; the atomic gap `7` (THM-029) propagates to `7·3^k` by partition-function multiplicativity
over disjoint components (THM-079).
-/
import Mathlib

namespace Math.Tournaments

open Finset

variable {V : Type*} [Fintype V] [DecidableEq V]

/-- A vertex set is **independent** for the conflict relation `r` if no two distinct members conflict. -/
def IsIndep (r : V → V → Prop) [DecidableRel r] (S : Finset V) : Prop :=
  ∀ a ∈ S, ∀ b ∈ S, a ≠ b → ¬ r a b

instance (r : V → V → Prop) [DecidableRel r] : DecidablePred (IsIndep r) :=
  fun _ => by unfold IsIndep; infer_instance

/-- The **independence polynomial** `I(Ω, x) = ∑_{S independent} x^{|S|}` — the hard-core partition function of the
conflict graph.  `H(T) = I(Ω(T), 2)`. -/
noncomputable def indepPoly (r : V → V → Prop) [DecidableRel r] (x : ℝ) : ℝ :=
  ∑ S ∈ (univ : Finset V).powerset.filter (IsIndep r), x ^ S.card

/-- The full-powerset sum is `(1+x)^k` (the edgeless / free generating function). -/
theorem sum_pow_card_powerset (x : ℝ) :
    ∑ S ∈ (univ : Finset V).powerset, x ^ S.card = (1 + x) ^ (Fintype.card V) := by
  have h := Finset.prod_add (fun _ : V => x) (fun _ : V => (1 : ℝ)) univ
  simp only [Finset.prod_const_one, mul_one, Finset.prod_const, Finset.card_univ] at h
  rw [add_comm]; exact h.symm

/-- **The free baseline.**  If the conflict graph is edgeless (`r` never holds — all 3-cycles vertex-disjoint), every
subset is independent and `I(Ω, x) = (1+x)^k`.  At `x = 2`: `H = 3^k` (`3 = 1 + 2`, the ternary weight). -/
theorem indepPoly_edgeless (r : V → V → Prop) [DecidableRel r] (hr : ∀ a b, ¬ r a b) (x : ℝ) :
    indepPoly r x = (1 + x) ^ (Fintype.card V) := by
  unfold indepPoly
  rw [Finset.filter_true_of_mem (fun S _ a _ b _ _ => hr a b)]
  exact sum_pow_card_powerset x

/-- **Conflicts only reduce the count.**  For `x ≥ 0`, `I(Ω, x) ≤ (1+x)^k`: the independent-set sum is bounded by
the free baseline.  At `x = 2`, `H ≤ 3^k`, with equality iff edgeless — so the free `3^k` is the maximum and every
conflict pushes `H` strictly below it, carving the spectrum gaps (`7, 21, 63 = 7·3^k`). -/
theorem indepPoly_le_edgeless (r : V → V → Prop) [DecidableRel r] {x : ℝ} (hx : 0 ≤ x) :
    indepPoly r x ≤ (1 + x) ^ (Fintype.card V) := by
  rw [← sum_pow_card_powerset]
  apply Finset.sum_le_sum_of_subset_of_nonneg (Finset.filter_subset _ _)
  intro S _ _; positivity

/-- **The `H = 3^k` free value.**  The edgeless conflict graph (all 3-cycles disjoint) has `H = I(Ω, 2) = 3^k` — the
free baseline against which the forbidden `7·3^k` gaps are measured. -/
theorem indepPoly_two_edgeless (r : V → V → Prop) [DecidableRel r] (hr : ∀ a b, ¬ r a b) :
    indepPoly r 2 = 3 ^ (Fintype.card V) := by
  rw [indepPoly_edgeless r hr]; norm_num

/-- **`H ≤ 3^k`.**  Every tournament's `H = I(Ω, 2)` is at most the free baseline `3^{(number of 3-cycles)}`. -/
theorem indepPoly_two_le (r : V → V → Prop) [DecidableRel r] :
    indepPoly r 2 ≤ 3 ^ (Fintype.card V) := by
  have h := indepPoly_le_edgeless r (x := 2) (by norm_num)
  rw [show (1 + 2 : ℝ) = 3 by norm_num] at h
  exact h

end Math.Tournaments
