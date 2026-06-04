---
id: THM-014-swap-involution
source: 01-canon/theorems/THM-014-swap-involution.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-014: Swap Involution for Arc-Flip Delta

**Type:** Lemma (verified n=4,...,7 computationally)
**Certainty:** 4 -- VERIFIED computationally, proof in progress
**Status:** VERIFIED
**Added by:** opus-2026-03-05-S2
**Tags:** #ocf #arc-reversal #involution #open-q-009

---

## Statement

Let T be a tournament, T' obtained by flipping arc i->j to j->i.

Define the **swap map** on Hamiltonian paths: for a T-path
  pi = (v_1,...,v_{a-1}, i, j, v_{a+2},...,v_n)
(using arc i->j at position (a, a+1)), define
  swap(pi) = (v_1,...,v_{a-1}, j, i, v_{a+2},...,v_n)

**Fact 1:** swap(pi) is a valid T'-path iff:
- (a = 1 OR T[v_{a-1}][j] = 1)  [predecessor of i must also beat j]
- (a+1 = n OR T[i][v_{a+2}] = 1)  [i must beat successor of j]

**Fact 2:** The swap is an involution on matched paths:
if swap(pi) is valid, then reverse-swap of swap(pi) recovers pi.

**Consequence:** adj(i,j) - adj'(j,i) = #U_T - #U_{T'}
where U_T = {unmatched T-paths} and U_{T'} = {unmatched T'-paths}.

---

## Blocking structure

A T-path (..., x, i, j, y, ...) is **unmatched** iff:
- **Pred-blocked:** T[x][j] = 0 (j beats x), equivalently s_x = -1
- **Succ-blocked:** T[i][y] = 0 (y beats i), equivalently s_y = -1

A T'-path (..., x, j, i, y, ...) is **unmatched** iff:
- **Pred-blocked:** T[x][i] = 0 (i beats x), equivalently s_x = +1
- **Succ-blocked:** T[j][y] = 0 (y beats j), equivalently s_y = +1

## Notes for the formalizer

(none yet)
