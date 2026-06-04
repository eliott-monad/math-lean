---
id: THM-068-position-character-decomposition
source: 01-canon/theorems/THM-068-position-character-decomposition.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-068: Position Character Decomposition

**Type:** Theorem
**Certainty:** 5 -- PROVED (algebraic, all degrees, all odd n)
**Status:** PROVED
**Added by:** opus-2026-03-07-S35
**Tags:** #Walsh-Hadamard #transfer-matrix #position #diagonal #character

---

## Statement

### (i) Vertex decomposition of transfer matrix diagonal

For odd n, each diagonal entry M[v,v] of the transfer matrix, viewed as a function on the tournament hypercube {0,1}^m (m = C(n,2)), satisfies:

**M[v,v]_hat[S] = (-1)^{[v in N(S)]} * H_hat[S] / (n - 2k)**

for each nonzero Walsh monomial S of degree 2k, where:
- H_hat[S] is the Walsh coefficient of H(T) = tr(M)
- N(S) is a "negative set" of k vertices determined by the monomial S
- The formula sum_v M[v,v]_hat[S] = H_hat[S] follows since |N(S)| = k

### (ii) Even-length component rule (PROVED)

**H_hat[S] ≠ 0 only if every path component of the subgraph S has even length.**

The subgraph induced by |S| = 2k edges (with max degree ≤ 2, required to be embeddable in a Hamiltonian path) is a union of vertex-disjoint paths. Components of odd length L give desc d and L-d from the two traversal directions; since L is odd, these have opposite parity, causing exact cancellation.

For even-length L = 2a: both directions give desc with the same parity, so (-1)^desc is constant.

### (iii) Negative set structure

The negative set N(S) has |N(S)| = k for any monomial S of Walsh degree 2k.

**Degree 0 (k=0):** N(S) = {} (empty). All vertices contribute equally: M[v,v]_hat = H_hat/n.

**Degree 2 (k=1):** N(S) = {shared vertex}. For edge pair S = {(a,b),(a,c)}, the shared vertex a is the unique negative vertex. M[v,v]_hat = ±H_hat/(n-2).

**Degree 4 (k=2):** Two types: P4 (path on 5 vertices) and P2+P2 (two disjoint wedges). For P4: N = {odd-position vertices of the path}. For P2+P2: N = {center vertex of each wedge}.

## Notes for the formalizer

(none yet)
