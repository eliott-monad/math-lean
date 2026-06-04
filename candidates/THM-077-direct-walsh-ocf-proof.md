---
id: THM-077-direct-walsh-ocf-proof
source: 01-canon/theorems/THM-077-direct-walsh-ocf-proof.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-077: Direct Walsh Proof of OCF

**Status:** PROVED (elementary, complete)
**Author:** opus-2026-03-07-S35 (continued^4)
**Date:** 2026-03-07
**Dependencies:** THM-076 (Walsh-OCF factorization, for the I side)

## Statement

H(T) = I(Omega(T), 2) for all tournaments T on n vertices (n odd).

This is the Odd-Cycle Collection Formula (OCF), originally proved by Grinberg-Stanley. We give a new proof via Walsh-Hadamard analysis.

## Proof

### Setup

A tournament T on n vertices is a point in {0,1}^m where m = C(n,2). The Walsh-Hadamard transform gives

hat{f}[S] = (1/2^m) sum_{T} f(T) chi_S(T)

for any function f: {0,1}^m -> R, where chi_S(T) = (-1)^{sum_{e in S} T_e}.

Since the Walsh basis {chi_S} is complete and orthonormal, f = g iff hat{f}[S] = hat{g}[S] for all S.

### Step 1: Walsh coefficients of H(T)

H(T) = sum_{sigma in S_n} prod_{i=0}^{n-2} T(sigma(i), sigma(i+1)).

Direct computation gives:

hat{H}[S] = ((-1)^|S| / 2^{n-1}) * sum_{sigma: S subset E_sigma} prod_{e in S} d_e(sigma)

where E_sigma = {edges of the Hamiltonian path sigma}, and d_e(sigma) = +1 if sigma traverses e forward, -1 if backward.

### Step 2: hat{H}[S] = 0 unless S is a union of disjoint even-length paths

**Case 1: S contains a cycle.** Since E_sigma is the edge set of a path (a tree), no cycle can be a subset of E_sigma. So the sum is empty and hat{H}[S] = 0.

**Case 2: |S| is odd.** By complement invariance H(T) = H(T^op) and chi_S(T^op) = (-1)^|S| chi_S(T), we get hat{H}[S] = (-1)^|S| hat{H}[S], so hat{H}[S] = 0.

## Notes for the formalizer

(none yet)
