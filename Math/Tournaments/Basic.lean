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

section OddSign

variable [DecidableEq V] [DecidableRel T.beats]

/-- The skew sign matrix of a tournament: `+1` on an arc, `-1` on the reverse
arc, and `0` on the diagonal.  This is the labeled-tournament instance of the
odd-function dictionary in `LEM-004`. -/
def signedAdj (a b : V) : ℤ :=
  if T.beats a b then 1 else if a = b then 0 else -1

@[simp] theorem signedAdj_self (a : V) : T.signedAdj a a = 0 := by
  unfold signedAdj
  simp [T.irrefl a]

theorem signedAdj_eq_one_of_beats {a b : V} (h : T.beats a b) :
    T.signedAdj a b = 1 := by
  unfold signedAdj
  simp [h]

theorem signedAdj_eq_neg_one_of_not_beats {a b : V} (hne : a ≠ b) (h : ¬ T.beats a b) :
    T.signedAdj a b = -1 := by
  unfold signedAdj
  simp [h, hne]

/-- Off the diagonal, a tournament sign is always `+1` or `-1`. -/
theorem signedAdj_eq_one_or_neg_one {a b : V} (hne : a ≠ b) :
    T.signedAdj a b = 1 ∨ T.signedAdj a b = -1 := by
  by_cases h : T.beats a b
  · exact Or.inl (T.signedAdj_eq_one_of_beats h)
  · exact Or.inr (T.signedAdj_eq_neg_one_of_not_beats hne h)

/-- The tournament sign matrix is odd on ordered off-diagonal pairs:
reversing the ordered pair negates the sign. -/
theorem signedAdj_swap {a b : V} (hne : a ≠ b) :
    T.signedAdj b a = -T.signedAdj a b := by
  rcases T.total a b hne with hab | hba
  · have hnot : ¬ T.beats b a := T.asymm a b hab
    rw [T.signedAdj_eq_neg_one_of_not_beats (Ne.symm hne) hnot,
      T.signedAdj_eq_one_of_beats hab]
  · have hnot : ¬ T.beats a b := T.asymm b a hba
    rw [T.signedAdj_eq_one_of_beats hba,
      T.signedAdj_eq_neg_one_of_not_beats hne hnot]
    norm_num

end OddSign

end Tournament

/-- Conversely, a skew `±1` off-diagonal sign matrix determines a tournament by
declaring `a` to beat `b` exactly when the sign is `+1`.  This formalizes the
labeled boundary of the LEM-004 odd-function dictionary. -/
def tournamentOfSkewSign {V : Type*} (σ : V → V → ℤ)
    (hdiag : ∀ a, σ a a = 0)
    (hskew : ∀ {a b}, a ≠ b → σ b a = -σ a b)
    (hoff : ∀ {a b}, a ≠ b → σ a b = 1 ∨ σ a b = -1) : Tournament V where
  beats a b := σ a b = 1
  irrefl := by
    intro a h
    rw [hdiag a] at h
    norm_num at h
  asymm := by
    intro a b hab hba
    by_cases hne : a = b
    · rw [hne, hdiag b] at hab
      norm_num at hab
    · have hsk : σ b a = -σ a b := hskew hne
      rw [hab] at hsk
      rw [hba] at hsk
      norm_num at hsk
  total := by
    intro a b hne
    rcases hoff hne with h | h
    · exact Or.inl h
    · right
      have hsk : σ b a = -σ a b := hskew hne
      rw [h] at hsk
      norm_num at hsk
      exact hsk

end Math.Tournaments
