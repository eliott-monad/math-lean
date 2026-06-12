/-
# Hamiltonian paths in tournaments — H(T)

Provenance: `eliottcassidy2000/math` — Hamiltonian path counts H(T), Rédei's theorem,
OEIS sequences for path counts.

Target results to formalize here (currently stubs — see `candidates/`):
- Rédei's theorem: every tournament has at least one Hamiltonian path (and an odd number).
- The H(T) path-count statistics studied informally in the math repo.
- Forward-edge reversal symmetry (`01-canon/theorems/THM-091-fwd-symmetry.md`).
- Complement symmetry (`01-canon/theorems/THM-203-complement-symmetry.md`).

The skeleton imports the `Tournament` definition; the formalizer agent fills in proofs,
each linked to its informal source. Keep this module `sorry`-free: only commit a result
once its proof compiles.
-/
import Math.Tournaments.Basic

namespace Math.Tournaments

namespace Tournament

/-- The complement, or converse, tournament obtained by reversing every arc. -/
def complement {V : Type*} (T : Tournament V) : Tournament V where
  beats a b := T.beats b a
  irrefl v := T.irrefl v
  asymm a b hba hab := T.asymm b a hba hab
  total a b hne := by
    rcases T.total a b hne with hab | hba
    · exact Or.inr hab
    · exact Or.inl hba

@[simp] theorem complement_beats {V : Type*} (T : Tournament V) (a b : V) :
    T.complement.beats a b ↔ T.beats b a :=
  Iff.rfl

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

section HamiltonianCount

variable {V : Type*} (T : Tournament V)

/-- The finite set of all labeled vertex orders.  Filtering this set by adjacent
tournament compatibility gives the Hamiltonian path count `H(T)`. -/
noncomputable def vertexOrders [Fintype V] [DecidableEq V] : Finset (List V) :=
  ((Finset.univ : Finset V).toList.permutations).toFinset

/-- The Hamiltonian path count `H(T)`: the number of vertex orders whose adjacent
pairs are arcs of `T`. -/
noncomputable def hamiltonianPathCount [Fintype V] [DecidableEq V] : ℕ := by
  classical
  exact ((vertexOrders (V := V)).filter fun p => p.IsChain T.beats).card

theorem mem_vertexOrders_reverse [Fintype V] [DecidableEq V] {p : List V} :
    p.reverse ∈ vertexOrders (V := V) ↔ p ∈ vertexOrders (V := V) := by
  simp only [vertexOrders, List.mem_toFinset, List.mem_permutations, List.reverse_perm']

/-- Reversal sends directed paths in `T` to directed paths in the complement tournament. -/
theorem isChain_complement_reverse (p : List V) :
    p.reverse.IsChain T.complement.beats ↔ p.IsChain T.beats := by
  rw [List.isChain_reverse]
  rfl

/-- Reversal sends directed paths in the complement tournament back to directed paths in `T`. -/
theorem isChain_reverse_complement (p : List V) :
    p.reverse.IsChain T.beats ↔ p.IsChain T.complement.beats := by
  rw [List.isChain_reverse]
  rfl

/-- **Complement symmetry (THM-203).** Reversing a Hamiltonian order is a bijection
between Hamiltonian paths of the complement tournament and Hamiltonian paths of the
original tournament, so `H(T̄) = H(T)`. -/
theorem hamiltonianPathCount_complement [Fintype V] [DecidableEq V] :
    T.complement.hamiltonianPathCount = T.hamiltonianPathCount := by
  classical
  let s := (vertexOrders (V := V)).filter fun p => p.IsChain T.complement.beats
  let t := (vertexOrders (V := V)).filter fun p => p.IsChain T.beats
  change s.card = t.card
  refine Finset.card_bij' (s := s) (t := t)
    (fun p _ => p.reverse) (fun p _ => p.reverse) ?_ ?_ ?_ ?_
  · intro p hp
    rw [Finset.mem_filter] at hp ⊢
    exact ⟨mem_vertexOrders_reverse.mpr hp.1, (T.isChain_reverse_complement p).2 hp.2⟩
  · intro p hp
    rw [Finset.mem_filter] at hp ⊢
    exact ⟨mem_vertexOrders_reverse.mpr hp.1, (T.isChain_complement_reverse p).2 hp.2⟩
  · intro p hp
    simp
  · intro p hp
    simp

end HamiltonianCount

end Tournament

end Math.Tournaments
