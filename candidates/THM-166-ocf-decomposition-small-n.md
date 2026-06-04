---
id: THM-166-ocf-decomposition-small-n
source: 01-canon/theorems/THM-166-ocf-decomposition-small-n.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-166: OCF Decomposition for Small n

**Status:** VERIFIED (n=3-6 exhaustive, n=7 regular)
**Session:** kind-pasteur-2026-03-13-S61

## Statement

### The Truncated OCF

For n-vertex tournaments with n <= 8:

    H(T) = 1 + 2*alpha_1(T) + 4*alpha_2(T)

where:
- alpha_1 = total number of directed odd cycles (all lengths 3, 5, 7, ...)
- alpha_2 = number of vertex-disjoint pairs of directed odd cycles
- Higher alpha_k = 0 because 3+3+3 = 9 > 8 (no three disjoint 3-cycles fit)

### The Additive Decomposition

    H(T) = 1 + 2*c3_dir + 2*c5_dir + 2*c7_dir + ... + 4*alpha_2

This splits into:
- **Score-determined**: c3_dir is determined by score sequence (Rao's formula)
- **5-cycle contribution**: 2*c5_dir (at n=5, this is the Hamiltonian cycle count)
- **7-cycle contribution**: 2*c7_dir (at n=7, this is the Hamiltonian cycle count)
- **Disjointness contribution**: 4*alpha_2

### The Coefficient-2 Principle

Any directed odd cycle that uses more than n/2 vertices conflicts with EVERY other odd cycle (since any 3-cycle needs 3 vertices, and with > n/2 already used, the remaining < n/2 vertices can't support a 3-cycle on their own).

Consequence: such a cycle contributes exactly 2^1 = 2 to I(Omega, 2).

At n=5: ALL cycles use >= 3 = ceil(5/2) vertices, and alpha_2 = 0 always.
At n=6: 5-cycles use 5 > 3 = 6/2 vertices, so each contributes 2.
At n=7: 7-cycles use 7 > 3.5 vertices (and 5-cycles use 5 > 3.5).

More precisely: a k-cycle uses k vertices. It's disjoint from no cycle of length 3 when k > n-3 (i.e., fewer than 3 vertices remain).

## Notes for the formalizer

(none yet)
