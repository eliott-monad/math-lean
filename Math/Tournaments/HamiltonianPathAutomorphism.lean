/-
# Automorphisms act freely on directed Hamiltonian vertex orders

Provenance: `eliottcassidy2000/math` -
`01-canon/theorems/LEM-003-aut-acts-freely-on-ham-paths.md`.

The informal lemma is stated for directed Hamiltonian paths as arc sets.  This file
formalizes the representation used by `Math.Tournaments.HamiltonianPaths`: a
Hamiltonian path is a vertex order whose adjacent pairs are arcs.  In this
representation the freeness statement is especially direct: a permutation fixing a
spanning nodup order pointwise as a list fixes every vertex.
-/
import Math.Tournaments.SelfConverse

namespace Math.Tournaments

namespace Tournament

section ListRigidity

variable {V : Type*} {σ : Equiv.Perm V}

/-- If a permutation fixes a nodup list as a list, then it fixes every element of
that list.  This is the order-rigidity core of LEM-003 for vertex-order paths. -/
theorem map_eq_self_fix_mem :
    ∀ {p : List V}, p.Nodup → p.map σ = p → ∀ v ∈ p, σ v = v
  | [], _hnodup, _hfix, v, hv => by cases hv
  | a :: p, hnodup, hfix, v, hv => by
      simp only [List.map_cons, List.cons.injEq] at hfix
      rcases hfix with ⟨ha, hp⟩
      simp only [List.mem_cons] at hv
      rcases hv with hv | hv
      · rw [hv]
        exact ha
      · exact map_eq_self_fix_mem hnodup.tail hp v hv

/-- A permutation fixing a spanning nodup order is the identity. -/
theorem eq_one_of_map_eq_self_of_spanning {p : List V}
    (hnodup : p.Nodup) (hspan : ∀ v : V, v ∈ p) (hfix : p.map σ = p) :
    σ = 1 := by
  ext v
  exact map_eq_self_fix_mem hnodup hfix v (hspan v)

end ListRigidity

section AutomorphismAction

variable {V : Type*} {T : Tournament V} {σ : Equiv.Perm V}

/-- Relabeling a directed path by an automorphism preserves its directed-chain
condition. -/
theorem isChain_map_of_isAutomorphism (hσ : IsAutomorphism T σ) :
    ∀ {p : List V}, p.IsChain T.beats → (p.map σ).IsChain T.beats
  | [], _hp => by simp
  | [_], _hp => by simp
  | a :: b :: p, hp => by
      simp only [List.map_cons, List.isChain_cons_cons] at hp ⊢
      exact ⟨(hσ a b).mp hp.1, isChain_map_of_isAutomorphism hσ hp.2⟩

/-- **LEM-003, ordered-path freeness.**  For the Hamiltonian-path representation
used by `hamiltonianPathCount`, any automorphism that fixes a spanning directed
Hamiltonian vertex order is the identity. -/
theorem automorphism_fixed_hamiltonian_order_is_id (_hσ : IsAutomorphism T σ)
    {p : List V} (_hchain : p.IsChain T.beats) (hnodup : p.Nodup)
    (hspan : ∀ v : V, v ∈ p) (hfix : p.map σ = p) :
    σ = 1 :=
  eq_one_of_map_eq_self_of_spanning hnodup hspan hfix

end AutomorphismAction

end Tournament

end Math.Tournaments
