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

end Math.Krawtchouk
