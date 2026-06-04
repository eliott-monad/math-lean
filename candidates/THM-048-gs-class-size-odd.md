---
id: THM-048-gs-class-size-odd
source: 01-canon/theorems/THM-048-gs-class-size-odd.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-048: GS Class Sizes Are Always Odd

**Status:** PROVED
**Instance:** opus-2026-03-06-S11
**Dependencies:** Redei's theorem (H(T) always odd), Aut(T) has odd order

## Statement

For any self-converse tournament T on n vertices, the number of grid-symmetric
(GS) tilings in the isomorphism class of T is always odd.

## Proof

**Step 1: |Aut(T)| is always odd.**
If sigma in Aut(T) has order 2, then sigma swaps some pair {u,v}. The edge
u->v maps to sigma(u)->sigma(v) = v->u. For sigma to be an automorphism,
v->u must be a tournament edge. But we also have u->v (tournament edge).
This contradicts the tournament property (exactly one directed edge between
each pair). So Aut(T) has no element of order 2, and by Cauchy's theorem,
|Aut(T)| is odd.

**Step 2: H(T) is always odd (Redei's theorem).**
Every tournament has an odd number of Hamiltonian paths. This is the
foundational theorem of the project.

**Step 3: |class(T)| is always odd.**
The isomorphism class of T consists of all tilings whose underlying tournament
is isomorphic to T. The number of such tilings equals H(T) / |Aut(T)|, which
is odd / odd. Since |Aut(T)| divides H(T) (by orbit-counting), the quotient
is an odd integer.

NOTE: The class size equals H(T) only when |Aut(T)| = 1. In general,
|class(T)| = H(T) / |Aut(T)|.

**Step 4: Perpendicular reflection is an involution on the class.**
The perpendicular grid reflection sigma maps tiling b to sigma(b) by permuting
tile bits: (b_sigma)_k = b_{sigma^{-1}(k)} where sigma permutes tile indices
via (x,y) -> (n+1-y, n+1-x).

The tournament of sigma(b) is T(b)^op (the converse). If T is self-converse

## Notes for the formalizer

(none yet)
