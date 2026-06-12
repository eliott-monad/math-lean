/-
# Hamiltonian paths in tournaments — H(T)

Provenance: `eliottcassidy2000/math` — Hamiltonian path counts H(T), Rédei's theorem,
OEIS sequences for path counts.

Target results to formalize here (currently stubs — see `candidates/`):
- Rédei's theorem: every tournament has at least one Hamiltonian path (and an odd number).
- The H(T) path-count statistics studied informally in the math repo.
- Forward-edge reversal symmetry (`01-canon/theorems/THM-091-fwd-symmetry.md`).

The skeleton imports the `Tournament` definition; the formalizer agent fills in proofs,
each linked to its informal source. Keep this module `sorry`-free: only commit a result
once its proof compiles.
-/
import Math.Tournaments.Basic

namespace Math.Tournaments

namespace Tournament

section ForwardEdges

variable {V : Type*} (T : Tournament V) [DecidableRel T.beats]

/-- The number of adjacent forward edges along a listed traversal. -/
def forwardEdgeCount : List V → ℕ
  | [] => 0
  | [_] => 0
  | a :: b :: xs => (if T.beats a b then 1 else 0) + forwardEdgeCount (b :: xs)

/-- The number of adjacent backward edges along a listed traversal. This is the
forward-edge count of the reversed traversal, expressed without reindexing the list. -/
def backwardEdgeCount : List V → ℕ
  | [] => 0
  | [_] => 0
  | a :: b :: xs => (if T.beats b a then 1 else 0) + backwardEdgeCount (b :: xs)

/-- For each distinct adjacent pair, exactly one of the two directions is forward. -/
theorem forward_backward_pair {a b : V} (hne : a ≠ b) :
    (if T.beats a b then 1 else 0) + (if T.beats b a then 1 else 0) = 1 := by
  rcases T.total a b hne with hab | hba
  · have hnot : ¬ T.beats b a := T.asymm a b hab
    simp [hab, hnot]
  · have hnot : ¬ T.beats a b := T.asymm b a hba
    simp [hba, hnot]

/-- **Forward-edge reversal core (THM-091).** Along any simple listed traversal in a
tournament, the number of forward adjacent edges plus the number of backward adjacent
edges is exactly the number of adjacent slots.  For a Hamiltonian ordering `p`, the
backward count is the forward count of `p.reverse`, giving
`fwd(p) + fwd(p.reverse) = |p| - 1`, the involutive symmetry behind THM-091. -/
theorem forward_backward_count_add :
    ∀ p : List V, p.Nodup →
      T.forwardEdgeCount p + T.backwardEdgeCount p = p.length - 1
  | [], _ => by simp [forwardEdgeCount, backwardEdgeCount]
  | [_], _ => by simp [forwardEdgeCount, backwardEdgeCount]
  | a :: b :: xs, hnodup => by
      have hne : a ≠ b := by
        intro hEq
        subst hEq
        simp at hnodup
      have htail : (b :: xs).Nodup := hnodup.tail
      have ih := forward_backward_count_add (b :: xs) htail
      have hp := T.forward_backward_pair hne
      have htarget : (a :: b :: xs).length - 1 = (b :: xs).length := by simp
      rw [htarget]
      change ((if T.beats a b then 1 else 0) + T.forwardEdgeCount (b :: xs)) +
          ((if T.beats b a then 1 else 0) + T.backwardEdgeCount (b :: xs)) =
        (b :: xs).length
      calc
        ((if T.beats a b then 1 else 0) + T.forwardEdgeCount (b :: xs)) +
            ((if T.beats b a then 1 else 0) + T.backwardEdgeCount (b :: xs))
            = ((if T.beats a b then 1 else 0) + (if T.beats b a then 1 else 0)) +
                (T.forwardEdgeCount (b :: xs) + T.backwardEdgeCount (b :: xs)) := by
          ac_rfl
        _ = 1 + ((b :: xs).length - 1) := by rw [hp, ih]
        _ = (b :: xs).length := by simp [Nat.add_comm]

end ForwardEdges

end Tournament

end Math.Tournaments
