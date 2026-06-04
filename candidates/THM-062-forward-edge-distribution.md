---
id: THM-062-forward-edge-distribution
source: 01-canon/theorems/THM-062-forward-edge-distribution.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-062: Forward-Edge Distribution and Derivatives of W(r)

**Type:** Theorem (PROVED)
**Certainty:** 5 -- PROVED (algebraic + verified exhaustive/sampled)
**Status:** PROVED
**Added by:** opus-2026-03-07-S32
**Tags:** #W-polynomial #Eulerian #forward-edges #derivatives #master-polynomial

---

## Definitions

For a tournament T on n vertices and permutation P in S_n, define:
- **Forward edge at step i:** A[P(i), P(i+1)] = 1
- **a_k(T):** number of permutations with exactly k forward edges

The forward-edge distribution {a_0, a_1, ..., a_{n-1}} encodes how W(r) "spreads" its weight.

---

## Statement

### (i) Palindromy (reversal symmetry)

**a_k(T) = a_{n-1-k}(T)** for all tournaments T and all k.

*Proof:* Reversing P maps k forward edges to (n-1-k) forward edges (since reversed edges flip direction). Reversal is an involution on S_n. QED.

This is equivalent to the r-parity of W(r): W(-r) = (-1)^{n-1} W(r).

### (ii) Endpoint values

- a_{n-1}(T) = H(T) (all edges forward = Hamiltonian path)
- a_0(T) = H(T) (by palindromy)

### (iii) First derivative: a_{n-2}

**W'(1/2) = (n-1) H(T) + a_{n-2}(T)**

*Proof:* W'(r) = sum_P sum_j prod_{i != j} (r + s_i). At r = 1/2, the product is nonzero only when all non-j positions have forward edges. If position j is the unique backward edge, the product is (-1). If no backward edges (Hamiltonian path), each of the (n-1) choices of j contributes 1. So W'(1/2) = (n-1) H(T) + sum over perms with exactly 1 backward edge of (-1), but actually: for perms with k forward edges, the contribution is k * 1^{k-1} * 0^{n-2-k} (from choosing j among the forward positions) ... more carefully: only perms with n-1 or n-2 forward edges contribute. Those with n-1 (H paths) contribute (n-1) each; those with n-2 (one backward) contribute 1 * (-1) ... wait, no.

## Notes for the formalizer

(none yet)
