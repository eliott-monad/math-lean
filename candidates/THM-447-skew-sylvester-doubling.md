---
id: THM-447-skew-sylvester-doubling
source: 01-canon/theorems/THM-447-skew-sylvester-doubling.md
source_commit: c21c071
status: open
---

## Informal statement

# THM-447 — Skew-Sylvester Doubling of Tournaments: three copies and one negated copy

**Status:** PROVED (block algebra below) — computational verification in progress (skew_doubling_core_kps1.py).
**Source:** kind-pasteur-2026-06-09-S1. User directive: "n*2 tournament doubling recursion … three
copies of the original, and one negated copy … skew Hadamard matrices, normalized with all elements
in the first row equal to 1, analogous to the tiling model with the Hamiltonian path fixed."
**Related:** OPEN-Q-045 (T[K_2] blowup — all-positive doubling), OPEN-Q-044 (SC blowup — transposed
cross blocks), THM-067 (Mersenne vanishing), THM-250..253 (spectral bridge / rapidity), T767,
HYP-2332..2337.

## Setup

For a tournament T on n vertices let A be its 0/1 adjacency matrix and
**M = A − A^T** its dominance matrix: skew-symmetric, entries ±1 off the diagonal, 0 on the
diagonal. Set **S = M + I** (the ±1 "skew-type" matrix: S + S^T = 2I). T is recovered from M.
A skew-Hadamard matrix of order m is a ±1 matrix S with S + S^T = 2I and S S^T = mI.

## Definition (the skew-Sylvester double)

**D(T)** is the tournament on 2n vertices {1..n} ∪ {1'..n'} with dominance matrix

```
M' = [ M     M+I ]
     [ M−I   −M  ]
```

Concretely: all three vertex-pair types (i,j), (i,j'), (i',j) with i≠j are oriented as in T
(**three copies of the arc set**); pairs (i',j') are oriented as in T^op (**one negated copy**);
and each vertex beats its own twin: i → i'.

This is the exact skew analog of Sylvester/Walsh doubling H_{2m} = [[H, H], [H, −H]]: the four
blocks are M, M, M, −M up to the forced diagonal corrections ±I (which encode the twin arcs).

## Claims and proofs

**(1) M' is a valid dominance matrix (D(T) is a tournament).**
M'^T = [[M^T, (M−I)^T], [(M+I)^T, −M^T]] = [[−M, −M−I], [−M+I, M]] = −M'. So M' is
skew-symmetric; its diagonal blocks have zero diagonal (M has zero diagonal), and every
off-diagonal entry is ±1: within blocks M, ±1 off-diagonal; in block M+I the diagonal is +1
(twin arcs i → i') and off-diagonal entries are M_ij = ±1. ∎

## Notes for the formalizer

(none yet)
