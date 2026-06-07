/-
# The tournament discriminant: det of the skew-adjacency matrix — 0 for odd n, a square (Pf²) for even n

Provenance: `eliottcassidy2000/math` — HYP-2323 (S645).  Answering S643's open thread (*what is the
tournament discriminant whose squareness mirrors `Aut(T) ⊆ Aₙ`?*) and S644 (the falling-factorial
discriminant `∏k!²` model).

A tournament `T` has a **skew-adjacency matrix** `M`, `Mᵢⱼ = +1` if `i→j`, `−1` if `j→i`, `0` on the
diagonal — so `Mᵀ = −M`.  Its determinant `det M` is the **tournament discriminant**: it is a genuine
isomorphism invariant (`det(P M Pᵀ) = det(P)² det M = det M`), and skew-symmetry forces exactly the
discriminant dichotomy:

* **`n` odd ⟹ `det M = 0`** (formalized here): a square (`0 = 0²`).
* **`n` even ⟹ `det M = Pf(M)²`** (classical Pfaffian theorem): a perfect square, with the **Pfaffian**
  `Pf(M)` the tournament analogue of the **Vandermonde / √discriminant** (it flips sign under odd
  relabelings, is fixed under even ones — exactly `Aut(T) ⊆ Aₙ`, S643).

So the tournament discriminant is **always a perfect square**, matching `Aut(T) ⊆ Aₙ` (S643) and the
falling-factorial model (S644).  Recursion in `n`: `n → n−1` flips parity (`0 ↔ Pf²`); the Pfaffian
expansion recurses `n → n−2` (the repo's Mode B / Cayley–Dickson descent).

This file formalizes the odd-`n` vanishing.
-/
import Mathlib

open scoped Matrix

namespace Math.Tournaments

/-- **Odd-order skew-symmetric determinant vanishes.**  If `Mᵀ = −M` and `n` is odd then `det M = 0`.
For a tournament's skew-adjacency matrix this says the discriminant `det M` vanishes for odd `n`
(`= 0²`, a square). -/
theorem skew_odd_det_zero {n : ℕ} (hn : Odd n) (M : Matrix (Fin n) (Fin n) ℤ)
    (hM : Mᵀ = -M) : M.det = 0 := by
  have h1 : M.det = (-1 : ℤ) ^ n * M.det := by
    calc M.det = Mᵀ.det := (Matrix.det_transpose M).symm
      _ = (-M).det := by rw [hM]
      _ = ((-1 : ℤ) • M).det := by rw [neg_one_smul]
      _ = (-1 : ℤ) ^ (Fintype.card (Fin n)) * M.det := by rw [Matrix.det_smul]
      _ = (-1 : ℤ) ^ n * M.det := by rw [Fintype.card_fin]
  rw [hn.neg_one_pow] at h1
  linarith

/-- **The `n = 2` tournament discriminant is `1 = 1²`.**  The single arc `0 → 1` has skew-adjacency
`!![0,1;-1,0]`, determinant `1` — a perfect square (`= Pf²`, `Pf = 1`).  The smallest even case of the
"discriminant is always a square" phenomenon. -/
theorem disc_two : (!![0, 1; -1, 0] : Matrix (Fin 2) (Fin 2) ℤ).det = 1 := by
  norm_num [Matrix.det_fin_two_of]

end Math.Tournaments
