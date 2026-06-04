/-
# Lonely Runner / unit distances — carrier splits do not collapse to tournament H

Provenance: `eliottcassidy2000/math` — HYP-2204 (S627), `05-knowledge/results/unit_distance_hgap_carrier_s627.out`.
S627 reframes the apparent coincidences `u(5)=7` and triangular/lattice `u(11)=21`: these are
unit-distance edge counts split across retained carriers (spine plus tile/bulk), not literal
tournament `H` evaluations.  The formal point is intentionally type-level: an additive carrier
split can have total `7` or `21` while the SCC-atom theorem still forbids any multiplicative
tournament-`H` factorization with those values.  Collapsing the carriers to a single tournament
`H` is therefore an extra map/hypothesis, not arithmetic.
-/
import Math.LonelyRunner.UnitDistance
import Math.Tournaments.ForbiddenHSpectrum

namespace Math.LonelyRunner

/-- A two-channel unit-distance carrier split: the visible scalar is retained as
`spine + bulk`, rather than as a single tournament `H` value. -/
structure CarrierSplit where
  spine : ℕ
  bulk : ℕ

namespace CarrierSplit

/-- The visible edge-count scalar after forgetting the carrier distinction. -/
def total (c : CarrierSplit) : ℕ := c.spine + c.bulk

/-- The `n = 5` exact unit-distance echo from S627: `7 = 4 + 3`. -/
def exactFive : CarrierSplit where
  spine := 4
  bulk := 3

/-- The `n = 11` triangular/lattice echo from S627: `21 = 10 + 11`. -/
def latticeEleven : CarrierSplit where
  spine := 10
  bulk := 11

/-- `n = 5`: the carrier split has visible total `7`. -/
theorem total_exactFive : exactFive.total = 7 := by
  decide

/-- `n = 11`: the carrier split has visible total `21`. -/
theorem total_latticeEleven : latticeEleven.total = 21 := by
  decide

end CarrierSplit

open Math.Tournaments

/-- **S627 carrier reframing.**  The unit-distance carrier totals `7 = 4 + 3` and
`21 = 10 + 11` coexist with the tournament forbidden-spectrum theorem: under the SCC-atom
hypothesis, no product of tournament atoms has `H = 7` or `H = 21`.  Thus the equal visible
scalars are carrier-edge totals, not single tournament-`H` evaluations. -/
theorem carrier_splits_do_not_collapse_to_forbidden_H {A : ℕ → Prop}
    (hA : ∀ j : ℕ, ¬ A (7 * 3 ^ j)) {s : Multiset ℕ} (hs : ∀ a ∈ s, A a) :
    CarrierSplit.exactFive.total = 7 ∧
      CarrierSplit.latticeEleven.total = 21 ∧
      s.prod ≠ 7 ∧
      s.prod ≠ 21 := by
  exact ⟨CarrierSplit.total_exactFive, CarrierSplit.total_latticeEleven,
    forbidden_seven_and_twentyone hA hs⟩

end Math.LonelyRunner
