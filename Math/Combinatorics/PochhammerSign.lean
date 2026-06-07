/-
# Rising and falling factorials at 1: |Sₙ| and the even–odd balance (the sign/Aₙ structure)

Provenance: `eliottcassidy2000/math` — HYP-2322 (S644).  The rising factorial `x^(n) = x(x+1)⋯(x+n−1)`
(`ascPochhammer`) and falling factorial `(x)_n = x(x−1)⋯(x−n+1)` (`descPochhammer`) carry the two faces of
the symmetric group that the S642/S643 Galois arc turns on:

* `ascPochhammer` has coefficients the **unsigned** Stirling cycle counts `c(n,k) = #{σ ∈ Sₙ : σ has k
  cycles}`, so at `x = 1` it sums to `n! = |Sₙ|` — *all* permutations (the generic Galois group, the
  unsolvable side, Abel–Ruffini).
* `descPochhammer` has coefficients the **signed** counts `s(n,k) = (−1)^{n−k} c(n,k)` (and
  `sign σ = (−1)^{n−cyc σ}`), so at `x = 1` it sums to `#even − #odd`.  Since `(1)_n = 1·0·⋯ = 0` for
  `n ≥ 2`, the even and odd permutations balance: `|Aₙ| = n!/2`, the index-2 sign structure (the
  "discriminant is a square" thread, S643 — `Aut(T) ⊆ Aₙ`).

And the two are exchanged by the arc's antipodal involution `σ : x ↦ −x` (S638/S643): `(x)_n = (−1)^n
(−x)^(n)`, i.e. rising ↔ falling is the `−1` reflection.  So the rising/falling pair is the factorial
shadow of the `Sₙ`(all) / `Aₙ`(sign) split, exchanged by `σ`.
-/
import Mathlib

open Polynomial

namespace Math.Combinatorics

/-- **Rising factorial at 1 is `n!` = `|Sₙ|`.**  `x^(n)|_{x=1} = 1·2·⋯·n = n!` — the total number of
permutations (sum of the unsigned cycle counts). -/
theorem ascPochhammer_eval_one : ∀ n : ℕ, (ascPochhammer ℤ n).eval 1 = (n.factorial : ℤ) := by
  intro n
  induction n with
  | zero => simp
  | succ k ih =>
    rw [ascPochhammer_succ_right, eval_mul, ih]
    simp only [eval_add, eval_X, eval_natCast]
    push_cast [Nat.factorial_succ]
    ring

/-- **Falling factorial at 1 vanishes for `n ≥ 2`.**  `(1)_n = 1·0·(−1)⋯ = 0`, i.e. `#even − #odd = 0`:
the even and odd permutations balance, `|Aₙ| = n!/2` (the index-2 sign structure / "the discriminant is a
square"). -/
theorem descPochhammer_eval_one : ∀ n : ℕ, 2 ≤ n → (descPochhammer ℤ n).eval 1 = 0 := by
  intro n
  induction n with
  | zero => intro h; omega
  | succ k ih =>
    intro hn
    rcases Nat.lt_or_ge k 2 with hk | hk
    · interval_cases k
      · omega
      · rw [descPochhammer_succ_right, descPochhammer_one]; simp
    · rw [descPochhammer_succ_right, eval_mul, ih hk, zero_mul]

/-- **The antipode `σ : x ↦ −x` exchanges rising and falling.**  `(x)_n = (−1)^n (−x)^(n)`: the falling
factorial is the rising factorial reflected through `0`, up to the sign `(−1)^n`.  The arc's involution
(S638/S643) is the rising↔falling duality. -/
theorem descPochhammer_eq_neg_ascPochhammer (n : ℕ) (x : ℤ) :
    (descPochhammer ℤ n).eval x = (-1) ^ n * (ascPochhammer ℤ n).eval (-x) := by
  induction n with
  | zero => simp
  | succ k ih =>
    rw [descPochhammer_succ_right, ascPochhammer_succ_right, eval_mul, eval_mul, ih]
    simp only [eval_sub, eval_add, eval_X, eval_natCast, pow_succ]
    ring

end Math.Combinatorics
