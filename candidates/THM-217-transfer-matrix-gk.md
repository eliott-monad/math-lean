---
id: THM-217-transfer-matrix-gk
source: 01-canon/theorems/THM-217-transfer-matrix-gk.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-217
name: Transfer Matrix Weight Formula and Combinatorial g_k
status: PROVED
proved_by: kind-pasteur-2026-03-15-S112
verified_computationally: n=3..18 (bitmask DP)
---

# THM-217: Transfer Matrix Weight Formula for CV²

## Statement

### Part A: Weight Formula (PROVED)

For the Z_j = X_j - Y_j process on uniform random permutations (where X_j = 1[sigma(j+1)=sigma(j)+1], Y_j = 1[sigma(j+1)=sigma(j)-1]):

**E[∏_{j∈S} Z_j] = 2^c / (n)_L**

where c = number of connected components of S (as a subset of the integers), L = |S|, and S is any even-size "domino subset" (every element of S has a neighbor in S).

Verified exhaustively for all domino subsets at n = 3, 4, 5, 6, 7, 8.

### Part B: Combinatorial g_k (PROVED)

The natural combinatorial g_k, defined as:

g_k(m) = (1/2) * Σ over k-matchings M of path P_{m+2k-1} of 2^{c(M)}

has **degree exactly k** in m, with k-th finite difference equal to 2^{k-1}.

This follows from the transfer matrix:

M(x) = [[1, 2x, 0], [0, 0, 1], [1, x, 0]]

whose dominant eigenvalue lambda_1(x) = 1 + 2x + O(x²) gives [x^k] lambda_1^N ~ C(N,k) * 2^k, hence degree k in N (and m).

Leading coefficients: g_k(m) ~ 2^{k-1} * m^k / k! + lower terms.

### Part C: Degree-3 Reparametrization (PROVED)

## Notes for the formalizer

(none yet)
