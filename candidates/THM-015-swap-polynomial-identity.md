---
id: THM-015-swap-polynomial-identity
source: 01-canon/theorems/THM-015-swap-polynomial-identity.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-015: Swap Involution Polynomial Identity

**Type:** Theorem (proved at n<=8 by exhaustive symbolic verification)
**Certainty:** 5 -- PROVED at n<=8
**Status:** PROVED at n<=8
**Added by:** kind-pasteur-2026-03-05-S6
**Updated by:** kind-pasteur-2026-03-05-S7, opus-2026-03-05-S4
**Tags:** #ocf #arc-reversal #involution #proof #polynomial-identity

---

## Statement

Let T be a tournament on n vertices. Fix an arc i→j and let T' be the tournament obtained by flipping this arc to j→i.

Define the **swap involution** on Hamiltonian paths using arc i→j: swap the positions of i and j. A path is **unmatched** if the swapped path is invalid (blocked by a predecessor or successor).

Let U_T = #{unmatched T-paths} and U_{T'} = #{unmatched T'-paths}.

**Theorem:** For all n <= 8 (and conjecturally all n):

U_{T'} - U_T = delta_I

where delta_I = I(Omega(T'), 2) - I(Omega(T), 2) is the change in the independence polynomial.

Equivalently:

U_{T'} - U_T = 2 * sum_x s_x + 2*(D5-C5) + higher corrections

where s_x = 1 - T[x][i] - T[j][x] for x in V\{i,j}.

---

## Proof Method

**Polynomial identity over arc variables.** The key insight is that U_T and U_{T'} can be expressed as polynomials in the arc variables of T. Specifically:

1. Enumerate all "path shapes" — permutations with i→j (resp. j→i) consecutive
2. Each shape's validity is a monomial in arc variables
3. Each shape's blocking condition is a Boolean function of arc variables

## Notes for the formalizer

(none yet)
