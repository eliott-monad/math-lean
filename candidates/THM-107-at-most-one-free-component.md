---
id: THM-107-at-most-one-free-component
source: 01-canon/theorems/THM-107-at-most-one-free-component.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-107: At Most One Free Component

**Status:** PROVED (algebraically)
**Filed by:** kind-pasteur-2026-03-08-S43
**Depends on:** THM-122 (TT span), THM-104 (cycle sum equality), THM-105 (dominant vertex forcing), THM-106 (free cycle bridge)

## Statement

In any tournament T on n >= 4 vertices, the 3-cycle adjacency graph (where two directed 3-cycles are adjacent iff they share a directed edge) has at most one connected component consisting entirely of free (non-dominated) cycles.

A cycle C = {a,b,c} is **dominated** if some external vertex d satisfies d->a, d->b, d->c (dominates all) or a->d, b->d, c->d (dominated by all). A cycle is **free** if it is not dominated.

## Corollary

**b_1(T) <= 1** for all tournaments T, where b_1 = dim H_1(T) in GLMY path homology.

This follows because:
- b_1 = #{free components} (by THM-122 + THM-104 + THM-105)
- #{free components} <= 1 (this theorem)

## Proof

Suppose for contradiction that C_1 and C_2 are free cycles in different connected components of the 3-cycle graph.

### Case 1: C_1 and C_2 share >= 2 vertices.
Two vertices determine a unique directed edge in a tournament. Both cycles contain this edge. So they share a directed edge and are in the same component. Contradiction.

### Case 2: C_1 and C_2 share exactly 1 vertex.
Let C_1 = {a,b,c} with a->b->c->a, and C_2 = {a,d,e} (sharing vertex a).

By THM-106 (free cycle bridge theorem), since C_1 is free, each external vertex creates a bridge cycle sharing an edge with C_1. In particular, vertices d and e each create bridges.

The bridge from v to C_1 shares one of the three edges {a->b, b->c, c->a} with C_1:
- Bridge via a->b: B_v = {v,a,b}. Contains a.
- Bridge via b->c: B_v = {v,b,c}. Does NOT contain a.
- Bridge via c->a: B_v = {v,c,a}. Contains a.

**Subcase 2a:** At least one of B_d, B_e contains a.
Say B_d = {d, a, w} for some w in {b,c}. Then B_d and C_2 share vertex pair {a,d}, hence share the directed edge between a and d. B_d is in C_1's component (shares edge with C_1). So C_2 and C_1's component share an edge. Contradiction.

## Notes for the formalizer

(none yet)
