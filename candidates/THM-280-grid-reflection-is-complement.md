---
id: THM-280-grid-reflection-is-complement
source: 01-canon/theorems/THM-280-grid-reflection-is-complement.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-280: Grid Reflection Induces Tournament Complement

**Status:** PROVED  
**Session:** opus-2026-04-03-S27  
**Verified computationally:** n=3 through n=7  

## Statement

Let T be a tournament on [n] represented by a tiling b of the staircase delta_{n-2} with fixed base path n -> (n-1) -> ... -> 1. Let b' be the grid-reflected tiling, defined by

    b'_{(n+1-y, n+1-x)} = b_{(x, y)}    for every tile (x, y).

Let T' be the tournament encoded by b'. Then **T' is isomorphic to T^op** (the tournament obtained by reversing all arcs of T).

Specifically, T' = sigma(T^op) where sigma is the vertex permutation v -> n+1-v.

## Consequence

The grid reflection on the staircase tiling space induces the complement involution T -> T^op on isomorphism classes. Therefore:

1. Transpose-paired classes = complement-paired classes (G_n/Z_2 quotient).
2. Self-complementary tournaments (T ≅ T^op) = transpose-self classes.
3. The two merge operations (grid reflection and T^op) are identical at the class level.

## Proof

### Setup

The staircase delta_{n-2} has m = C(n-1, 2) cells (tiles). Each tile is labeled by a pair (x, y) with 1 <= y < x <= n and x - y >= 2 (non-consecutive vertices in the base path). The base path arcs are n -> (n-1) -> ... -> 1, fixed for all tilings.

A tiling b assigns a bit b_{(x,y)} in {0, 1} to each tile:
- b_{(x,y)} = 0: arc from x to y (higher to lower)
- b_{(x,y)} = 1: arc from y to x (lower to higher)

The tournament T(b) is the directed graph on [n] with:
- Arc k -> (k-1) for k = n, ..., 2  (base path, always present)
- Arc x -> y if b_{(x,y)} = 0, or arc y -> x if b_{(x,y)} = 1  (for each tile)

### The grid reflection

## Notes for the formalizer

(none yet)
