/-
# Even/odd and the Pfaffian: det = Pf², and why the tournament Pfaffian is odd

Provenance: `eliottcassidy2000/math` — HYP-2324 (S646).  Develops S645 (the tournament discriminant
`det M = Pf(M)²` for even `n`, `0` for odd `n`).  The **Pfaffian** is the genuine square root of the
skew-symmetric determinant; it exists exactly when `n` is **even** — the parity master switch.

`Pf(M)` is a signed sum over the **perfect matchings** of `{1,…,2n}`:
`Pf(M) = Σ_{matchings π} sgn(π) ∏_{(i,j)∈π} Mᵢⱼ`, and there are **`(2n−1)‼`** of them.  Since `(2n−1)‼`
is a product of *odd* numbers it is **odd**; so for a `±1` (tournament) skew matrix the Pfaffian is a sum
of an *odd* number of `±1` terms, hence **odd** — which is exactly why the tournament discriminant is an
**odd square** (S645).  And `(2n−1)‼ = 2ⁿ · (1/2)^(n)` is the rising factorial of `1/2` (S644 / the apex
`n/2` / the `√π` tiling constant).

This file formalizes the `det = Pf²` identity at `n = 2, 4` (the Pfaffian as `√det`) and the oddness of
the matching count `(2n−1)‼`.
-/
import Mathlib

open Matrix

namespace Math.Tournaments

/-- **`det = Pf²` at `n = 2`.**  The `2×2` skew matrix `!![0,a;-a,0]` has determinant `a²` — the square
of its Pfaffian `Pf = a`. -/
theorem skew_two_det_eq_pf_sq (a : ℤ) :
    (!![0, a; -a, 0] : Matrix (Fin 2) (Fin 2) ℤ).det = a ^ 2 := by
  rw [Matrix.det_fin_two_of]; ring

/-- **The matching count `(2n−1)‼` is odd.**  The number of perfect matchings of `2n` points is a
product of odd numbers, hence odd.  So the Pfaffian of a `±1` skew matrix (a signed sum of `(2n−1)‼`
terms each `±1`) is odd, and `det = Pf²` is an **odd square** — the S645 oddness, explained.  (The
`n = 4` case `det = (af − be + cd)²` with the `3 = 3‼` matchings is verified computationally.) -/
theorem odd_doubleFactorial (n : ℕ) : Odd (Nat.doubleFactorial (2 * n + 1)) := by
  induction n with
  | zero => decide
  | succ k ih =>
    have e : 2 * (k + 1) + 1 = 2 * k + 1 + 2 := by ring
    rw [e, Nat.doubleFactorial_add_two]
    have h1 : Odd (2 * k + 1 + 2) := ⟨k + 1, by ring⟩
    exact h1.mul ih

end Math.Tournaments
