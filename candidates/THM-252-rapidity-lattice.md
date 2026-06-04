---
id: THM-252-rapidity-lattice
source: 01-canon/theorems/THM-252-rapidity-lattice.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-252: The Rapidity Lattice of the Flip Chain

**Status:** PROVED
**Session:** kind-pasteur-2026-03-17-S116n33

## Statement

For the random flip Markov chain on the n-vertex canonical-path tiling space, the set of eigenvalue rapidities

R = {arctanh(λ_k) : 1 ≤ k ≤ m-1, λ_k ≠ 0}

is contained in the Q-vector space:

**R ⊆ Q · ln(p_1) + Q · ln(p_2) + ... + Q · ln(p_r)**

where {p_1, ..., p_r} are the prime factors of (m-1)! (equivalently, all primes ≤ m-1).

More precisely, the rapidity lattice is spanned by the logarithms of primes dividing the numbers {1, 2, ..., m-1}.

## Proof

arctanh(λ_k) = (1/2) · ln(Q(λ_k)) = (1/2) · ln((m-k)/k) by THM-251.

Since 1 ≤ k ≤ m-1 and λ_k ≠ 0 (i.e., k ≠ m/2 when m is even), the ratio (m-k)/k is a positive rational number whose numerator and denominator are both in {1, ..., m-1}.

Therefore:

ln((m-k)/k) = ln(m-k) - ln(k)

Each of ln(m-k) and ln(k) decomposes as a sum of ln(p) over the prime factorization of m-k and k respectively. All prime factors are ≤ m-1. ∎

## Specialization to n=6 (m=10)

At n=6, the nonzero-eigenvalue rapidities are:

| k | λ_k | (m-k)/k | arctanh(λ_k) | Expression in {ln 2, ln 3, ln 7} |
|---|-----|---------|---------------|-----------------------------------|
| 1 | 4/5 | 9 = 3² | ln(3) | **1 · ln(3)** |
| 2 | 3/5 | 4 = 2² | ln(2) | **1 · ln(2)** |
| 3 | 2/5 | 7/3 | (ln 7 - ln 3)/2 | **(-1/2) · ln(3) + (1/2) · ln(7)** |

## Notes for the formalizer

(none yet)
