---
id: THM-476-skew-ew-square-law
source: 01-canon/theorems/THM-476-skew-ew-square-law.md
source_commit: 3c3a18e
status: open
---

## Informal statement

# THM-476 — The skew Ehlich–Wojtas square law: tournament EW attainment forces 2n−3 = k²

**Status:** PROVED (necessity; claudebox-2026-06-11-S1) + VERIFIED witnesses (sufficiency
data) at n = 6, 14, 26, 62 — every candidate order ≤ 62 attained; first open n = 86.
**Provenance:** claudebox-2026-06-11-S1. **Companions:** THM-472 (even ceiling n^(n/2),
needs n ≡ 0 mod 4), THM-475 (odd sibling), HYP-2389 (Barba), HYP-2405 (non-square branch).
**Literature:** the skew D-optimal/EW theory at n ≡ 2 (mod 4) is studied (Greaves–Suda's
char-poly characterization via tournaments on n−1 vertices; Armario–Frau; known orders
6,14,26,42,62, FIRST OPEN n = 86) — those orders are exactly 2n−3 = 9,25,49,81,121,169 = k²,
so this law is consistent with (and may be implicit in) that literature; the proof below is
elementary and self-contained. Cite: Greaves–Suda (skew E-W matrices), Armario–Frau (self-dual
codes from skew E-W), Ehlich 1964 (the bound and its Gram rigidity).

## Statement

Let n ≡ 2 (mod 4), and let T be a tournament on n vertices whose ±1 matrix M = I + S attains
the Ehlich–Wojtas maximal-determinant bound det M = 2(n−1)(n−2)^((n−2)/2) (the maximum over
ALL ±1 matrices of order n ≡ 2 mod 4). Then **2n−3 is a perfect square**.

Equivalently: the skew-attainable EW orders lie in { n = (k²+3)/2 : k odd } = 6, 14, 26, 42,
62, 86, 114, … For all other n ≡ 2 (mod 4) — e.g. n = 10, 18, 22, 30 — tournaments are
strictly det-deficient relative to general ±1 matrices.

## Proof

By Ehlich's rigidity, attainment forces the Gram G = MMᵀ to be, up to simultaneous signed
permutation of rows, block-diagonal with two blocks (n−2)I + 2J of size n/2. So G has
eigenvalue 2n−2 with multiplicity exactly 2 (one per block; the other eigenvalue n−2 < 2n−2),
and the 2n−2 eigenspace V is spanned by two orthogonal ±1-SIGNED INDICATOR vectors a, b
(supports = the two blocks, after un-permuting; ‖a‖² = ‖b‖² = n/2; entries in {0,±1}).

M is skew-type: MMᵀ = (I+S)(I−S) = I − S² = MᵀM, and S commutes with G = I − S², so S
preserves V. Skewness gives aᵀSa = 0, hence Sa = μb for some real μ; likewise Sb = νa.
On V, S² = I − G acts as 1 − (2n−2) = −(2n−3), so μν = −(2n−3); skewness (bᵀSa = −aᵀSb)
with ‖a‖ = ‖b‖ gives ν = −μ; hence **μ² = 2n−3**. But Sa is an integer vector and b has
entries in {0,±1} with full support on its block, so μ ∈ ℤ. ∎

(The same forced-integer-eigenvector technique fails at n ≡ 1 (mod 4): the THM-475 maximizer's
excited eigenspace is also 2-dimensional, but its rational basis is not pinned to indicator
vectors, so no square condition arises — only the kernel/parity obstruction of THM-472.)

## Notes for the formalizer

(none yet)
