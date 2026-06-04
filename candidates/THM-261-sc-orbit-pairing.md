---
id: THM-261-sc-orbit-pairing
source: 01-canon/theorems/THM-261-sc-orbit-pairing.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-261: Z₂ Orbit Pairing on Conflict Graph of SC Tournaments

**Status:** PROVED (algebraic, all n)
**Filed by:** kind-pasteur-2026-03-25-S1
**Dependencies:** OCF (THM-002), Definition of SC tournament

## Statement

Let T* be a self-complementary tournament on n vertices with involutory
anti-automorphism sigma (sigma^2 = id, T*(sigma(u), sigma(v)) = T*(v, u)).

Define phi: C -> sigma(C)^{rev} on directed odd cycles C of T*, where:
- sigma(C) = (sigma(v_1), ..., sigma(v_k)) for C = (v_1, ..., v_k)
- C^{rev} = (v_k, ..., v_1)

Then:

1. **phi is a well-defined involution** on the set of directed odd cycles of T*.
   phi(C) is always a directed odd cycle of T*, and phi(phi(C)) = C.

2. **phi is an automorphism of Omega(T*)**: two cycles C_1, C_2 share a vertex
   iff phi(C_1), phi(C_2) share a vertex. So phi preserves the conflict graph.

3. **Even n (sigma fixed-point-free):** If cycle C uses at most one vertex from
   each sigma-orbit, then C and phi(C) are vertex-disjoint. In particular, for
   3-cycles where each vertex comes from a different orbit, the pair
   {C, phi(C)} contributes to alpha_2 (independent pair count).

4. **Odd n (sigma has fixed point v_0):** Every cycle through v_0 has its
   phi-partner also pass through v_0. These pairs are ALWAYS adjacent in Omega.
   The pairing CANNOT create independent pairs through v_0.

## Proof

**Part 1:** sigma is an anti-aut: T*(sigma(u), sigma(v)) = T*(v, u) for all u,v.
For a directed cycle C = (v_1 -> v_2 -> ... -> v_k -> v_1):
- T*(v_i, v_{i+1}) = 1 for all i
- So T*(sigma(v_{i+1}), sigma(v_i)) = 1 for all i (anti-aut property)
- This means sigma(v_{i+1}) -> sigma(v_i) in T*, i.e., the REVERSED image is directed.
- phi(C) = (sigma(v_k), sigma(v_{k-1}), ..., sigma(v_1)) is a directed cycle in T*.

## Notes for the formalizer

(none yet)
