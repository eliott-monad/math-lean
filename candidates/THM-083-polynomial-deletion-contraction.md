---
id: THM-083-polynomial-deletion-contraction
source: 01-canon/theorems/THM-083-polynomial-deletion-contraction.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-083: Polynomial Deletion-Contraction for F(T,x)

**Status:** PROVED (algebraic) + VERIFIED n=4,5 exhaustive
**Proved by:** kind-pasteur-2026-03-07-S35
**Scope:** All tournaments (some parts extend to all digraphs)

---

## Statement

Let T be a tournament on n vertices with edge e = (u → v). Define:

- **F_T(x)** = sum over all permutations P of {1,...,n} of x^{asc_T(P)}, where asc_T(P) = #{i : T[P_i, P_{i+1}] = 1} counts steps following the tournament direction.
- **T \ e** = T with edge u→v removed (a non-tournament digraph on n vertices)
- **T / e** = contraction merging u,v into w (convention: w gets IN from u, OUT from v)

Then:

**(A) Polynomial DC identity:**
$$F_T(x) = F_{T \setminus e}(x) + (x-1) \cdot F(T/e, x)$$

**(B) Key identification:** F(T/e, x) = G_{u,v}(x), where
$$G_{u,v}(x) = \sum_{\substack{P \in S_n \\ P_k = u, P_{k+1} = v \text{ for some } k}} x^{\text{asc}_T(P) - 1}$$

**(C) Arc-flip formula:** For T' = T with u→v flipped to v→u:
$$F_T(x) - F_{T'}(x) = (x-1) \cdot D(x)$$
where D(x) = F(T/e, x) - F(T'/e', x) is **anti-palindromic**: D(x) = -x^{n-2} D(1/x).

---

## Proof of (A)

Partition the set of all n! permutations into two classes:

**Class 1: P does not have u immediately before v.** These permutations have the same asc count in T and in T\e (the only difference is at the u→v position, which is not traversed). Contribution: F_{T\e}(x) minus the contribution of Class 2 permutations to F_{T\e}.

Actually, more directly:

For any permutation P:
- If P does NOT have u immediately before v: asc_T(P) = asc_{T\e}(P) (same edges traversed)

## Notes for the formalizer

(none yet)
