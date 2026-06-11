/-
# Switching invariance for the tournament determinant

Provenance: `eliottcassidy2000/math` —
`01-canon/theorems/THM-466-tournament-determinant-hadamard.md`.

THM-466 studies the determinant of the tournament matrix `I + S`, where `S` is the
skew-adjacency matrix.  One structural part of the theorem is that this determinant
is invariant under tournament switching.  Switching is conjugation `S ↦ D S D` by a
diagonal sign matrix `D`; the essential algebraic carrier is that the determinant of
`I + S` is unchanged by any involutory conjugating matrix.
-/
import Mathlib

namespace Math.Tournaments

open Matrix

/-- **Switching determinant carrier for THM-466.**  If `D² = I`, then conjugating the
skew part `S` by `D` leaves the determinant of `I + S` unchanged.  For tournament
switching, `D` is the diagonal `±1` matrix attached to the switched vertex set. -/
theorem det_one_add_conj_of_mul_self_eq_one {n : ℕ}
    (D S : Matrix (Fin n) (Fin n) ℤ) (hD : D * D = 1) :
    (1 + D * S * D).det = (1 + S).det := by
  have hconj : D * (1 + S) * D = 1 + D * S * D := by
    rw [Matrix.mul_add, Matrix.add_mul, Matrix.mul_one, hD]
  have hdetDsq : D.det * D.det = 1 := by
    have h := congrArg Matrix.det hD
    rw [Matrix.det_mul, Matrix.det_one] at h
    exact h
  calc
    (1 + D * S * D).det = (D * (1 + S) * D).det := by rw [hconj]
    _ = (D * (1 + S)).det * D.det := by rw [Matrix.det_mul]
    _ = D.det * (1 + S).det * D.det := by rw [Matrix.det_mul]
    _ = (1 + S).det := by
      calc
        D.det * (1 + S).det * D.det = (D.det * D.det) * (1 + S).det := by ring
        _ = (1 + S).det := by rw [hdetDsq]; ring

end Math.Tournaments
