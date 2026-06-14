/-
# Odd-cycle spectral boundary: low-length arithmetic

Provenance: `eliottcassidy2000/math` —
`01-canon/theorems/THM-500-the-second-spectral-boundary-odd-cycle-count-non-spectral-from-n7.md`.

This file records the elementary low-`n` length fact used in THM-500: below seven
vertices, the only possible odd directed cycle lengths are three and five.
-/
import Mathlib

namespace Math.Tournaments

/-- **THM-500 low-length core.**  An odd cycle length bounded by `6`, and at least
the triangle length `3`, is either `3` or `5`. -/
theorem odd_cycle_length_le_six_eq_three_or_five {k : ℕ} (hodd : Odd k)
    (hge : 3 ≤ k) (hle : k ≤ 6) : k = 3 ∨ k = 5 := by
  rcases hodd with ⟨m, rfl⟩
  omega

/-- Equivalently, if a tournament has at most six vertices, every odd directed
cycle length is one of the two low spectral lengths `3` and `5`. -/
theorem odd_cycle_length_of_le_six_vertices {n k : ℕ} (hn : n ≤ 6)
    (hodd : Odd k) (hcycle_len : 3 ≤ k) (hcontained : k ≤ n) : k = 3 ∨ k = 5 := by
  exact odd_cycle_length_le_six_eq_three_or_five hodd hcycle_len (le_trans hcontained hn)

end Math.Tournaments
