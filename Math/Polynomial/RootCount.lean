/-
# Degree = number of roots: the n+1 ↔ n ↔ n−1 mapping, realized at the cube root

Provenance: `eliottcassidy2000/math` — HYP-2310 (S636).  A degree-`n` polynomial has `n+1` coefficients (including the
constant — the base / "+1") and, over `ℂ`, exactly `n` roots with multiplicity (the Fundamental Theorem of Algebra);
Vieta maps the `n` monic coefficients to the `n` roots' symmetric functions.  This `n+1 ↔ n` correspondence is the
master off-by-one of the arc — `n` runners vs gap `1/(n+1)`, `n` vertices vs `n−1` path edges (the Hamiltonian path),
the independence/partition polynomial's `n+1` counts `α₀,…,α_n` (with `α₀ = 1`, the empty set / vacuum / base) vs its
roots (the resonance/Lee–Yang spectrum).  We formalize the FTA for roots of unity, with the **cube-root** case
(`X³−1`, degree 3, exactly the 3 roots `1, ω, ω²`) = the eigenvalues of a 3-cycle = the AG_n generators / the `π/3`
resonance (S635).
-/
import Mathlib

namespace Math.Polynomial

/-- **Degree = number of roots (FTA), for roots of unity.**  `X^n − 1` (degree `n`) has exactly `n` roots over `ℂ`
(with multiplicity): the `n+1` coefficients determine the `n` solutions. -/
theorem card_nthRoots_complex (n : ℕ) (hn : n ≠ 0) :
    Multiset.card (Polynomial.nthRoots n (1 : ℂ)) = n :=
  (Complex.isPrimitiveRoot_exp n hn).card_nthRoots_one

/-- **The cube roots number exactly 3.**  `X³ − 1` (degree 3) has the 3 roots `1, ω, ω² = e^{±2πi/3}` — the
eigenvalues of a 3-cycle, the AG_n generators (S635), the `π/3` resonance the whole arc converges on. -/
theorem card_cube_roots : Multiset.card (Polynomial.nthRoots 3 (1 : ℂ)) = 3 :=
  card_nthRoots_complex 3 (by norm_num)

end Math.Polynomial
