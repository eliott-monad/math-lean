---
id: THM-055-coefficient-hierarchy
source: 01-canon/theorems/THM-055-coefficient-hierarchy.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-055: Coefficient Hierarchy Theorem

**Type:** Theorem (algebraic proof + computational verification)
**Certainty:** 4 -- PROVED algebraically for k=0,1; verified computationally for k=2
**Status:** PROVED (k=0,1), VERIFIED (k=2)
**Added by:** opus-2026-03-06-S11b (continued^4)
**Tags:** #transfer-matrix #r-polynomial #moments #hierarchy

---

## Statement

**Theorem.** For a tournament T on n vertices (n odd), let M(r) = sum_{k=0}^{(n-1)/2} c_{2k} r^{2k} be the even r-polynomial of the transfer matrix. Then:

**(a)** tr(c_{n-1-2k}) = sum_P e_{2k}(s_P) over all n! permutations P, where s_i = A[p_i, p_{i+1}] - 1/2.

**(b)** Each e_{2k}(s_P) is a polynomial of degree 2k in f_P = (number of forward arcs in P), with coefficients depending only on n. Explicitly, via Newton's identities and the key simplification that s_i^{2j} = 1/4^j:

At n=7:
- e_0 = 1
- e_2(f) = f^2/2 - 3f + 15/4
- e_4(f) = f^4/24 - f^3/2 + 47f^2/24 - 11f/4 + 15/16
- e_6(f) = f^6/720 - f^5/40 + 49f^4/288 - 13f^3/24 + 287f^2/360 - 13f/30 + 1/64

**(c)** Consequently: tr(c_{n-1-2k}) is a polynomial in (sum_P f^0, sum_P f^1, ..., sum_P f^{2k}).

**(d)** The moment hierarchy:
- sum_P f^j for j=0,1 is universal (depends only on n).
- sum_P f^j for j=2,3 depends only on t_3 (the 3-cycle count).
- sum_P f^j for j=4 depends on MORE than t_3 (verified at n=5,7).

Therefore:
- **k=0:** tr(c_{n-1}) = n! (universal) [CORRECTED: was (n-1)!, see MISTAKE-015]
- **k=1:** tr(c_{n-3}) = 2(n-2)!(t_3 - C(n,3)/4) (depends only on t_3)
- **k=2:** tr(c_{n-5}) depends on t_3 AND sum_P f^4 (the 4th moment of forward-arc count)

---

## Proof of (a): the trace-permutation identity

## Notes for the formalizer

(none yet)
