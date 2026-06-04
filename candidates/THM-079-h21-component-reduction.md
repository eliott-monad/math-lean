---
id: THM-079-h21-component-reduction
source: 01-canon/theorems/THM-079-h21-component-reduction.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-079: H=21 Component Reduction

**Status:** PROVED for all n (structural + computational base case)
**Author:** opus-2026-03-07-S39/S41/S42, kind-pasteur-2026-03-07-S33
**Date:** 2026-03-07
**Dependencies:** THM-029 (H=7 impossibility)

## Statement

### Part A (PROVED): Disconnected Omega Case
If Omega(T) is disconnected, then H(T) ≠ 21.

### Part B (PROVED): P_4 Component Case
Omega(T) cannot have a connected component isomorphic to P_4 (path on 4 vertices).

### Corollary
H(T) = 21 requires connected Omega(T) with I(Omega(T), 2) = 21 and |V(Omega)| >= 6.

## Proof of Part A

By OCF multiplicativity for disjoint union:
I(G1 ∪ G2, 2) = I(G1, 2) · I(G2, 2)

For H = 21 with disconnected Omega: need I(C_i, 2) for components with product = 21.
Since H is always odd, each factor is odd.
Factorizations: 21 = 3·7 = 1·21 = 1·3·7 = 1·1·21 etc.

The only non-trivial factorization is 3·7.
I(component, 2) = 7 requires the component G to be K_3 (3 pairwise conflicting cycles).
By THM-029: 3 pairwise-conflicting cycles in Omega(T) ALWAYS generate a 4th cycle
(either via common vertex forcing 5-cycle, or via tournament arc constraints).
So |V(G)| ≥ 4 and I(G,2) ≥ 1+2·4 = 9 > 7. Contradiction.

Therefore I(component, 2) = 7 is impossible for any component of any Omega(T).
So H = 21 via disconnected Omega is impossible. QED.

## Proof of Part B

I(P_4, 2) = 21 (direct computation: 1 + 4·2 + 3·4 = 21).
A P_4 component of Omega means 4 cycles C1-C2-C3-C4 with adjacent pairs sharing vertices

## Notes for the formalizer

(none yet)
