---
id: THM-114-trivariate-gf
source: 01-canon/theorems/THM-114-trivariate-gf.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-114: Trivariate Generating Function G_T(t, x)

**Type:** Theorem (PROVED)
**Certainty:** 5 -- PROVED (algebraic + verified computationally)
**Status:** PROVED
**Added by:** opus-2026-03-07-S33
**Tags:** #generating-function #independence-polynomial #Eulerian #master-polynomial

---

## Statement

For a tournament T on n vertices, define the **trivariate generating function**:

**G_T(t, x) = A_n(t) + sum_I x^{parts(I)} I(T) A_{f_I+1}(t) (t-1)^{n-1-f_I}**

where the sum is over all odd-cycle collection invariants I, and A_m(t) denotes the classical Eulerian polynomial.

### Special evaluations

| (t, x)  | G_T(t, x)  | Name |
|----------|-----------|------|
| (t, 0)  | A_n(t)    | Eulerian polynomial (T-independent) |
| (0, x)  | I(Omega(T), x) | Independence polynomial |
| (0, 0)  | 1         | Empty independent set |
| (0, 2)  | H(T)      | Hamiltonian path count |
| (1, x)  | n!        | Total permutations (T-independent) |
| (t, 2)  | E_T(t) = sum_k a_k t^k | Tournament Eulerian polynomial |
| (-1, 2) | Deformed zigzag number | 0 for even n |

### Key structural property

The **t-axis** (x=0) gives the universal Eulerian polynomial A_n(t), independent of T.
The **x-axis** (t=0) gives the independence polynomial I(Omega(T), x).
These two axes **cross at (0,0) = 1** (the "double empty-set" point).

---

## Proof of G_T(0, x) = I(Omega(T), x)

## Notes for the formalizer

(none yet)
