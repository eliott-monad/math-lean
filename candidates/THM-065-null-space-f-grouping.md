---
id: THM-065-null-space-f-grouping
source: 01-canon/theorems/THM-065-null-space-f-grouping.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-065: Null Space of Forward-Edge Distribution = f-Level Grouping

**Type:** Theorem (PROVED)
**Certainty:** 5 -- PROVED (algebraic, verified computationally n=7,9)
**Status:** PROVED
**Added by:** kind-pasteur-2026-03-07-S28
**Tags:** #forward-edge #null-space #f-grouping #reduced-polynomial

---

## Statement

The forward-edge distribution a_k(T) of a tournament T determines the OCF invariants only up to f-level equivalence.

### (i) f-level grouping

Each OCF invariant I has a free-position count f_I = n - 1 - (sum of cycle sizes - parts(I)). Two invariants I, J with f_I = f_J have proportional coefficient vectors in the a_k formula:

**coeff_k(I) = 2^{parts(I)} * c_k^{(f_I, n-1)}**

Since c_k^{(f,d)} depends only on f, the ratio coeff_k(I)/coeff_k(J) = 2^{parts(I)}/2^{parts(J)} is k-independent.

### (ii) Null space dimension formula

The null space of the map (invariants) -> (a_k) has dimension:

**null_dim(n) = Q(n) - (n+1)/2**

where Q(n) = A000009(n) = number of partitions of n into distinct parts, and (n+1)/2 = number of distinct f-values (one per even f in {0, 2, ..., n-3}).

The number of OCF invariants (= partitions into odd parts >= 3 with sum <= n) equals Q(n) - 1.
Equivalently, the number of invariant types INCLUDING the empty set is A078408(m) where m = (n-1)/2
(A078408 = number of partitions of 2m+1 into distinct parts).

| n  | #types+1 (A078408) | #f-values ((n+1)/2) | null_dim |
|----|-------------------|---------------------|----------|
| 3  | 2                 | 2                   | 0        |
| 5  | 3                 | 3                   | 0        |
| 7  | 5                 | 4                   | 1        |
| 9  | 8                 | 5                   | 3        |

## Notes for the formalizer

(none yet)
