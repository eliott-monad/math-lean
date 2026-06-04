---
id: gn-literature-search-2026-03-23
source: 05-knowledge/results/gn-literature-search-2026-03-23.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# Literature Search: Is G_n (Tournament Isomorphism Class Graph) Known?

**Date:** 2026-03-23
**Searcher:** opus-2026-03-23
**Object:** G_n = graph on tournament isomorphism classes, edges = single arc flip crossing orbit boundaries

---

## Executive Summary

**G_n itself — the arc-flip graph on tournament ISOMORPHISM CLASSES — appears to be a new object.** No paper was found that studies this exact quotient. However, several closely related structures exist in the literature, and understanding how G_n differs from each is illuminating.

---

## Search 1: "Cayley graph of symmetric group on tournaments"

**Verdict: G_n is NOT a Cayley graph.**

A Cayley graph Cay(G, S) has vertices = group elements and edges from a generating set. G_n has vertices = S_n-orbits of tournaments (not group elements). The connection is:

- The **full tournament flip graph** (on labeled tournaments) IS a quotient of the hypercube Q_{C(n,2)} — the binary cube on C(n,2) coordinates, where each coordinate is an arc. G_n is the further quotient Q_{C(n,2)} / S_n, quotienting by the vertex-relabeling action.

- The paper [Isomorphism Classes of Vertex-Transitive Tournaments](https://arxiv.org/abs/2301.09993) studies iso classes of vertex-transitive tournaments specifically but does NOT construct a flip graph on them.

**Key insight:** G_n = (Hamming graph on binary staircase fillings) / S_n. This is a "quotient of a hypercube by a group action on coordinates" — a known construction framework but not specifically studied for tournaments.

---

## Search 2: "Flip graph tournaments / arc reversal reconfiguration"

**Verdict: The interchange graph is the CLOSEST known object, but it operates WITHIN a fixed score sequence, not across all tournaments.**

### The Interchange Graph (Brualdi-Li, 1980s; Ryser)

- **Definition:** Fix a score sequence s. The interchange graph G(s) has:
  - Vertices = all tournaments with score sequence s
  - Edges = pairs differing by a cyclic triangle reversal
- **Ryser's theorem:** G(s) is always connected. Diameter ≤ (n-1)(n-2)/2.
- **Key difference from G_n:** The interchange graph operates on LABELED tournaments within a fixed score sequence. G_n operates on ISOMORPHISM CLASSES across ALL score sequences, with arbitrary single-arc flips (not just triangle reversals).

## Notes for the formalizer

(none yet)
