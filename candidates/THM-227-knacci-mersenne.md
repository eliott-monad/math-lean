---
id: THM-227-knacci-mersenne
source: 01-canon/theorems/THM-227-knacci-mersenne.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-227: k-nacci Mersenne Identity

**Status:** PROVED
**Session:** opus-2026-03-16-S90ap
**Verification:** Exact symbolic computation (sympy) for k = 2, 3, 4, 5, 7, 11, 13, 17, 19

---

## Statement

**Theorem.** For the k-nacci companion matrix M_k (k x k, k >= 2) with characteristic polynomial p(x) = x^k - x^{k-1} - ... - x - 1, and for any 1 <= n <= k:

Tr(M_k^n) = 2^n - 1.

In particular, Tr(M_k^k) = 2^k - 1 (the k-th Mersenne number).

**Corollary 1 (k-independence).** The trace Tr(M_k^n) is independent of k for 1 <= n <= k. All k-nacci matrices agree on Tr(M^n) = 2^n - 1 within the "Newton range" n <= k.

**Corollary 2 (first departure).** At n = k+1, the Mersenne formula breaks by exactly (k+1):

Tr(M_k^{k+1}) = 2^{k+1} - k - 2.

---

## Proof

The trace sequence t(n) = Tr(M_k^n) satisfies Newton's identities. The k-nacci characteristic polynomial p(x) = x^k - x^{k-1} - ... - x - 1 has all coefficients equal to -1 (i.e., c_j = -1 for j = 0, ..., k-1).

Newton's identities, applied with -c_j = 1 for all j, give:

t(n) = sum_{j=1}^{n-1} t(n-j) + n, for 1 <= n <= k.

Equivalently: t(n) = sum_{m=1}^{n-1} t(m) + n.

**Proof by induction on n:**

Base case: t(1) = (empty sum) + 1 = 1 = 2^1 - 1.

Inductive step: Assume t(m) = 2^m - 1 for 1 <= m <= n-1 (where n <= k). Then:

## Notes for the formalizer

(none yet)
