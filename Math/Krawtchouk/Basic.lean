/-
# Krawtchouk polynomials and tournament analysis

Provenance: `eliottcassidy2000/math` — Krawtchouk analysis of tournament statistics
and OEIS sequence work.

Target results (stubs — see `candidates/`):
- The Krawtchouk polynomials K_k(x; n) and the orthogonality relations used informally.
- Their appearance in the spectral / generating-function analysis of tournaments.

Kept `sorry`-free: commit a definition/result only once it compiles.
-/
import Mathlib

namespace Math.Krawtchouk

/-- The Krawtchouk polynomial value `K k (n) x = ∑ j, (-1)^j * (x.choose j) * ((n - x).choose (k - j))`,
evaluated at natural arguments. Real-coefficient and orthogonality versions are formalized
incrementally on top of this combinatorial definition. -/
def K (k n x : ℕ) : ℤ :=
  ∑ j ∈ Finset.range (k + 1), (-1 : ℤ) ^ j * (x.choose j : ℤ) * ((n - x).choose (k - j) : ℤ)

/-- `K 0` is identically `1`. -/
@[simp] theorem K_zero (n x : ℕ) : K 0 n x = 1 := by
  simp [K]

/-- **Value at `x = 0`: `K k n 0 = C(n,k)`.**  At the all-zero word every Krawtchouk level reduces to the binomial
coefficient (the independent baseline of the weight distribution): only the `j = 0` term survives, since
`C(0,j) = 0` for `j ≥ 1`.  This is the `ρ_k` baseline `C(n,k)` against which loneliness resonance is measured. -/
theorem K_at_zero (k n : ℕ) : K k n 0 = (n.choose k : ℤ) := by
  have hterm : ∀ j ∈ Finset.range (k + 1), j ≠ 0 →
      (-1 : ℤ) ^ j * ((0 : ℕ).choose j : ℤ) * (((n - 0).choose (k - j) : ℤ)) = 0 := by
    intro j _ hj0
    have h0 : (0 : ℕ).choose j = 0 := Nat.choose_eq_zero_of_lt (Nat.pos_of_ne_zero hj0)
    simp [h0]
  rw [K, Finset.sum_eq_single 0 hterm
        (fun h => absurd (Finset.mem_range.mpr (Nat.succ_pos k)) h)]
  simp

/-! ## The `q`-ary Krawtchouk polynomials (the "instead of 2, they're 3" generalization)

The binary `K` above lives in the `q = 2` (forbidden/safe) Hamming scheme.  The general `q`-ary Krawtchouk carries an
extra `(q−1)^{k−j}` factor; at `q = 3` (the *ternary* / signed `+ / 0 / −` scheme) the factor is `2^{k−j}`.  This is
the natural transform for the signed-depth refinement and for the 3-structure of `n = 14 = 2·7` (`2` has order `3`
mod `7`, so doubling's orbits are 3-cycles). -/

/-- The **`q`-ary Krawtchouk polynomial** `Kq q k n x = ∑_j (−1)^j (q−1)^{k−j} C(x,j) C(n−x,k−j)`.  `q = 2` recovers
the binary `K`; `q = 3` is the ternary Krawtchouk (factor `2^{k−j}`).  Generating function:
`∑_k Kq q k n x · z^k = (1−z)^x (1 + (q−1)z)^{n−x}`. -/
def Kq (q k n x : ℕ) : ℤ :=
  ∑ j ∈ Finset.range (k + 1),
    (-1 : ℤ) ^ j * ((q : ℤ) - 1) ^ (k - j) * (x.choose j : ℤ) * ((n - x).choose (k - j) : ℤ)

/-- The `q`-ary Krawtchouk reduces to the binary one at `q = 2` (the `(q−1)^{k−j} = 1` factor disappears). -/
theorem Kq_two_eq_K (k n x : ℕ) : Kq 2 k n x = K k n x := by
  rw [Kq, K]
  refine Finset.sum_congr rfl (fun j _ => ?_)
  norm_num

/-- `Kq q 0` is identically `1`. -/
@[simp] theorem Kq_zero_index (q n x : ℕ) : Kq q 0 n x = 1 := by
  simp [Kq]

/-- **`q`-ary value at `x = 0`: `Kq q k n 0 = (q−1)^k · C(n,k)`.**  The `q`-ary resonance baseline (for `q = 3`,
`2^k C(n,k)`): only the `j = 0` term survives. -/
theorem Kq_at_zero (q k n : ℕ) : Kq q k n 0 = ((q : ℤ) - 1) ^ k * (n.choose k : ℤ) := by
  have hterm : ∀ j ∈ Finset.range (k + 1), j ≠ 0 →
      (-1 : ℤ) ^ j * ((q : ℤ) - 1) ^ (k - j) * ((0 : ℕ).choose j : ℤ)
        * (((n - 0).choose (k - j) : ℤ)) = 0 := by
    intro j _ hj0
    have h0 : (0 : ℕ).choose j = 0 := Nat.choose_eq_zero_of_lt (Nat.pos_of_ne_zero hj0)
    simp [h0]
  rw [Kq, Finset.sum_eq_single 0 hterm
        (fun h => absurd (Finset.mem_range.mpr (Nat.succ_pos k)) h)]
  simp

end Math.Krawtchouk
