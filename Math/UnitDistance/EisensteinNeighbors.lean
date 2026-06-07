/-
# Triangular-lattice rigidity: every Eisenstein point has exactly 6 unit-distance neighbours

Provenance: `eliottcassidy2000/math` — HYP-2319 (S641).  Working towards `u(21) = 57` (the maximum number
of unit distances among 21 points).  The triangular = Eisenstein lattice `ℤ[ω]` is the *rigid* substrate:
two points are at unit distance iff their difference has norm `1` under the Eisenstein norm form
`N(a,b) = a² − ab + b²`, and `N = 1` has **exactly the 6 solutions** `±(1,0), ±(0,1), ±(1,1)` — the
hexagon, `6 = 2·3`, the cube-root units of S637/S638/S640.

So every lattice point has degree exactly `6`, capping any `n`-point lattice subset at `≤ 3n` unit
distances (Harborth: `⌊3n − √(12n−3)⌋`, giving `47` at `n = 21`).  But `u(21) = 57` is achieved by the
**Moser slab** `P_2^-` (HYP-2224), a *non-lattice* configuration living in `ℚ(√−11)` (the Moser-spindle
rotation `cos θ = 5/6`, `3z² − 5z + 3`, discriminant `−11`).  So the unit-distance MAXIMIZER **escapes**
the Eisenstein lattice `ℚ(√−3)` (this rigid degree-6 cap) into the spindle field `ℚ(√−11)` — the
small-`n` shadow of the grid-optimality disproof and the same `√−11` as the Heegner chromatic tower
(`χ ≥ 4` needs `√−11`, HYP-2277).  This lemma formalizes the rigidity that the optimum must leave behind.
-/
import Mathlib

namespace Math.UnitDistance

/-- **Eisenstein unit-distance neighbours.**  The Eisenstein norm form `a² − ab + b²` equals `1` for
exactly the six lattice vectors `±(1,0), ±(0,1), ±(1,1)` — the hexagon of nearest neighbours
(`6 = 2·3`).  Hence every triangular-lattice point has degree exactly `6` in the unit-distance graph,
the rigidity that the `u(21) = 57` optimum (a `√−11` Moser slab) escapes. -/
theorem eisenstein_unit_neighbours (a b : ℤ) :
    a ^ 2 - a * b + b ^ 2 = 1 ↔
      (a = 1 ∧ b = 0) ∨ (a = -1 ∧ b = 0) ∨ (a = 0 ∧ b = 1) ∨
      (a = 0 ∧ b = -1) ∨ (a = 1 ∧ b = 1) ∨ (a = -1 ∧ b = -1) := by
  constructor
  · intro h
    have h3a : 3 * a ^ 2 ≤ 4 := by nlinarith [sq_nonneg (2 * b - a)]
    have h0a : (0 : ℤ) ≤ a ^ 2 := sq_nonneg a
    have hsa : a ^ 2 ≤ 1 := by omega
    have ha1 : a ≤ 1 := by nlinarith [sq_nonneg (a - 1)]
    have ha2 : -1 ≤ a := by nlinarith [sq_nonneg (a + 1)]
    have h3b : 3 * b ^ 2 ≤ 4 := by nlinarith [sq_nonneg (2 * a - b)]
    have h0b : (0 : ℤ) ≤ b ^ 2 := sq_nonneg b
    have hsb : b ^ 2 ≤ 1 := by omega
    have hb1 : b ≤ 1 := by nlinarith [sq_nonneg (b - 1)]
    have hb2 : -1 ≤ b := by nlinarith [sq_nonneg (b + 1)]
    interval_cases a <;> interval_cases b <;> revert h <;> decide
  · rintro (⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩) <;> ring

/-- **Exactly six.**  The Eisenstein unit-neighbour set, enumerated as a `Finset (ℤ × ℤ)`, has card `6`
— every triangular-lattice point has degree exactly `6` in the unit-distance graph. -/
theorem eisenstein_neighbour_count :
    ({(1, 0), (-1, 0), (0, 1), (0, -1), (1, 1), (-1, -1)} : Finset (ℤ × ℤ)).card = 6 := by decide

end Math.UnitDistance
