/-
# Moser layered slabs have explicit unit spines

Provenance: `eliottcassidy2000/math` —
`01-canon/theorems/THM-408-moser-layered-slabs-have-unit-spines.md` (THM-408,
codex-2026-06-04-S628).

The informal theorem gives two explicit ladder words in a rank-4 integer carrier.  This file
formalizes the combinatorial certificate: the listed words have the claimed lengths, contain no
repeated vertices, and every consecutive step is one of the six Moser unit-shell vectors.
-/

import Mathlib.Data.List.Chain
import Mathlib.Tactic

namespace Math.Moser

/-- Rank-4 integer coordinate vector for the Moser carrier. -/
structure Vec4 where
  x : ℤ
  y : ℤ
  z : ℤ
  w : ℤ
deriving DecidableEq, Repr

namespace Vec4

/-- Componentwise subtraction. -/
def sub (u v : Vec4) : Vec4 where
  x := u.x - v.x
  y := u.y - v.y
  z := u.z - v.z
  w := u.w - v.w

instance : Sub Vec4 := ⟨sub⟩

@[ext]
theorem ext {u v : Vec4} (hx : u.x = v.x) (hy : u.y = v.y) (hz : u.z = v.z)
    (hw : u.w = v.w) : u = v := by
  cases u
  cases v
  simp_all

@[simp]
theorem mk.inj_iff {a b c d e f g h : ℤ} :
    (Vec4.mk a b c d = Vec4.mk e f g h) ↔ a = e ∧ b = f ∧ c = g ∧ d = h := by
  constructor
  · intro h
    cases h
    simp
  · rintro ⟨rfl, rfl, rfl, rfl⟩
    rfl

@[simp] theorem sub_mk (a b c d e f g h : ℤ) :
    (Vec4.mk a b c d - Vec4.mk e f g h) =
      Vec4.mk (a - e) (b - f) (c - g) (d - h) := rfl

end Vec4

/-- The six displayed unit-shell step vectors from THM-408. -/
def UnitStep (v : Vec4) : Prop :=
  v = ⟨-1, 1, 0, 0⟩ ∨
  v = ⟨0, -1, 0, 0⟩ ∨
  v = ⟨0, 0, -1, 0⟩ ∨
  v = ⟨0, 0, 1, 0⟩ ∨
  v = ⟨0, 0, 0, -1⟩ ∨
  v = ⟨0, 0, 0, 1⟩

/-- Consecutive vertices are joined by a Moser unit step. -/
def UnitAdjacent (u v : Vec4) : Prop := UnitStep (v - u)

/-- The list is a simple path and every consecutive edge is a unit-shell edge. -/
def HamiltonianUnitSpine (path : List Vec4) : Prop :=
  path.Nodup ∧ path.IsChain UnitAdjacent

/-- The plus-layer word `W_a^+`. -/
def plusLayer (a : ℤ) : List Vec4 :=
  [⟨a, 1, 1, -1⟩, ⟨a, 1, 0, -1⟩, ⟨a, 1, 0, 0⟩, ⟨a, 1, 1, 0⟩,
   ⟨a, 0, 1, 0⟩, ⟨a, 0, 0, 0⟩, ⟨a, 0, 0, -1⟩, ⟨a, 0, 1, -1⟩]

/-- The plus cap `C^+`. -/
def plusCap : List Vec4 :=
  [⟨0, 1, 1, -1⟩, ⟨0, 1, 0, -1⟩, ⟨0, 1, 0, 0⟩,
   ⟨0, 1, 1, 0⟩, ⟨0, 0, 1, 0⟩, ⟨0, 0, 0, 0⟩]

/-- The plus slab path `P_m^+`, listed as `W_m^+, W_{m-1}^+, ..., W_1^+, C^+`. -/
def plusPath : ℕ → List Vec4
  | 0 => plusCap
  | m + 1 => plusLayer (m + 1) ++ plusPath m

/-- The minus-layer word `W_a^-`. -/
def minusLayer (a : ℤ) : List Vec4 :=
  [⟨a, 1, 0, -1⟩, ⟨a, 1, -1, -1⟩, ⟨a, 1, -1, 0⟩, ⟨a, 1, 0, 0⟩,
   ⟨a, 0, 0, 0⟩, ⟨a, 0, -1, 0⟩, ⟨a, 0, -1, -1⟩, ⟨a, 0, 0, -1⟩]

/-- The minus cap `C^-`. -/
def minusCap : List Vec4 :=
  [⟨0, 1, 0, -1⟩, ⟨0, 1, -1, -1⟩, ⟨0, 1, -1, 0⟩,
   ⟨0, 1, 0, 0⟩, ⟨0, 0, 0, 0⟩]

/-- The minus slab path `P_m^-`, listed as `W_m^-, W_{m-1}^-, ..., W_1^-, C^-`. -/
def minusPath : ℕ → List Vec4
  | 0 => minusCap
  | m + 1 => minusLayer (m + 1) ++ minusPath m

@[simp] theorem length_plusLayer (a : ℤ) : (plusLayer a).length = 8 := by
  simp [plusLayer]

@[simp] theorem length_minusLayer (a : ℤ) : (minusLayer a).length = 8 := by
  simp [minusLayer]

@[simp] theorem length_plusCap : plusCap.length = 6 := by
  simp [plusCap]

@[simp] theorem length_minusCap : minusCap.length = 5 := by
  simp [minusCap]

/-- The plus slab has `8m+6` listed vertices. -/
theorem length_plusPath (m : ℕ) : (plusPath m).length = 8 * m + 6 := by
  induction m with
  | zero => simp [plusPath]
  | succ m ih =>
      simp [plusPath, ih, Nat.mul_succ, Nat.add_comm, Nat.add_left_comm]

/-- The minus slab has `8m+5` listed vertices. -/
theorem length_minusPath (m : ℕ) : (minusPath m).length = 8 * m + 5 := by
  induction m with
  | zero => simp [minusPath]
  | succ m ih =>
      simp [minusPath, ih, Nat.mul_succ, Nat.add_comm, Nat.add_left_comm]

theorem plusLayer_nodup (a : ℤ) : (plusLayer a).Nodup := by
  simp [plusLayer]

theorem minusLayer_nodup (a : ℤ) : (minusLayer a).Nodup := by
  simp [minusLayer]

theorem plusCap_nodup : plusCap.Nodup := by
  simp [plusCap]

theorem minusCap_nodup : minusCap.Nodup := by
  simp [minusCap]

theorem mem_plusPath_x_nonneg {m : ℕ} {v : Vec4} (hv : v ∈ plusPath m) : 0 ≤ v.x := by
  induction m with
  | zero =>
      simp [plusPath, plusCap] at hv
      rcases hv with rfl | rfl | rfl | rfl | rfl | rfl <;> norm_num
  | succ m ih =>
      simp [plusPath, plusLayer] at hv
      rcases hv with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | h
      · change (0 : ℤ) ≤ ((m + 1 : ℕ) : ℤ); omega
      · change (0 : ℤ) ≤ ((m + 1 : ℕ) : ℤ); omega
      · change (0 : ℤ) ≤ ((m + 1 : ℕ) : ℤ); omega
      · change (0 : ℤ) ≤ ((m + 1 : ℕ) : ℤ); omega
      · change (0 : ℤ) ≤ ((m + 1 : ℕ) : ℤ); omega
      · change (0 : ℤ) ≤ ((m + 1 : ℕ) : ℤ); omega
      · change (0 : ℤ) ≤ ((m + 1 : ℕ) : ℤ); omega
      · change (0 : ℤ) ≤ ((m + 1 : ℕ) : ℤ); omega
      · exact ih h

theorem mem_minusPath_x_nonneg {m : ℕ} {v : Vec4} (hv : v ∈ minusPath m) : 0 ≤ v.x := by
  induction m with
  | zero =>
      simp [minusPath, minusCap] at hv
      rcases hv with rfl | rfl | rfl | rfl | rfl <;> norm_num
  | succ m ih =>
      simp [minusPath, minusLayer] at hv
      rcases hv with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | h
      · change (0 : ℤ) ≤ ((m + 1 : ℕ) : ℤ); omega
      · change (0 : ℤ) ≤ ((m + 1 : ℕ) : ℤ); omega
      · change (0 : ℤ) ≤ ((m + 1 : ℕ) : ℤ); omega
      · change (0 : ℤ) ≤ ((m + 1 : ℕ) : ℤ); omega
      · change (0 : ℤ) ≤ ((m + 1 : ℕ) : ℤ); omega
      · change (0 : ℤ) ≤ ((m + 1 : ℕ) : ℤ); omega
      · change (0 : ℤ) ≤ ((m + 1 : ℕ) : ℤ); omega
      · change (0 : ℤ) ≤ ((m + 1 : ℕ) : ℤ); omega
      · exact ih h

theorem mem_plusPath_x_le {m : ℕ} {v : Vec4} (hv : v ∈ plusPath m) : v.x ≤ (m : ℤ) := by
  induction m with
  | zero =>
      simp [plusPath, plusCap] at hv
      rcases hv with rfl | rfl | rfl | rfl | rfl | rfl <;> norm_num
  | succ m ih =>
      simp [plusPath, plusLayer] at hv
      rcases hv with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | h
      · change (((m + 1 : ℕ) : ℤ) ≤ ((m + 1 : ℕ) : ℤ)); rfl
      · change (((m + 1 : ℕ) : ℤ) ≤ ((m + 1 : ℕ) : ℤ)); rfl
      · change (((m + 1 : ℕ) : ℤ) ≤ ((m + 1 : ℕ) : ℤ)); rfl
      · change (((m + 1 : ℕ) : ℤ) ≤ ((m + 1 : ℕ) : ℤ)); rfl
      · change (((m + 1 : ℕ) : ℤ) ≤ ((m + 1 : ℕ) : ℤ)); rfl
      · change (((m + 1 : ℕ) : ℤ) ≤ ((m + 1 : ℕ) : ℤ)); rfl
      · change (((m + 1 : ℕ) : ℤ) ≤ ((m + 1 : ℕ) : ℤ)); rfl
      · change (((m + 1 : ℕ) : ℤ) ≤ ((m + 1 : ℕ) : ℤ)); rfl
      · exact le_trans (ih h) (by omega)

theorem mem_minusPath_x_le {m : ℕ} {v : Vec4} (hv : v ∈ minusPath m) : v.x ≤ (m : ℤ) := by
  induction m with
  | zero =>
      simp [minusPath, minusCap] at hv
      rcases hv with rfl | rfl | rfl | rfl | rfl <;> norm_num
  | succ m ih =>
      simp [minusPath, minusLayer] at hv
      rcases hv with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | h
      · change (((m + 1 : ℕ) : ℤ) ≤ ((m + 1 : ℕ) : ℤ)); rfl
      · change (((m + 1 : ℕ) : ℤ) ≤ ((m + 1 : ℕ) : ℤ)); rfl
      · change (((m + 1 : ℕ) : ℤ) ≤ ((m + 1 : ℕ) : ℤ)); rfl
      · change (((m + 1 : ℕ) : ℤ) ≤ ((m + 1 : ℕ) : ℤ)); rfl
      · change (((m + 1 : ℕ) : ℤ) ≤ ((m + 1 : ℕ) : ℤ)); rfl
      · change (((m + 1 : ℕ) : ℤ) ≤ ((m + 1 : ℕ) : ℤ)); rfl
      · change (((m + 1 : ℕ) : ℤ) ≤ ((m + 1 : ℕ) : ℤ)); rfl
      · change (((m + 1 : ℕ) : ℤ) ≤ ((m + 1 : ℕ) : ℤ)); rfl
      · exact le_trans (ih h) (by omega)

theorem plusLayer_disjoint_path (m : ℕ) :
    ∀ v ∈ plusLayer (m + 1 : ℕ), v ∉ plusPath m := by
  intro v hv hpath
  have hx_layer : v.x = (m + 1 : ℕ) := by
    simp [plusLayer] at hv
    rcases hv with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have hx_path := mem_plusPath_x_le hpath
  rw [hx_layer] at hx_path
  omega

theorem minusLayer_disjoint_path (m : ℕ) :
    ∀ v ∈ minusLayer (m + 1 : ℕ), v ∉ minusPath m := by
  intro v hv hpath
  have hx_layer : v.x = (m + 1 : ℕ) := by
    simp [minusLayer] at hv
    rcases hv with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have hx_path := mem_minusPath_x_le hpath
  rw [hx_layer] at hx_path
  omega

/-- The displayed plus list has no repeated vertices. -/
theorem plusPath_nodup (m : ℕ) : (plusPath m).Nodup := by
  induction m with
  | zero => simpa [plusPath] using plusCap_nodup
  | succ m ih =>
      rw [plusPath]
      exact List.Nodup.append (plusLayer_nodup _) ih (plusLayer_disjoint_path m)

/-- The displayed minus list has no repeated vertices. -/
theorem minusPath_nodup (m : ℕ) : (minusPath m).Nodup := by
  induction m with
  | zero => simpa [minusPath] using minusCap_nodup
  | succ m ih =>
      rw [minusPath]
      exact List.Nodup.append (minusLayer_nodup _) ih (minusLayer_disjoint_path m)

theorem plusLayer_chain (a : ℤ) : (plusLayer a).IsChain UnitAdjacent := by
  simp [plusLayer, UnitAdjacent, UnitStep]

theorem minusLayer_chain (a : ℤ) : (minusLayer a).IsChain UnitAdjacent := by
  simp [minusLayer, UnitAdjacent, UnitStep]

theorem plusCap_chain : plusCap.IsChain UnitAdjacent := by
  simp [plusCap, UnitAdjacent, UnitStep]

theorem minusCap_chain : minusCap.IsChain UnitAdjacent := by
  simp [minusCap, UnitAdjacent, UnitStep]

theorem plus_bridge (m : ℕ) :
    UnitAdjacent ⟨(m + 1 : ℕ), 0, 1, -1⟩ ⟨(m : ℕ), 1, 1, -1⟩ := by
  simp [UnitAdjacent, UnitStep]

theorem minus_bridge (m : ℕ) :
    UnitAdjacent ⟨(m + 1 : ℕ), 0, 0, -1⟩ ⟨(m : ℕ), 1, 0, -1⟩ := by
  simp [UnitAdjacent, UnitStep]

/-- The displayed plus list is a simple Hamiltonian unit spine. -/
theorem plusPath_hamiltonianUnitSpine (m : ℕ) : HamiltonianUnitSpine (plusPath m) := by
  refine ⟨plusPath_nodup m, ?_⟩
  induction m with
  | zero => simpa [plusPath] using plusCap_chain
  | succ m ih =>
      cases m with
      | zero =>
          simp [plusPath, plusLayer, plusCap, UnitAdjacent, UnitStep]
      | succ m =>
          simp [plusPath, plusLayer, UnitAdjacent, UnitStep] at ih ⊢
          exact ih

/-- The displayed minus list is a simple Hamiltonian unit spine. -/
theorem minusPath_hamiltonianUnitSpine (m : ℕ) : HamiltonianUnitSpine (minusPath m) := by
  refine ⟨minusPath_nodup m, ?_⟩
  induction m with
  | zero => simpa [minusPath] using minusCap_chain
  | succ m ih =>
      cases m with
      | zero =>
          simp [minusPath, minusLayer, minusCap, UnitAdjacent, UnitStep]
      | succ m =>
          simp [minusPath, minusLayer, UnitAdjacent, UnitStep] at ih ⊢
          exact ih

/-- THM-408, plus family: `P_m^+` has `8m+6` vertices and a Hamiltonian unit spine. -/
theorem moser_plus_layered_slab_unit_spine (m : ℕ) :
    (plusPath m).length = 8 * m + 6 ∧ HamiltonianUnitSpine (plusPath m) :=
  ⟨length_plusPath m, plusPath_hamiltonianUnitSpine m⟩

/-- THM-408, minus family: `P_m^-` has `8m+5` vertices and a Hamiltonian unit spine. -/
theorem moser_minus_layered_slab_unit_spine (m : ℕ) :
    (minusPath m).length = 8 * m + 5 ∧ HamiltonianUnitSpine (minusPath m) :=
  ⟨length_minusPath m, minusPath_hamiltonianUnitSpine m⟩

end Math.Moser
