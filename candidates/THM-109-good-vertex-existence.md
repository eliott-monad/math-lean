---
id: THM-109-good-vertex-existence
source: 01-canon/theorems/THM-109-good-vertex-existence.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-109: Good Vertex Existence — For Every Tournament T with b1(T)=0

**Status:** PROVED (ALL cases algebraic — n=5 Case 2 is vacuous, see THM-285)
**Filed by:** kind-pasteur-2026-03-08-S43
**Depends on:** THM-107 (b1 <= 1), THM-105 (dominant vertex forcing)

## Statement

For every tournament T on n >= 4 vertices with b_1(T) = 0, there exists a
vertex v such that b_1(T\v) = 0.

Combined with the cases b_1(T) = 1 (where ALL vertices are good) and the
LES induction (THM-108), this completes the proof that beta_2(T) = 0 for
all tournaments.

## Definitions

- **3-cycle adjacency graph G**: vertices = directed 3-cycles of T, edges = pairs
  sharing a directed edge.
- **Free cycle**: 3-cycle with no external dominator (dom(C) = empty).
- **Dominated cycle**: has at least one external dominator.
- **dom(C)**: set of external vertices d such that d->all of C or all of C->d.
- **freed(v)**: {cycles C not through v : dom_T(C) subset {v}}.
  = {free cycles not through v} + {cycles with dom_T = {v}}.
- **remaining-dom(v)**: {cycles C not through v : dom_T(C) has element != v}.
- **Isolation edge for v**: edge in G between a freed(v) cycle and a remaining-dom(v) cycle
  (both not through v).

## Key Structural Fact (Isolation Characterization)

**Theorem (Isolation):** v is bad (b_1(T\v) > 0) if and only if there exists a
connected component of the restricted cycle graph G' = G[cycles not through v] that:
(a) consists entirely of cycles free in T\v (i.e., in freed(v)), and
(b) spans all n-1 vertices V\{v}.

**Corollary:** If v has any isolation edge (freed cycle adjacent to remaining-dom
cycle in G'), then v is good.

*Verified exhaustively at n = 5, 6 (0 mismatches); sampled at n = 7 (33222 match,
0 mismatch).*

## Notes for the formalizer

(none yet)
