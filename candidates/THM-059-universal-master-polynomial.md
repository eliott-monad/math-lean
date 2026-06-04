---
id: THM-059-universal-master-polynomial
source: 01-canon/theorems/THM-059-universal-master-polynomial.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-059: Universal Master Polynomial Theorem

**Type:** Theorem (computational discovery, now PROVED via Eulerian polynomials)
**Certainty:** 5 -- PROVED (Eulerian number formula + EGF derivation)
**Status:** PROVED. Verified computationally (47/47 cases across n=4..10, both parities)
**Added by:** opus-2026-03-06-S30, opus-2026-03-07-S31 (proof + n=10 verification)
**Tags:** #W-polynomial #hierarchy #central-factorial #Eulerian-numbers #master-sequence #universal

---

## Statement

**Theorem.** For a tournament T on n vertices, let W(r) = sum_P prod_{i=0}^{n-2} (r + s_i) be the weighted path polynomial (s_i = A[p_i, p_{i+1}] - 1/2). Decompose:

W(r) = C_0(r) + sum_I C_I(r) * I(T)

where the sum is over all independent set types I in the odd-cycle conflict graph Omega(T), and C_I(r) is the per-invariant r-polynomial.

Then:

**(a)** C_I(r, n) = 2^{parts(I)} * F_f(r)

where parts(I) is the number of disjoint odd cycles in independent set type I, and f = (n-1) - 2*|pi_I| is the **free position count** (|pi_I| = sum of block lengths in the position partition).

**(b)** The universal master polynomials F_j(r) are determined by the **central factorial number triangle** (OEIS A036969) via:

F_{2k}(r) = sum_{j=0}^k b_{k,j} * (2j+1)! * (r^2 - 1/4)^j

F_{2k+1}(r) = r * sum_{j=0}^k b_{k,j} * (2j+2)! * (r^2 - 1/4)^j

where b_{k,j} satisfies the recurrence:

b_{k,j} = b_{k-1,j-1} + (j+1)^2 * b_{k-1,j},  with b_{k,0} = 1, b_{0,0} = 1.

**(c)** Properties of F_j:
- F_j(1/2) = 1 for all j (from OCF: H = W(1/2) = I(Omega(T), 2))
- Leading coefficient of F_j is (j+1)!
- F_j has parity j: only r^{2m} terms for even j, only r^{2m+1} for odd j
- At odd n, free positions are always even; at even n, always odd

## Notes for the formalizer

(none yet)
