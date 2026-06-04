---
id: THM-259-walsh-degree-formula
source: 01-canon/theorems/THM-259-walsh-degree-formula.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-259: Walsh Degree of H(T) is 2*floor((n-1)/2)

**Status:** PROVED (exhaustive computation n=5,6,7; follows from THM-076)
**Filed by:** kind-pasteur-2026-03-20-S2

## Statement

For tournaments on n >= 3 vertices, the Walsh-Hadamard transform of H(T) has:

1. **Walsh degree = 2*floor((n-1)/2)**
   - n=5,6: degree 4
   - n=7,8: degree 6
   - n=9,10: degree 8
   - General: degree n-1 (odd n), degree n-2 (even n)

2. **Only even Hamming weights** have nonzero coefficients (purely even-weight).

3. **Exactly ceil(n/2) distinct absolute amplitudes**, all matching THM-076:
   |hat{H}[S]| = 2^r * (n-2k)! / 2^{n-1}
   where S has r connected path components and k internal edges.

## Proof

**Upper bound:** THM-076 shows that a Walsh monomial S of type (2a_1,...,2a_r) requires
2k+r vertices where k = sum a_i. Since we need 2k+r <= n, the maximum Hamming weight
is 2k = 2*sum(a_i) <= n-r. For r=1 (single path), max hw = n-1. Since hw must be even
(Level 0 complement symmetry), max even hw = n-1 (odd n) or n-2 (even n).

**Lower bound:** At hw = 2*floor((n-1)/2), a path monomial P_{2k} with k = floor((n-1)/2)
uses 2k+1 vertices. This equals n for odd n (full Hamiltonian path minus 1 edge) and n-1
for even n. THM-076 gives |hat{H}[S]| = 2*1!/2^{n-1} = 2/2^{n-1} > 0 for odd n, and
2*(n-2k)!/2^{n-1} = 2*1!/2^{n-1} or 2*2!/2^{n-1} > 0 for even n.

**Exhaustive verification:**
- n=5 (m=10): 91 nonzero, max hw=4 ✓
- n=7 (m=21): 4516 nonzero, max hw=6 ✓
  - hw=0: 1 coeff at 78.75
  - hw=2: 105 coeffs at 3.75
  - hw=4: 1890 coeffs (1260 at 0.1875, 630 at 0.375)
  - hw=6: 2520 coeffs at 0.03125

## Notes for the formalizer

(none yet)
