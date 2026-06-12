/-
# The involution modulus 24

Provenance: `eliottcassidy2000/math` — `01-canon/theorems/THM-484-involution-modulus-24.md`
(commit `7b9c76c`).  The informal theorem identifies `24` as the arithmetic modulus whose
unit group consists entirely of involutions, with `φ(24) = 8` and unit set
`{1,5,7,11,13,17,19,23}`.  This file formalizes the elementary verified core: all units
modulo `24` square to `1`, the explicit unit set has cardinality `8`, and every natural number
coprime to `24` satisfies `n^2 ≡ 1 (mod 24)`.
-/
import Mathlib

namespace Math.NumberTheory

/-- A modulus whose unit group has exponent at most two. -/
def UnitsExponentTwo (n : ℕ) : Prop :=
  ∀ u : (ZMod n)ˣ, u ^ 2 = 1

/-- **The involution modulus core.**  Every unit modulo `24` is its own inverse. -/
theorem unitsExponentTwo_twentyFour : UnitsExponentTwo 24 := by
  intro u
  revert u
  decide

/-- Equivalently, every unit of `ℤ/24ℤ` has square `1`. -/
theorem zmod24_unit_sq_one (u : (ZMod 24)ˣ) : u ^ 2 = 1 :=
  unitsExponentTwo_twentyFour u

/-- `φ(24) = 8`, expressed as the cardinality of the unit group of `ZMod 24`. -/
theorem card_units_zmod24 : Fintype.card (ZMod 24)ˣ = 8 := by
  decide

/-- The eight units modulo `24` are exactly `1,5,7,11,13,17,19,23`. -/
theorem units_zmod24_values :
    (Finset.univ.image fun u : (ZMod 24)ˣ => (u : ZMod 24)) =
      ({1, 5, 7, 11, 13, 17, 19, 23} : Finset (ZMod 24)) := by
  decide

/-- The divisor side of the verified exponent-two list:
`1,2,3,4,6,8,12,24` all have exponent-two unit groups. -/
theorem unitsExponentTwo_twentyFour_divisors :
    UnitsExponentTwo 1 ∧ UnitsExponentTwo 2 ∧ UnitsExponentTwo 3 ∧ UnitsExponentTwo 4 ∧
      UnitsExponentTwo 6 ∧ UnitsExponentTwo 8 ∧ UnitsExponentTwo 12 ∧ UnitsExponentTwo 24 := by
  constructor
  · intro u; revert u; decide
  constructor
  · intro u; revert u; decide
  constructor
  · intro u; revert u; decide
  constructor
  · intro u; revert u; decide
  constructor
  · intro u; revert u; decide
  constructor
  · intro u; revert u; decide
  constructor
  · intro u; revert u; decide
  · exact unitsExponentTwo_twentyFour

/-- The same involution fact in congruence form: if `n` is coprime to `24`, then
`n^2 ≡ 1 (mod 24)`. -/
theorem sq_mod_twentyFour_eq_one_of_coprime (n : ℕ) (h : Nat.Coprime n 24) :
    n ^ 2 % 24 = 1 := by
  have hunit : IsUnit (n : ZMod 24) := (ZMod.isUnit_iff_coprime n 24).2 h
  rcases hunit with ⟨u, hu⟩
  have hs_units : u ^ 2 = 1 := zmod24_unit_sq_one u
  have hs_ring : ((u : ZMod 24) ^ 2) = 1 := by
    change ((u ^ 2 : (ZMod 24)ˣ) : ZMod 24) = 1
    rw [hs_units]
    rfl
  have hn_ring : ((n ^ 2 : ℕ) : ZMod 24) = 1 := by
    simpa [hu, pow_two] using hs_ring
  have hmod := (ZMod.natCast_eq_natCast_iff' (n ^ 2) 1 24).1 hn_ring
  simpa using hmod

/-- The eight residue classes coprime to `24` are exactly the eight involutions. -/
theorem coprime_residue_classes_mod24 :
    (Finset.univ.filter fun a : ZMod 24 => IsUnit a) =
      ({1, 5, 7, 11, 13, 17, 19, 23} : Finset (ZMod 24)) := by
  decide

end Math.NumberTheory
