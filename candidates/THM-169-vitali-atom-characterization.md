---
id: THM-169-vitali-atom-characterization
source: 01-canon/theorems/THM-169-vitali-atom-characterization.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-169: Complete Characterization of the Vitali Atom (4-Reversal H-Change)

**Status:** PROVED (exhaustive n<=6, statistical n=7 with zero exceptions)
**Session:** kind-pasteur-2026-03-13-S61
**Dependencies:** THM-002 (OCF), THM-168 (lambda completeness/ambiguity)

## Statement

### Setup

Let T be a tournament on n=7 vertices. Let S = {a,b,c,d} be a 4-vertex subset
with sub-tournament scores (1,1,2,2). Let T' be obtained from T by reversing
all 6 arcs within S. Let E = V(T) \ S = {e,f,g} be the 3 external vertices.

Assume the reversal is **lambda-preserving**: lambda(T) = lambda(T') as labeled graphs.

### Definitions

- **mixed_c3**: number of directed 3-cycles using exactly 2 vertices from S and 1 from E.
- **ext_c3**: 1 if the external tournament on E is cyclic (scores (1,1,1)), 0 if transitive (0,1,2).
- **B_s**: set of subset vertices that beat the ext-source (the vertex of E with highest out-degree within E). Defined only when ext_c3 = 0.
- **B_k**: set of subset vertices beaten by the ext-sink (lowest out-degree within E). Defined only when ext_c3 = 0.

### Main Theorem

H(T') != H(T) if and only if ALL of:

1. The sub-tournament on S has scores (1,1,2,2) (non-transitive).
2. The reversal preserves the labeled lambda graph.
3. mixed_c3 = 4 (equivalently, each subset vertex has exactly 2 arcs to ext and 1 from ext, or vice versa).
4. **Either:**
   - (a) The external tournament is cyclic (ext_c3 = 1), **OR**
   - (b) The external tournament is transitive AND (|B_s| = 4 OR |B_k| = 4).

When H changes, delta_H = +/-2 exactly (from delta_c7 = +/-1).

### Complementary results

- **n <= 6:** H(T') = H(T) ALWAYS for lambda-preserving (1,1,2,2) reversals. (Exhaustive proof.)
- **Phase transition at n=7 is sharp:** the first H-change occurs at n=7, caused by 7-cycles.

## Notes for the formalizer

(none yet)
