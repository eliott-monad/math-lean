---
id: THM-074-P-master-decomposition
source: 01-canon/theorems/THM-074-P-master-decomposition.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-074: Master Decomposition of P(u,x)

**Status:** PROVED (algebraic identity, verified computationally at n=5 exhaustive, n=7 all cycle types)
**Proved by:** kind-pasteur-2026-03-07-S29

## Statement

Let T be a tournament on n vertices (n odd), with G_T(t,x) = t^m * P(u,x) where
m = (n-1)/2 and u = t + 1/t.

Define the **base polynomials** P_k(u,0) for odd k by:
  P_k(u,0) = A_k(t) / t^{(k-1)/2}  (expressed in u = t + 1/t)

where A_k(t) is the Eulerian polynomial of degree k-1.

Then the correction polynomial for an independent set I = {C_1, ..., C_p} of odd directed
cycles with lengths l_1, ..., l_p and S_I = sum(l_i - 1) satisfies:

**g_I(u) = P_{n-S_I}(u, 0) * (u - 2)^{S_I/2}**

and the full master decomposition is:

**P(u,x) = P_n(u,0) + sum_I c_I * x^{|I|} * P_{n-S_I}(u,0) * (u-2)^{S_I/2}**

where c_I = number of independent sets of type I in Omega(T).

## Key Properties

1. **P(2,x) = n! for all tournaments:** All corrections vanish at u=2 due to the (u-2) factor.

2. **The correction depends only on S = sum(l_i - 1):** Different cycle compositions
   with the same S have the SAME correction polynomial. This explains the null space
   of the typed independence polynomial.

3. **Factorization structure:** Each correction is a product of:
   - P_{n-S}(u,0): the Eulerian polynomial of the "free" vertices (those not consumed by cycles)
   - (u-2)^{S/2}: a zero of multiplicity S/2 at u=2, reflecting descent degrees of freedom consumed

4. **Verified values of P_k(u,0):**
   - P_1(u,0) = 1

## Notes for the formalizer

(none yet)
