/-
# Lonely Runner — doubling rigidity of the unit witness orbit

Provenance: `eliottcassidy2000/math` —
`01-canon/theorems/THM-404-doubling-rigidity-dichotomy-of-the-witness-orbit.md`
(source commit `9f7fc6e`).

For the initial arithmetic-progression configuration, the floor witnesses are the unit
clock residues `j` with `gcd(j,n)=1`.  The doubling map on clocks sends `j` to `2j`.
This file formalizes the arithmetic dichotomy from THM-404:

* if `n` is odd, doubling preserves the unit-residue witness orbit;
* if `n` is even, doubling sends every unit residue out of that orbit.

The whole result is the elementary equivalence `Coprime 2 n ↔ Odd n`, but isolated in
the Lonely Runner vocabulary so later LRC(14) residual arguments can cite it directly.
-/
import Mathlib

namespace Math.LonelyRunner

/-- The unit residues modulo `n`, i.e. the AP floor-witness orbit in arithmetic form. -/
def UnitResidue (n j : ℕ) : Prop :=
  Nat.Coprime j n

/-- Doubling preserves the unit-residue witness orbit modulo `n`. -/
def DoublePreservesUnitResidues (n : ℕ) : Prop :=
  ∀ j : ℕ, UnitResidue n j → UnitResidue n (2 * j)

/-- Doubling sends the unit-residue witness orbit completely outside itself modulo `n`. -/
def DoubleExitsUnitResidues (n : ℕ) : Prop :=
  ∀ j : ℕ, UnitResidue n j → ¬ UnitResidue n (2 * j)

/-- `2` is a unit modulo `n` exactly when `n` is odd.  This is the arithmetic core of
THM-404, stated in the same residue language as the witness orbit. -/
theorem two_unit_residue_iff_odd (n : ℕ) : UnitResidue n 2 ↔ Odd n := by
  exact Nat.coprime_two_left

/-- **Odd case of THM-404.**  If `n` is odd, multiplication by `2` preserves the unit
residues, hence permutes the AP witness orbit. -/
theorem double_preserves_unitResidues_of_odd {n : ℕ} (hn : Odd n) :
    DoublePreservesUnitResidues n := by
  intro j hj
  exact (Nat.coprime_mul_iff_left).2 ⟨Nat.coprime_two_left.2 hn, hj⟩

/-- **Even case of THM-404.**  If `n` is even, doubling any unit residue makes it non-unit:
the doubled witness orbit is disjoint from the unit witness orbit. -/
theorem double_exits_unitResidues_of_even {n : ℕ} (hn : Even n) :
    DoubleExitsUnitResidues n := by
  intro j _hj hdouble
  have htwo : Nat.Coprime 2 n := (Nat.coprime_mul_iff_left.1 hdouble).1
  exact (Nat.not_odd_iff_even.2 hn) (Nat.coprime_two_left.1 htwo)

/-- **Doubling-rigidity dichotomy.**  Doubling preserves the AP witness orbit iff the
modulus is odd.  For even moduli it fragments the orbit instead of acting internally. -/
theorem double_preserves_unitResidues_iff_odd (n : ℕ) :
    DoublePreservesUnitResidues n ↔ Odd n := by
  constructor
  · intro h
    exact Nat.coprime_two_left.1 (by simpa [UnitResidue] using h 1 (by simp [UnitResidue]))
  · exact double_preserves_unitResidues_of_odd

end Math.LonelyRunner
