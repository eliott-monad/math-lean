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

end Math.Krawtchouk
