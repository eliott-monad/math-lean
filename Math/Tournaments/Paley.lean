/-
# Paley tournaments

Provenance: `eliottcassidy2000/math` -
`01-canon/theorems/LEM-002-T11-sub-tournament.md`.

This file formalizes the finite score computation for the induced subtournament
`T_11 \ {0,1}` of the Paley tournament with connection set `{1,3,4,5,9}`.
-/
import Math.Tournaments.Basic

namespace Math.Tournaments

/-- The quadratic-residue connection set used for the Paley tournament `T_11`. -/
def paleyQR11 : Finset (ZMod 11) := {1, 3, 4, 5, 9}

/-- Boolean form of the Paley arc relation on `ZMod 11`. -/
def paley11BeatsBool (i j : ZMod 11) : Bool :=
  decide (j - i ∈ paleyQR11)

/-- The Paley arc relation on `ZMod 11`: `i → j` iff `j - i` is a nonzero square. -/
def paley11Beats (i j : ZMod 11) : Prop := paley11BeatsBool i j = true

instance (i j : ZMod 11) : Decidable (paley11Beats i j) := by
  unfold paley11Beats
  infer_instance

/-- The Paley tournament `T_11` on `ZMod 11`. -/
def paley11 : Tournament (ZMod 11) where
  beats := paley11Beats
  irrefl := by decide
  asymm := by decide
  total := by decide

/-- The vertex set of the induced subtournament `T_11 \ {0,1}`. -/
def paley11DeletedVertices : Finset (ZMod 11) := {2, 3, 4, 5, 6, 7, 8, 9, 10}

/-- Out-degree in the full Paley tournament `T_11`. -/
def paley11OutDegree (v : ZMod 11) : ℕ :=
  (Finset.univ.filter fun w : ZMod 11 => paley11Beats v w).card

/-- Out-degree in the induced subtournament `T_11 \ {0,1}`. -/
def paley11DeletedOutDegree (v : ZMod 11) : ℕ :=
  (paley11DeletedVertices.filter fun w : ZMod 11 => paley11Beats v w).card

/-- Every vertex of `T_11` has out-degree `5`. -/
theorem paley11_outDegree_eq_five : ∀ v : ZMod 11, paley11OutDegree v = 5 := by
  decide

/--
The score table of the induced subtournament `T_11 \ {0,1}`.

The two vertices of out-degree `5` are `4,5`; the two vertices of out-degree `3`
are `7,8`; all remaining vertices in `{2,...,10}` have out-degree `4`.
-/
theorem paley11_deleted_outDegree_table :
    paley11DeletedOutDegree 2 = 4 ∧
    paley11DeletedOutDegree 3 = 4 ∧
    paley11DeletedOutDegree 4 = 5 ∧
    paley11DeletedOutDegree 5 = 5 ∧
    paley11DeletedOutDegree 6 = 4 ∧
    paley11DeletedOutDegree 7 = 3 ∧
    paley11DeletedOutDegree 8 = 3 ∧
    paley11DeletedOutDegree 9 = 4 ∧
    paley11DeletedOutDegree 10 = 4 := by
  decide

end Math.Tournaments
