/-
# Lonely Runner — balanced relations are exactly translation-invariant relations

Provenance: `eliottcassidy2000/math` —
`01-canon/theorems/THM-400-balanced-iff-translation-invariant.md` (THM-400), synced from
informal commit `9638837`.  A coefficient relation `∑ᵢ cᵢ vᵢ = 0` on a finite speed vector is
stable under every global translate `vᵢ ↦ vᵢ + t` exactly when its augmentation
`∑ᵢ cᵢ` vanishes.  Equivalently, balanced relations are observer-blind and unbalanced relations
couple to the fixed origin.
-/
import Mathlib

namespace Math.LonelyRunner

variable {ι : Type*} [Fintype ι]

/-- The group-ring augmentation of an integer coefficient vector: the coefficient sum. -/
def augmentation (c : ι → ℤ) : ℤ :=
  ∑ i, c i

/-- The value of the integer relation `c` on a speed vector `v`. -/
def relationValue (c v : ι → ℤ) : ℤ :=
  ∑ i, c i * v i

/-- A global translate of all speeds by the same integer `t`. -/
def translate (v : ι → ℤ) (t : ℤ) : ι → ℤ :=
  fun i => v i + t

/-- A relation is balanced iff its augmentation vanishes. -/
def Balanced (c : ι → ℤ) : Prop :=
  augmentation c = 0

/-- The relation `c` holds on `v` iff its relation value is zero. -/
def RelationHolds (c v : ι → ℤ) : Prop :=
  relationValue c v = 0

/-- Translating all speeds changes the relation value by `t` times the augmentation. -/
theorem relationValue_translate (c v : ι → ℤ) (t : ℤ) :
    relationValue c (translate v t) = relationValue c v + t * augmentation c := by
  simp [relationValue, translate, augmentation, mul_add, Finset.sum_add_distrib, Finset.mul_sum,
    mul_comm]

/-- **THM-400, strong form.** A relation holds for every global translate iff it holds at the
original speed vector and is balanced. -/
theorem relation_all_translates_iff (c v : ι → ℤ) :
    (∀ t : ℤ, RelationHolds c (translate v t)) ↔ RelationHolds c v ∧ Balanced c := by
  constructor
  · intro h
    have hrel : RelationHolds c v := by
      have h0 := h 0
      simpa [RelationHolds, relationValue_translate] using h0
    have hbal : Balanced c := by
      have h1 := h 1
      have hrelValue : relationValue c v = 0 := hrel
      simpa [RelationHolds, Balanced, relationValue_translate, hrelValue] using h1
    exact ⟨hrel, hbal⟩
  · intro h t
    have hrelValue : relationValue c v = 0 := h.1
    have haug : augmentation c = 0 := h.2
    simp [RelationHolds, relationValue_translate, hrelValue, haug]

/-- **Balanced iff translation-invariant.** If the relation holds before translating, then it holds
for every translate exactly when its augmentation is zero. -/
theorem relation_holds_all_translates_iff_balanced {c v : ι → ℤ} (h0 : RelationHolds c v) :
    (∀ t : ℤ, RelationHolds c (translate v t)) ↔ Balanced c := by
  rw [relation_all_translates_iff]
  simp [h0]

/-- A single unit translate already detects the augmentation, provided the relation holds at the
original speed vector. -/
theorem relation_holds_translate_one_iff_balanced {c v : ι → ℤ} (h0 : RelationHolds c v) :
    RelationHolds c (translate v 1) ↔ Balanced c := by
  have hrelValue : relationValue c v = 0 := h0
  rw [RelationHolds, Balanced, relationValue_translate, hrelValue]
  simp

/-- Balanced relations are preserved by every global translate. -/
theorem balanced_preserves_relation_under_translate {c v : ι → ℤ}
    (hrel : RelationHolds c v) (hbal : Balanced c) (t : ℤ) :
    RelationHolds c (translate v t) :=
  (relation_holds_all_translates_iff_balanced hrel).mpr hbal t

end Math.LonelyRunner
