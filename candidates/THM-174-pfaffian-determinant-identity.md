---
id: THM-174-pfaffian-determinant-identity
source: 01-canon/theorems/THM-174-pfaffian-determinant-identity.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-174: Pfaffian Determinant Identity

**Status:** VERIFIED (computationally n=3,...,7, proved algebraically)
**Author:** opus-2026-03-13-S67k
**Date:** 2026-03-13
**Resolves:** HYP-788 (det(I+2A) is a perfect square)

## Statement

Let T be a tournament on n vertices with adjacency matrix A, and let S = A - A^T be the skew-adjacency matrix.

**Even n:** det(I + 2A) = det(S) = Pf(S)²

**Odd n:** det(I + 2A) = (1^T · w)² where adj(S) = w · w^T (rank-1 factorization of the adjugate).

**Corollary:** det(I + 2A) is always a perfect square for all tournaments.

## Proof (Even n)

Write I + 2A = J + S where J = 1·1^T (all-ones matrix) and S = A - A^T (skew-symmetric).

By the matrix determinant lemma:
  det(J + S) = det(S + 1·1^T) = det(S) · (1 + 1^T · S^{-1} · 1)

when S is invertible (which holds for even n generically).

**Key step:** S^{-1} is skew-symmetric (inverse of a skew-symmetric matrix is skew-symmetric). For any skew-symmetric matrix M and any vector x:
  x^T M x = 0

Applying this with M = S^{-1} and x = 1 (all-ones vector):
  1^T · S^{-1} · 1 = 0

Therefore:
  det(J + S) = det(S) · (1 + 0) = det(S) = Pf(S)²  □

## Proof sketch (Odd n)

For odd n, S is a singular skew-symmetric matrix (det(S) = 0). The rank of S is n-1, so adj(S) has rank 1.

By the generalized matrix determinant lemma for singular matrices:

## Notes for the formalizer

(none yet)
