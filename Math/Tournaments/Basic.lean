/-
# Tournaments — basic definitions

Provenance: `eliottcassidy2000/math` — tournament theory canon (`01-canon/`).
A tournament is a complete directed graph: an orientation of the complete graph on `V`.

This module gives the core definition that downstream results (Hamiltonian path counts,
the formal group structure, path homology) build on.
-/
import Mathlib

namespace Math.Tournaments

/-- A tournament on a type `V`: for every ordered pair of vertices `beats a b` says `a`
beats `b`. It is irreflexive, asymmetric, and total on distinct pairs — i.e. exactly one
of `a ⟶ b`, `b ⟶ a` holds for `a ≠ b`. This is an orientation of the complete graph. -/
structure Tournament (V : Type*) where
  beats : V → V → Prop
  irrefl : ∀ v, ¬ beats v v
  asymm : ∀ a b, beats a b → ¬ beats b a
  total : ∀ a b, a ≠ b → beats a b ∨ beats b a

namespace Tournament

variable {V : Type*} (T : Tournament V)

/-- Distinct vertices are comparable: one beats the other. -/
theorem comparable {a b : V} (h : a ≠ b) : T.beats a b ∨ T.beats b a :=
  T.total a b h

end Tournament

end Math.Tournaments
