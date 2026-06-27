/-
# Skew-Sylvester doubling of tournaments

Provenance: `eliottcassidy2000/math` —
`01-canon/theorems/THM-447-skew-sylvester-doubling.md`.

THM-447 defines the doubled dominance matrix

```
M' = [ M     M+I ]
     [ M-I   -M  ]
```

for a tournament dominance matrix `M`.  This file formalizes the first structural
claim: the construction is again a valid tournament dominance sign matrix, hence
defines a tournament on two labeled copies of the vertex set.
-/
import Math.Tournaments.Basic

namespace Math.Tournaments

namespace SkewSylvester

variable {V : Type*}

/-- The THM-447 skew-Sylvester doubled sign matrix, indexed by two copies of the
vertex set.  On off-diagonal cross-copy pairs it is a copy of `σ`; on twin pairs
the upper copy beats the lower copy; the lower-lower block is negated. -/
def doubleSign [DecidableEq V] (σ : V → V → ℤ) : V ⊕ V → V ⊕ V → ℤ
  | Sum.inl a, Sum.inl b => σ a b
  | Sum.inl a, Sum.inr b => if a = b then 1 else σ a b
  | Sum.inr a, Sum.inl b => if a = b then -1 else σ a b
  | Sum.inr a, Sum.inr b => -σ a b

@[simp] theorem doubleSign_inl_inl [DecidableEq V] (σ : V → V → ℤ) (a b : V) :
    doubleSign σ (Sum.inl a) (Sum.inl b) = σ a b := rfl

@[simp] theorem doubleSign_inl_inr [DecidableEq V] (σ : V → V → ℤ) (a b : V) :
    doubleSign σ (Sum.inl a) (Sum.inr b) = if a = b then 1 else σ a b := rfl

@[simp] theorem doubleSign_inr_inl [DecidableEq V] (σ : V → V → ℤ) (a b : V) :
    doubleSign σ (Sum.inr a) (Sum.inl b) = if a = b then -1 else σ a b := rfl

@[simp] theorem doubleSign_inr_inr [DecidableEq V] (σ : V → V → ℤ) (a b : V) :
    doubleSign σ (Sum.inr a) (Sum.inr b) = -σ a b := rfl

/-- The doubled sign matrix has zero diagonal whenever the original sign matrix does. -/
theorem doubleSign_diag [DecidableEq V] {σ : V → V → ℤ} (hdiag : ∀ a, σ a a = 0) :
    ∀ x : V ⊕ V, doubleSign σ x x = 0 := by
  intro x
  cases x with
  | inl a => exact hdiag a
  | inr a => simp [hdiag a]

/-- The doubled sign matrix remains skew-symmetric. -/
theorem doubleSign_skew [DecidableEq V] {σ : V → V → ℤ}
    (hskew : ∀ {a b}, a ≠ b → σ b a = -σ a b) :
    ∀ {x y : V ⊕ V}, x ≠ y → doubleSign σ y x = -doubleSign σ x y := by
  intro x y hxy
  cases x with
  | inl a =>
      cases y with
      | inl b =>
          have hab : a ≠ b := fun h => hxy (by rw [h])
          exact hskew hab
      | inr b =>
          by_cases h : a = b
          · subst b
            simp
          · have hba : b ≠ a := Ne.symm h
            rw [doubleSign_inr_inl, doubleSign_inl_inr, if_neg hba, if_neg h, hskew h]
  | inr a =>
      cases y with
      | inl b =>
          by_cases h : a = b
          · subst b
            simp
          · have hba : b ≠ a := Ne.symm h
            rw [doubleSign_inl_inr, doubleSign_inr_inl, if_neg hba, if_neg h, hskew h]
      | inr b =>
          have hab : a ≠ b := fun h => hxy (by rw [h])
          rw [doubleSign_inr_inr, doubleSign_inr_inr, hskew hab]

/-- Off the diagonal, every doubled sign is still `+1` or `-1`. -/
theorem doubleSign_offdiag [DecidableEq V] {σ : V → V → ℤ}
    (hoff : ∀ {a b}, a ≠ b → σ a b = 1 ∨ σ a b = -1) :
    ∀ {x y : V ⊕ V}, x ≠ y → doubleSign σ x y = 1 ∨ doubleSign σ x y = -1 := by
  intro x y hxy
  cases x with
  | inl a =>
      cases y with
      | inl b =>
          have hab : a ≠ b := fun h => hxy (by rw [h])
          exact hoff hab
      | inr b =>
          by_cases h : a = b
          · left
            simp [h]
          · simpa [h] using hoff h
  | inr a =>
      cases y with
      | inl b =>
          by_cases h : a = b
          · right
            simp [h]
          · simpa [h] using hoff h
      | inr b =>
          have hab : a ≠ b := fun h => hxy (by rw [h])
          rcases hoff hab with hs | hs
          · right
            simp [hs]
          · left
            simp [hs]

/-- The skew-Sylvester double of a tournament: two copies of the vertex set, three
blocks oriented as in the original tournament, and the lower-lower block oriented
oppositely, with each upper vertex beating its lower twin. -/
def double (T : Tournament V) [DecidableEq V] [DecidableRel T.beats] : Tournament (V ⊕ V) :=
  tournamentOfSkewSign (doubleSign T.signedAdj)
    (doubleSign_diag T.signedAdj_self)
    (doubleSign_skew fun h => T.signedAdj_swap h)
    (doubleSign_offdiag fun h => T.signedAdj_eq_one_or_neg_one h)

end SkewSylvester

end Math.Tournaments
