/-
# Fibbinary/Moser partial-cube carrier

Provenance: `eliottcassidy2000/math` —
`05-knowledge/hypotheses/HYP-3063-moser-fibbinary-partial-cube-simplex-geometry-carrier.md`
(HYP-3063, codex-S227/S228) and
`05-knowledge/results/lrc14_fibbinary_moser_partial_cube_codex_s228.out`.

The informal scout separates three count origins that had been used as sequence
shadows in LRC14: ordered simplex edge sectors, fibbinary/Fibonacci-cube
supports, and Moser-de Bruijn even-coordinate cubes.  This file formalizes the
finite carrier facts that do not depend on the larger LRC packet machinery:

* ordered sectors are twice the simplex `1`-face count;
* `M_m` is the powerset of the even bit positions, hence has `2^m` vertices and
  binomial layers;
* every Moser support embeds in the fibbinary support of length `2m-1`;
* the native Moser transition shifts by two bit positions, while shifting by
  one immediately exits the even-coordinate carrier.
-/

import Mathlib

namespace Math.Combinatorics

open Finset

/-- A finite binary support has no adjacent `1` bits in the first `n` positions. -/
def FibbinarySupport (n : ℕ) (s : Finset ℕ) : Prop :=
  (∀ i ∈ s, i < n) ∧ ∀ i, i ∈ s → i + 1 ∉ s

/-- The ordered sector count attached to the `1`-faces of a `(k-1)`-simplex. -/
def orderedSimplexSectors (k : ℕ) : ℕ :=
  k * (k - 1)

/-- The doubled-triangular/simplex row is twice the unordered edge count. -/
theorem orderedSimplexSectors_eq_two_choose (k : ℕ) :
    orderedSimplexSectors k = 2 * Nat.choose k 2 := by
  unfold orderedSimplexSectors
  rw [Nat.choose_two_right]
  rw [Nat.mul_comm 2]
  exact (Nat.div_two_mul_two_of_even (Nat.even_mul_pred_self k)).symm

/-- The even bit positions `0,2,...,2m-2` carrying the length-`m`
Moser-de Bruijn cube. -/
def evenCoordinateSet (m : ℕ) : Finset ℕ :=
  (Finset.range m).image fun i => 2 * i

theorem card_evenCoordinateSet (m : ℕ) : (evenCoordinateSet m).card = m := by
  unfold evenCoordinateSet
  rw [Finset.card_image_of_injective (Finset.range m) (f := fun i => 2 * i) (by
    intro a b h
    exact Nat.mul_left_cancel (by norm_num : 0 < 2) h)]
  simp

/-- `M_m`, as a finite support family, is the powerset of the even coordinates. -/
def moserSupportFamily (m : ℕ) : Finset (Finset ℕ) :=
  (evenCoordinateSet m).powerset

/-- The Moser carrier has `2^m` vertices. -/
theorem card_moserSupportFamily (m : ℕ) : (moserSupportFamily m).card = 2 ^ m := by
  simp [moserSupportFamily, card_evenCoordinateSet]

/-- The weight-`r` layer of the Moser cube. -/
def moserLayer (m r : ℕ) : Finset (Finset ℕ) :=
  (evenCoordinateSet m).powersetCard r

/-- The Moser layers are the binomial layers of an `m`-cube. -/
theorem card_moserLayer (m r : ℕ) : (moserLayer m r).card = Nat.choose m r := by
  simp [moserLayer, card_evenCoordinateSet]

/-- Every even-coordinate Moser support is a fibbinary support in the ambient
word of length `2m-1`. -/
theorem moserSupport_fibbinary {m : ℕ} (hm : 1 ≤ m) {s : Finset ℕ}
    (hs : s ∈ moserSupportFamily m) : FibbinarySupport (2 * m - 1) s := by
  have hsub : s ⊆ evenCoordinateSet m := by
    simpa [moserSupportFamily] using (Finset.mem_powerset.mp hs)
  constructor
  · intro x hx
    have hxEven : x ∈ evenCoordinateSet m := hsub hx
    rcases Finset.mem_image.mp hxEven with ⟨i, hi, rfl⟩
    simp only [Finset.mem_range] at hi
    omega
  · intro x hx hxsucc
    have hxEven : x ∈ evenCoordinateSet m := hsub hx
    have hxsuccEven : x + 1 ∈ evenCoordinateSet m := hsub hxsucc
    rcases Finset.mem_image.mp hxEven with ⟨i, hi, rfl⟩
    rcases Finset.mem_image.mp hxsuccEven with ⟨j, hj, hsucc⟩
    omega

/-- Shift a support by `d` bit positions.  Multiplication by `2^d` on the
integer sequence side corresponds to this operation on low-bit-first supports. -/
def shiftBy (d : ℕ) (s : Finset ℕ) : Finset ℕ :=
  s.image fun i => i + d

/-- Fibbinary supports are closed under the native transition `x ↦ 2x`, i.e.
append a zero low bit and shift all retained coordinates by one. -/
theorem shiftBy_one_fibbinary {n : ℕ} {s : Finset ℕ} (hs : FibbinarySupport n s) :
    FibbinarySupport (n + 1) (shiftBy 1 s) := by
  constructor
  · intro x hx
    rcases Finset.mem_image.mp hx with ⟨i, hi, rfl⟩
    exact Nat.succ_lt_succ (hs.1 i hi)
  · intro x hx hxsucc
    rcases Finset.mem_image.mp hx with ⟨i, hi, hxi⟩
    rcases Finset.mem_image.mp hxsucc with ⟨j, hj, hxj⟩
    have hij : i + 1 = j := by omega
    exact hs.2 i hi (hij ▸ hj)

/-- Moser supports are closed under their native transition `x ↦ 4x`, i.e.
shift by two bit positions and move from `M_m` to `M_{m+1}`. -/
theorem shiftBy_two_moser {m : ℕ} {s : Finset ℕ} (hs : s ∈ moserSupportFamily m) :
    shiftBy 2 s ∈ moserSupportFamily (m + 1) := by
  rw [moserSupportFamily, Finset.mem_powerset]
  intro x hx
  rcases Finset.mem_image.mp hx with ⟨a, ha, rfl⟩
  have haEven : a ∈ evenCoordinateSet m := by
    exact (Finset.mem_powerset.mp (by simpa [moserSupportFamily] using hs)) ha
  rcases Finset.mem_image.mp haEven with ⟨i, hi, rfl⟩
  rw [evenCoordinateSet]
  refine Finset.mem_image.mpr ⟨i + 1, ?_, by omega⟩
  simp only [Finset.mem_range] at hi ⊢
  omega

/-- A one-bit shift immediately leaves the Moser even-coordinate carrier.  This
is the formal version of the S228 warning that the Moser sequence is not closed
under `x ↦ 2x` unless the even/odd bit phase is retained. -/
theorem singleton_one_not_moserSupportFamily_two :
    ({1} : Finset ℕ) ∉ moserSupportFamily 2 := by
  intro h
  have hsub : ({1} : Finset ℕ) ⊆ evenCoordinateSet 2 := by
    simpa [moserSupportFamily] using (Finset.mem_powerset.mp h)
  have hOne : 1 ∈ evenCoordinateSet 2 := hsub (by simp)
  simp [evenCoordinateSet] at hOne

/-- The exact finite carrier package from the S228 scout: ordered simplex
sectors have their doubled-edge origin, and every `M_m` is a binomial-layered
even-coordinate cube inside the ambient fibbinary support. -/
theorem moser_fibbinary_partial_cube_carrier (m : ℕ) (hm : 1 ≤ m) :
    (moserSupportFamily m).card = 2 ^ m ∧
      (∀ r : ℕ, (moserLayer m r).card = Nat.choose m r) ∧
      (∀ s ∈ moserSupportFamily m, FibbinarySupport (2 * m - 1) s) := by
  exact ⟨card_moserSupportFamily m, card_moserLayer m, fun s hs =>
    moserSupport_fibbinary hm hs⟩

/-- The first count collision emphasized by the scout: the number `20` is both
the ordered-sector count for `k = 5` and the listed `Γ₅` Fibonacci-cube edge
count.  The theorem records the sector origin; the Fibonacci edge count belongs
to the retained sidecar data, not to this scalar alone. -/
theorem orderedSimplexSectors_five : orderedSimplexSectors 5 = 20 := by
  decide

/-- The second count collision emphasized by the scout: the number `12` is the
ordered-sector count for `k = 4`, while also appearing as the `M₃` cube edge
count in the computation. -/
theorem orderedSimplexSectors_four : orderedSimplexSectors 4 = 12 := by
  decide

end Math.Combinatorics
