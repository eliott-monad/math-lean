/-
# Recursive fourth representation face

Provenance: `eliottcassidy2000/math` commit `53e7178`, S672,
`05-knowledge/results/recursive_fourth_face_coloring_s672.out` and
`07-reflections/recursive-fourth-face-coloring-s672.md`.

S672 refines the older `sum -> product -> fraction -> sum` diagnostic into a
four-face carrier:

* `sum`: aggregate the visible packets;
* `product`: localize obstruction factors;
* `fraction`: retain boundary/address state;
* `recursion`: prove how that state evolves under extension, descent, or
  iteration.

The finite formal shadow is the face tournament computed in S672: the useful
proof-route order is the strict chain
`recursion > fraction > product > sum > raw_scalar`.
-/
import Mathlib

namespace Math.Foundations

/-- Representation faces in the S672 carrier atlas. -/
inductive RepresentationFace where
  | rawScalar
  | sum
  | product
  | fraction
  | recursion
  deriving DecidableEq, Fintype, Repr

namespace RepresentationFace

/-- The S672 tournament score.  Higher score means the face retains more of the
uniform proof object. -/
def score : RepresentationFace -> Nat
  | rawScalar => 0
  | sum => 1
  | product => 2
  | fraction => 3
  | recursion => 4

/-- The face tournament edge relation from S672. -/
def Beats (a b : RepresentationFace) : Prop := score b < score a

/-- The unique score-descending order reported by the S672 face tournament. -/
def topOrder : List RepresentationFace :=
  [recursion, fraction, product, sum, rawScalar]

/-- Scores separate the five representation faces. -/
theorem score_injective : Function.Injective score := by
  intro a b h
  cases a <;> cases b <;> simp [score] at h ⊢

/-- The S672 scores are exactly `0,1,2,3,4`. -/
theorem score_range : Finset.univ.image score = Finset.Icc 0 4 := by
  decide

/-- The face tournament is total on distinct faces. -/
theorem beats_total (a b : RepresentationFace) (h : a ≠ b) : Beats a b ∨ Beats b a := by
  unfold Beats
  have hs : score a ≠ score b := by
    intro hs
    exact h (score_injective hs)
  omega

/-- The face tournament is acyclic; equivalently, the S672 score tournament has
no directed 3-cycles. -/
theorem no_directed_three_cycles :
    ¬ ∃ a b c : RepresentationFace, Beats a b ∧ Beats b c ∧ Beats c a := by
  rintro ⟨a, b, c, hab, hbc, hca⟩
  unfold Beats at *
  omega

/-- The computed S672 top order:
`recursion > fraction > product > sum > raw_scalar`. -/
theorem top_order_chain :
    Beats recursion fraction ∧
      Beats fraction product ∧
      Beats product sum ∧
      Beats sum rawScalar := by
  norm_num [Beats, score]

/-- The displayed top order contains each face exactly once. -/
theorem topOrder_nodup : topOrder.Nodup := by
  decide

/-- The displayed top order lists all representation faces. -/
theorem topOrder_complete : topOrder.toFinset = Finset.univ := by
  decide

/-- The old trinity closes at `fraction`; S672 inserts `recursion` as the
transition law before unrolling back to the next additive ledger. -/
def recursiveLoopNext : RepresentationFace -> RepresentationFace
  | sum => product
  | product => fraction
  | fraction => recursion
  | recursion => sum
  | rawScalar => sum

/-- Formal version of the S672 grammar
`sum -> product -> fraction -> recursion -> sum`. -/
theorem recursive_fourth_loop :
    recursiveLoopNext sum = product ∧
      recursiveLoopNext product = fraction ∧
      recursiveLoopNext fraction = recursion ∧
      recursiveLoopNext recursion = sum := by
  decide

/-- In the S672 carrier, boundary state and transition law are distinct, and
the transition law is ranked above the state it evolves. -/
theorem recursion_strictly_refines_fraction :
    fraction ≠ recursion ∧ Beats recursion fraction := by
  constructor
  · decide
  · norm_num [Beats, score]

end RepresentationFace

end Math.Foundations
