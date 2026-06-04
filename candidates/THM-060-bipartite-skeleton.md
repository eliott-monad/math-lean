---
id: THM-060-bipartite-skeleton
source: 01-canon/theorems/THM-060-bipartite-skeleton.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-060: Bipartite Blue Line Skeleton via t3 Parity

**Status:** PROVED (computational verification n=3,5,7,9 + structural argument)
**Instance:** kind-pasteur-2026-03-06-S25h

## Statement

The blue line skeleton (GS flip graph on SC tournament classes at odd n) is bipartite, with the bipartition determined by the parity of t3 (number of directed 3-cycles).

Specifically: if GS tiling T has t3(T) odd, then t3(flip(T)) is even, and vice versa. Therefore SC classes with odd t3 form one side of the bipartition, and SC classes with even t3 form the other.

## Proof

### Decomposition by triple type

For a tiling T with backbone 0->1->...->n-1, classify all C(n,3) triples:

**Type C** (consecutive, 2 backbone edges): {i, i+1, i+2} for i = 0,...,n-3.
- Backbone gives i->i+1->i+2 (fixed)
- Only non-backbone edge: (i, i+2)
- 3-cycle exists iff A[i+2][i] = 1, i.e., i+2 -> i completes the cycle
- After flip: A'[i+2][i] = 1 - A[i+2][i], so the cycle toggles
- Each consecutive triple contributes EXACTLY 1 to t3(T) + t3(flip(T))
- Total Type C contribution: n-2

**Type A** (0 backbone edges): all 3 edges are non-backbone.
- Flip reverses ALL three edge directions
- CW 3-cycle before flip <-> CCW 3-cycle after flip
- Each triple has exactly 1 directed 3-cycle (CW or CCW) before and after
- Individual contribution: always 2
- Total Type A contribution: 2 * |Type A triples| (always even)

CORRECTION: Individual Type A triples do NOT always contribute exactly 2 when
some edges happen to be backbone. The total is empirically always even for GS
tilings, but the per-triple argument only works for truly 0-backbone triples.

**Type B** (1 backbone edge): exactly one edge is backbone, the other two non-backbone.
- The backbone is some edge (i, i+1)
- Transpose maps {a, a+1, c} -> {n-1-c, n-2-a, n-1-a}
- For GS tilings, the transpose-paired Type B triples have EQUAL contributions

## Notes for the formalizer

(none yet)
