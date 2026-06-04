---
id: THM-069-graph-equality
source: 01-canon/theorems/THM-069-graph-equality.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-069: Graph Equality for Cycle Deletion

**Type:** Theorem (PROVED)
**Certainty:** 5 -- PROVED (algebraic, trivial proof)
**Status:** PROVED
**Added by:** opus-2026-03-07-S34
**Tags:** #conflict-graph #cycle-deletion #claim-a #structural

---

## Statement

For any tournament T on n vertices, any vertex v, and any directed odd cycle C through v:

**Omega(T) \ N[C] = Omega(T-v)|_{avoid C\{v}}**

as induced subgraphs, where:
- Omega(T) is the conflict graph (vertices = directed odd cycles, edges = pairs sharing a vertex)
- N[C] is the closed neighborhood of C in Omega(T) (C and all cycles sharing a vertex with C)
- Omega(T-v) is the conflict graph of the tournament T-v
- "avoid C\{v}" restricts to cycles vertex-disjoint from all vertices of C except v

---

## Proof

Both sides equal the set D = {directed odd cycles D in T : V(D) cap V(C) = empty}.

**Left to right:** D in Omega(T) \ N[C] means D is a cycle of T that shares no vertex with C. So V(D) cap V(C) = empty, hence D in D.

**Right to left:** D in Omega(T-v)|_{avoid C\{v}} means:
1. D is a directed odd cycle of T-v (equivalently, a cycle of T not using v)
2. D is vertex-disjoint from C\{v}

From (2) and (1): D avoids all vertices of C\{v} and also avoids v, so V(D) cap V(C) = empty. Hence D in Omega(T) \ N[C].

The key observation: **v in C**, so any cycle disjoint from C automatically avoids v.

The adjacency relation (sharing a vertex) is identical in both subgraphs since the vertex sets are the same.

## Notes for the formalizer

(none yet)
