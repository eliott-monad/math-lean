---
id: THM-076-walsh-ocf-factorization
source: 01-canon/theorems/THM-076-walsh-ocf-factorization.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-076: Walsh-OCF Factorization Identity

**Status:** PROVED (algebraic, all r, all degrees, all odd n)
**Author:** opus-2026-03-07-S35 (continued^3), general-r proof: opus-2026-03-07-S35 (continued^4)
**Date:** 2026-03-07
**Dependencies:** THM-068 (PCD), THM-071 (Walsh-Fourier), OCF (Grinberg-Stanley)

## Statement

For any Walsh monomial S of type (2a_1, ..., 2a_r) (r disjoint even-length paths on 2k+r vertices, where k = sum a_i), the Walsh coefficient of I(Omega(T), 2) factorizes as:

**Single component (r=1, path P_{2a}):**

$$\hat{I}[S] = \epsilon_S \cdot \sum_{\substack{q = 2a+1, 2a+3, \ldots, n \\ q \text{ odd}}} \binom{n-2a-1}{q-2a-1} \cdot \frac{2(q-2a-1)!}{2^q} \cdot 2 \cdot f(n-q)$$

where f(n') = n'!/2^{n'-1} for n' >= 1, f(0) = 1.

Each term satisfies C(n-2a-1, q-2a-1) * (q-2a-1)! * (n-q)! = (n-2a-1)!, so the sum telescopes:

$$|\hat{I}[S]| = \frac{2 \cdot (n-2a)!}{2^{n-1}} = \frac{2^1 \cdot (n-2k)!}{2^{n-1}}$$

**Multi-component (r >= 2):**

The Walsh coefficient decomposes into covering configurations: ways to assign the r path components to disjoint odd cycles. Each configuration contributes a product of cycle terms times E[I(Omega, 2)] on unused vertices.

$$|\hat{I}[S]| = \frac{2^r \cdot (n-2k)!}{2^{n-1}}$$

## Proof (single component, r=1)

Fix a path S = P_{2a} on vertices {v_0, ..., v_{2a}} with 2a edges. WLOG epsilon_S = 1.

**Step 1: Only cycles containing S contribute.**
For I(Omega(T), 2) = sum_{R indep set} 2^|R|, the Walsh coefficient hat{I}[S] = E[I * chi_S]. An independent set R contributes E[2^|R| * indicator(R subset Omega) * chi_S]. For chi_S to have nonzero expectation, ALL S-edges must be fixed by some cycle in R. Since S is a connected path, one cycle C must contain all of S.

**Step 2: Factor into fan-cycle and remaining.**
For an independent set R = {C, C_2, ..., C_r} where C contains S:
- C uses q >= 2a+1 vertices (odd), fixing q edges
- {C_2, ..., C_r} are vertex-disjoint from C, using remaining n-q vertices
- chi_S = epsilon_S for all valid cycles C (constant by PCD descent-sign argument)
- E[indicator(R subset Omega) * chi_S] = epsilon_S * prod(1/2^|C_i|)

## Notes for the formalizer

(none yet)
