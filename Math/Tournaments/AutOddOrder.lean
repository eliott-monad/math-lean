/-
# Tournaments have no involution-automorphism: the perspective side is solvable (Feit–Thompson),
# the dual of the polynomial side being unsolvable (Abel–Ruffini)

Provenance: `eliottcassidy2000/math` — HYP-2321 (S643).  Answering the S642 open thread: is the
LRC/tournament "shell-tower" a *solvable*-group filtration?  **Yes — and structurally so.**

A polynomial's roots carry the *full symmetric group* `Sₙ` (its Galois/monodromy group generically),
which is **unsolvable** for `n ≥ 5` (Abel–Ruffini, S642).  A tournament's "perspectives" carry its
**automorphism group**, and a tournament has **no automorphism of order 2**: an involution would have to
swap two vertices `v, w` and hence reverse the single arc between them, impossible in a tournament.  So
`|Aut(T)|` is **odd** (Cauchy), hence **solvable** (Feit–Thompson), and in fact `Aut(T) ⊆ Aₙ` (odd-order
permutations are even).  The arc's involution `σ : v ↦ -v` (the antipodal swap, S638) is exactly what is
forbidden as an automorphism — it is the *converse* (an anti-automorphism), living outside `Aut(T)`.

So the two great solvability theorems bracket the roots↔perspectives duality (FTA, HYP-2275):
**Abel–Ruffini** kills the polynomial side (`Sₙ`, `n ≥ 5`), **Feit–Thompson** saves the tournament side
(`Aut(T)` odd ⇒ solvable).  The cube-root resonance (`Φ₃`, the forbidden `7`/`21`) appears here too:
`Aut(Paley₇) = ℤ/7 ⋊ ℤ/3`, order `21` (the forbidden value!), a *solvable* tower whose `ℤ/3` layer is the
doubling `⟨2⟩` (the cube root, S640) — a concrete solvable filtration, not a perfect group.

This file formalizes the heart: **no tournament automorphism has order 2.**
-/
import Mathlib

namespace Math.Tournaments

open Equiv

variable {V : Type*}

/-- **No involution-automorphism.**  If `σ` preserves the tournament relation `beats` (irreflexive and,
off the diagonal, exactly one direction holds) and `σ² = 1`, then `σ = 1`.  An order-2 automorphism would
swap two vertices and reverse the one arc between them — impossible. -/
theorem tournament_no_involution (beats : V → V → Prop)
    (htour : ∀ v w, v ≠ w → (beats v w ↔ ¬ beats w v))
    (σ : Perm V) (hpres : ∀ v w, beats (σ v) (σ w) ↔ beats v w)
    (hinv : σ * σ = 1) : σ = 1 := by
  by_contra hne
  obtain ⟨v, hv⟩ : ∃ v, σ v ≠ v := by
    by_contra h
    push_neg at h
    exact hne (Equiv.ext fun x => by simpa using h x)
  have hσσ : σ (σ v) = v := by
    have h : (σ * σ) v = v := by rw [hinv]; rfl
    simpa [Equiv.Perm.mul_apply] using h
  have hvw : v ≠ σ v := fun h => hv h.symm
  have e1 : beats (σ v) v ↔ beats v (σ v) := by
    have h := hpres v (σ v)
    rwa [hσσ] at h
  have e2 : beats v (σ v) ↔ ¬ beats (σ v) v := htour v (σ v) hvw
  exact iff_not_self (e1.trans e2)

/-- The automorphism group of a tournament, as a subgroup of `Perm V`. -/
def autGroup (beats : V → V → Prop) : Subgroup (Perm V) where
  carrier := {σ | ∀ v w, beats (σ v) (σ w) ↔ beats v w}
  one_mem' := fun v w => by simp
  mul_mem' := fun {a b} ha hb v w => by
    simp only [Equiv.Perm.mul_apply]
    exact (ha (b v) (b w)).trans (hb v w)
  inv_mem' := fun {a} ha v w => by
    have e1 : a (a⁻¹ v) = v := Equiv.apply_symm_apply a v
    have e2 : a (a⁻¹ w) = w := Equiv.apply_symm_apply a w
    have h := ha (a⁻¹ v) (a⁻¹ w)
    rw [e1, e2] at h
    exact h.symm

/-- **No element of order 2 in `Aut(T)`.**  Hence (for finite `V`, by Cauchy) `|Aut(T)|` is odd, hence
(Feit–Thompson) `Aut(T)` is solvable — the perspective side of the arc never produces an `A₅`. -/
theorem autGroup_orderOf_ne_two (beats : V → V → Prop)
    (htour : ∀ v w, v ≠ w → (beats v w ↔ ¬ beats w v))
    {σ : Perm V} (hσ : σ ∈ autGroup beats) : orderOf σ ≠ 2 := by
  intro h
  have h2 : σ * σ = 1 := by
    have hp := pow_orderOf_eq_one σ
    rw [h] at hp
    simpa [pow_two] using hp
  have hne : σ ≠ 1 := by
    intro hh
    rw [hh, orderOf_one] at h
    exact absurd h (by norm_num)
  exact hne (tournament_no_involution beats htour σ hσ h2)

end Math.Tournaments
