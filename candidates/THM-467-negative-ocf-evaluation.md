---
id: THM-467-negative-ocf-evaluation
source: 01-canon/theorems/THM-467-negative-ocf-evaluation.md
source_commit: 3c3a18e
status: open
---

## Informal statement

# THM-467: The Negative OCF Evaluation — I(Ω(T), −2) Is the Reciprocal Determinant Quotient, and x = −2 Is Invisible to the Omega Involution

**Type:** Theorem (PROVED, parts (a)–(d)) + census + refutation table
**Certainty:** 5 for (a)–(d) (complete elementary proofs + exhaustive verification n ≤ 6); census facts labeled separately
**Status:** PROVED (identities) / VERIFIED (census ranges) / REFUTED (all 31 candidate closed forms)
**Added by:** kind-pasteur-2026-06-10-S2 (Thread C, HYP-2380)
**Tags:** #ocf #independence-polynomial #negative-fugacity #omega-involution #redei-berge #nilpotent-ring #determinant

---

## Setting

THM-002 (PROVED): H(T) = I(Ω(T), 2), Ω(T) = conflict graph of directed odd
cycles, I(G,x) = Σ_k α_k x^k. HYP-2380 asked: x = −2 is the odd reflection of
the proven evaluation point — what does I(Ω(T), −2) mean?

Throughout: A = adjacency matrix of the tournament T on n vertices,
R := Z[x_1,…,x_n]/(x_i²) (square-free/nilpotent ring), X := diag(x_1,…,x_n),
ε : R → Z the linear functional sending every square-free monomial to 1
(sum of all coefficients), and

```
C_odd(x) := Σ_{directed odd cycles c of T} Π_{i ∈ c} x_i  ∈ R.
```

## Statement

**(a) (Reciprocal determinant quotient — the exact identity at x = −2.)**
For every tournament T and every even integer t:

```
I(Ω(T), t) = ε( [ det(I + XA) / det(I − XA) ]^{t/2} )      (in R)
```

In particular (t = 2 recovers OCF; t = −2 is the new point):

```
H(T)        =  ε( det(I + XA) · det(I − XA)^{−1} )
I(Ω(T), −2) =  ε( det(I − XA) · det(I + XA)^{−1} )          ← THE RECIPROCAL
```

## Notes for the formalizer

(none yet)
