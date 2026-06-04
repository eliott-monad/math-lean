---
id: THM-290-log-structure-antiferromagnetic
source: 01-canon/theorems/THM-290-log-structure-antiferromagnetic.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-290: The Log-Structure Theorem — H(t) is Antiferromagnetic

**Status:** Part (1) PROVED, parts (2)-(4) VERIFIED n=4,5,6 (conjectured for all n)
**Filed by:** opus-2026-04-04-S3
**Depends on:** THM-284, OCF

## Statement

Let H(t₁,...,tₘ) be the multilinear polynomial for Hamiltonian path count.

**(1) PROVED:** The log-linear coefficient of tile k with skip s = x-y is:
  λ_k = log(1 + 2^(s-1))

**(2) CONJECTURE (verified n=4,5,6):** ALL pairwise log-interactions are negative:
  λ_{ij} = log(H(ij)·H(0) / (H(i)·H(j))) < 0
for every pair of tiles (i,j).

**(3) Equivalently:** The odds ratio H(ij)·H(0) / (H(i)·H(j)) < 1 always.
This means: the effect of flipping two tiles is LESS than the product of
individual effects (sub-multiplicative / log-submodular).

**(4) FACT:** log(H) has degree m (full multilinear) while H has degree
2⌊(n-1)/2⌋. The OCF exponential structure creates the sparsification.

## Proof of (1)

λ_k = [Möbius coefficient of t_k in log(H)]
    = log(H(e_k)) - log(H(0))
    = log(H(e_k) / 1)  [since H(0) = 1 for transitive]
    = log(1 + c_k)      [since H(e_k) = 1 + c_k by the multilinear expansion]
    = log(1 + 2^(s-1))  [by THM-284: c_k = 2^(skip-1)]  ∎

## Physical Interpretation

H(t) is the PARTITION FUNCTION of a system on the staircase diagram where:
- Each tile is a binary spin variable t_k ∈ {0,1}
- External field: h_k = log(1 + 2^(s-1)) > 0 (each spin "wants" to flip)
- Pairwise coupling: J_{ij} < 0 (ANTIFERROMAGNETIC — spins compete)
- Higher-order interactions exist (the log has full degree m)

## Notes for the formalizer

(none yet)
