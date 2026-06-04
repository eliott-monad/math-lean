/-
# Goldbach/Lemoine: the σ-symmetric (even) vs σ-broken (odd) faces, and the 2·3 = 6 meeting point

Provenance: `eliottcassidy2000/math` — HYP-2275 (S630).  Even numbers as Goldbach sums `p + q` are **unordered**
prime pairs (the swap `σ : (p,q) ↦ (q,p)` fixes `p+q` — the additive, σ-symmetric face).  Odd numbers as Lemoine/Levy
sums `p + 2q` are **ordered** pairs (the doubling `2q` breaks `σ`: `p+2q ≠ q+2p` — the multiplicative, σ-broken face).
The **diagonal** `(p,p)` is the σ-fixed point (the apex): `p` doubles to `2p` (even) and triples to `3p` (odd).
The unique number that is both a doubled prime and a tripled prime is **`6 = 2·3 = 3·2`** — the single point where the
2-face and the 3-face commute, the same `6` as the hexagonal lattice / `π/3` / `dZ = 1/6` / `Φ₃` of S623–S629.
-/
import Mathlib

namespace Math.NumberTheory

/-- **The 2·3 meeting point.**  `2p = 3q` for primes `p, q` forces `p = 3, q = 2` (value `6`): `6 = 2·3 = 3·2` is the
unique number that is both a doubled prime and a tripled prime — the point where the doubling-face and tripling-face
commute. -/
theorem double_eq_triple_unique {p q : ℕ} (hp : p.Prime) (hq : q.Prime) (h : 2 * p = 3 * q) :
    p = 3 ∧ q = 2 := by
  have hp3 : p = 3 := by
    have h3p : (3 : ℕ) ∣ p := by
      have hd : (3 : ℕ) ∣ 2 * p := ⟨q, h⟩
      rcases (Nat.Prime.dvd_mul (by norm_num : Nat.Prime 3)).mp hd with h2 | hpp
      · norm_num at h2
      · exact hpp
    exact ((Nat.prime_dvd_prime_iff_eq (by norm_num : Nat.Prime 3) hp).mp h3p).symm
  refine ⟨hp3, ?_⟩
  subst hp3; omega

/-- `6` is realized as both `2·3` (doubled prime) and `3·2` (tripled prime). -/
theorem six_double_three_eq_triple_two : 2 * 3 = 6 ∧ 3 * 2 = 6 := by norm_num

/-- **The doubling breaks the swap-symmetry.**  The Lemoine sum `p + 2q` equals its swap `q + 2p` iff the pair is
diagonal (`p = q`): the σ-fixed point.  (Contrast the Goldbach sum `p + q = q + p`, always symmetric.)  So odd
representations are genuinely *ordered* off the diagonal, and σ-fixed exactly on the apex `(p,p)` (value `3p`). -/
theorem lemoine_swap_symm_iff_diagonal {p q : ℕ} : p + 2 * q = q + 2 * p ↔ p = q := by
  omega

/-- The Lemoine sum `p + 2q` has the parity of `p` (the doubling `2q` is even) — the asymmetry that makes it the
"odd/multiplicative" face; the Goldbach sum `p + q` mixes both parities (the "even/additive" face). -/
theorem lemoine_parity (p q : ℕ) : (p + 2 * q) % 2 = p % 2 := by omega

end Math.NumberTheory
