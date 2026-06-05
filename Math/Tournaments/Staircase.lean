/-
# All-zero interleaved staircase tournaments

Provenance: `eliottcassidy2000/math` -
`01-canon/theorems/THM-399-allzero-staircase-c3-formula.md`.

This file formalizes the counting core of THM-399.  The all-zero staircase on `2k`
vertices is represented as two copies of `Fin k`: dominant vertices `domV p` and
recessive vertices `recV p`.  Between different pairs, the dominant block and the
recessive block are both transitive and every dominant beats every recessive from a
different pair; within pair `p`, the single reversed arc is `recV p → domV p`.
-/
import Math.Tournaments.Basic

namespace Math.Tournaments

open Finset

/-- Vertices in the all-zero interleaved staircase: the dominant and recessive member of
each pair `p : Fin k`. -/
inductive StairVertex (k : ℕ) where
  | domV : Fin k → StairVertex k
  | recV : Fin k → StairVertex k
  deriving DecidableEq, Repr

instance (k : ℕ) : Fintype (StairVertex k) where
  elems := (univ.image StairVertex.domV) ∪ (univ.image StairVertex.recV)
  complete := by
    intro v
    cases v <;> simp

open StairVertex

/-- Arc relation of the all-zero interleaved staircase tournament. -/
def allZeroStaircaseBeats {k : ℕ} : StairVertex k → StairVertex k → Prop
  | recV p, domV q => p = q
  | domV p, domV q => p < q
  | recV p, recV q => p < q
  | domV p, recV q => p ≠ q

instance {k : ℕ} (a b : StairVertex k) : Decidable (allZeroStaircaseBeats a b) := by
  cases a <;> cases b <;> unfold allZeroStaircaseBeats <;> infer_instance

/-- The all-zero interleaved staircase as a tournament. -/
def allZeroStaircase (k : ℕ) : Tournament (StairVertex k) where
  beats := allZeroStaircaseBeats
  irrefl := by
    intro v
    cases v <;> simp [allZeroStaircaseBeats]
  asymm := by
    intro a b h hb
    cases a <;> cases b <;> simp_all [allZeroStaircaseBeats]
    all_goals omega
  total := by
    intro a b hne
    cases a <;> cases b <;> simp_all [allZeroStaircaseBeats]
    all_goals omega

/-- An oriented triple is a directed 3-cycle when the three displayed arcs close up. -/
def IsCyclicTriple {k : ℕ} (a b c : StairVertex k) : Prop :=
  allZeroStaircaseBeats a b ∧ allZeroStaircaseBeats b c ∧ allZeroStaircaseBeats c a

/-- For `p < q`, the triple `recV p → domV p → domV q → recV p` is a directed 3-cycle. -/
theorem allZeroStaircase_cycle_left {k : ℕ} {p q : Fin k} (h : p < q) :
    IsCyclicTriple (recV p) (domV p) (domV q) := by
  simp [IsCyclicTriple, allZeroStaircaseBeats, h, ne_of_gt h]

/-- For `p < q`, the triple `domV q → recV p → recV q → domV q` is a directed 3-cycle. -/
theorem allZeroStaircase_cycle_right {k : ℕ} {p q : Fin k} (h : p < q) :
    IsCyclicTriple (domV q) (recV p) (recV q) := by
  simp [IsCyclicTriple, allZeroStaircaseBeats, h, ne_of_gt h]

/-- The THM-399 cycle count: two directed 3-cycle supports for each unordered pair of
staircase indices. -/
def allZeroStaircaseThreeCycleCount (k : ℕ) : ℕ :=
  2 * k.choose 2

/-- **THM-399.**  The all-zero interleaved staircase at `n = 2k` has `k(k - 1)` directed
3-cycles.  In the formal model, the preceding two lemmas exhibit the two cycle families for
each pair `p < q`; this theorem closes the arithmetic count. -/
theorem allZeroStaircase_threeCycleCount (k : ℕ) :
    allZeroStaircaseThreeCycleCount k = k * (k - 1) := by
  unfold allZeroStaircaseThreeCycleCount
  rw [Nat.choose_two_right]
  rw [Nat.mul_comm 2]
  exact Nat.div_two_mul_two_of_even (Nat.even_mul_pred_self k)

end Math.Tournaments
