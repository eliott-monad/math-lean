/-
# The Rado graph as a tournament: the Paley/QR tournament on 𝔽₇, and the antipodal swap

Provenance: `eliottcassidy2000/math` — HYP-2316 (S638).  The countable **random tournament** (the
tournament Fraïssé limit / "the Rado graph as a tournament") is the unique homogeneous universal
tournament; it is **self-converse** — reversing every arc gives an isomorphic tournament.  Reversal is
exactly "**a loop of the input swaps the two outputs**": it exchanges, at every vertex, its out-set and
its in-set.  This is the project's involution `σ : v ↦ -v` (complement / CM conjugation / antipodal
map, HYP-2185) seen on the universal object.

This file formalizes the **finite avatar** on the arc's magic prime `7 = Φ₃(2) = N(3+ω)` (S628/S637):
the **Paley (quadratic-residue) tournament** on `ℤ/7`.  Its connection set is the set of nonzero
squares `{1, 2, 4}` mod 7 — which is *exactly the group of cube roots of unity* `μ₃(𝔽₇)`
(`x³ = 1 ⟺ x ∈ {1,2,4}`), since `(7−1)/2 = 3` makes the QR subgroup equal the order-3 cube-root group,
and `2, 4` are the two primitive cube roots (S637).  Because `7 ≡ 3 (mod 4)`, `-1` is a **non**-residue,
so the residues and their negatives partition `𝔽₇* = QR ⊔ (-QR)` — that disjointness is *precisely* the
tournament property (for `x ≠ y`, exactly one of `x→y`, `y→x`).  And the antipode `σ : x ↦ -x` sends each
arc to its reverse (`paleyAdj (-x) (-y) ↔ paleyAdj y x`): the **loop `σ` swaps the two outputs**, the
finite shadow of the self-converseness of the universal tournament.

So the smallest nontrivial vertex-transitive self-converse tournament — the finite approximation to the
"Rado tournament" — has its arcs defined by *"the difference is a cube root of unity."*  The cube root
`ω` the whole arc converges on literally orients the edges.
-/
import Mathlib

namespace Math.Tournaments

/-- The Paley connection set mod 7: the nonzero quadratic residues `{1, 2, 4}`. -/
def paleySet : Finset (ZMod 7) := {1, 2, 4}

/-- The Paley/quadratic-residue tournament on `𝔽₇`: `x` beats `y` iff `x - y` is a nonzero square. -/
def paleyAdj (x y : ZMod 7) : Prop := (x - y) ∈ paleySet

instance : DecidableRel paleyAdj :=
  fun x y => inferInstanceAs (Decidable ((x - y) ∈ paleySet))

/-- **The connection set is the group of cube roots of unity.**  `x` is a Paley residue iff `x³ = 1`:
`{1, 2, 4} = μ₃(𝔽₇)`.  The Paley tournament orients an arc exactly when the difference is a cube root
of unity — the `ω`-resonance of the whole arc (`2, 4` are the primitive cube roots, S637). -/
theorem paleySet_eq_cube_roots (x : ZMod 7) : x ∈ paleySet ↔ x ^ 3 = 1 := by revert x; decide

/-- **`-1` is a non-residue (because `7 ≡ 3 mod 4`).**  This is the structural reason the Paley digraph
is a *tournament*: `-1 ∉ QR` forces `QR` and `-QR` to be disjoint. -/
theorem neg_one_not_residue : (-1 : ZMod 7) ∉ paleySet := by decide

/-- **Tournament property, irreflexivity.**  No vertex beats itself (`0 ∉ {1,2,4}`). -/
theorem paley_irrefl (x : ZMod 7) : ¬ paleyAdj x x := by revert x; decide

/-- **Tournament property, totality.**  Any two distinct vertices are comparable. -/
theorem paley_total (x y : ZMod 7) (h : x ≠ y) : paleyAdj x y ∨ paleyAdj y x := by
  revert h; revert x y; decide

/-- **Tournament property, asymmetry.**  At most one of `x→y`, `y→x` holds.  Together with `paley_total`
this says `paleyAdj` is a tournament: `𝔽₇ = QR ⊔ (-QR)`. -/
theorem paley_asymm (x y : ZMod 7) : paleyAdj x y → ¬ paleyAdj y x := by
  revert x y; decide

/-- **The antipodal loop swaps the two outputs.**  The involution `σ : x ↦ -x` (the project's `v ↦ -v`)
sends every arc to its reverse: `(-x)` beats `(-y)` iff `y` beats `x`.  So `σ` is an *anti-automorphism*
— it exchanges each vertex's out-set and in-set — the finite realization of the universal tournament's
self-converseness ("a loop of the input causes a swap of the two outputs"). -/
theorem paley_antipode_converse (x y : ZMod 7) :
    paleyAdj (-x) (-y) ↔ paleyAdj y x := by
  revert x y; decide

/-- `σ` is an involution: looping twice returns the input (`-(-x) = x`). -/
theorem antipode_involutive (x : ZMod 7) : - -x = x := by ring

end Math.Tournaments
