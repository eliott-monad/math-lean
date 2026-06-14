---
id: THM-008-mu-trivial-small-n
source: 01-canon/theorems/THM-008-mu-trivial-small-n.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-008: mu(C) = 1 for All 3-Cycles at n <= 5

**Type:** Theorem (proved)
**Certainty:** 5 -- PROVED
**Status:** CANON
**Added by:** opus-2026-03-05-S1
**Source:** FINAL_FINDINGS.md (inbox contribution)
**Tags:** #mu #per-path-identity #small-n #trivial

---

## Statement

For any tournament T on n <= 5 vertices, any vertex v, and any directed 3-cycle C = (v, a, b) through v:

    mu(C) = 1

Consequently, the per-path identity holds trivially for n <= 5: it reduces to #TypeII = #TypeII.

---

## Proof

mu(C) = I(Omega(T-v)|_{avoid C\{v}}, 2).

C\{v} = {a, b}. The restricted conflict graph contains only odd cycles of T-v that are vertex-disjoint from {a, b}. Such cycles must use only vertices in V \ {v, a, b}, which has n - 3 vertices.

- n = 3: V\{v,a,b} has 0 vertices. No cycles possible. Conflict graph is empty. I(empty, 2) = 1.
- n = 4: V\{v,a,b} has 1 vertex. No odd cycle on 1 vertex. I(empty, 2) = 1.
- n = 5: V\{v,a,b} has 2 vertices. Minimum odd cycle needs 3 vertices. I(empty, 2) = 1.

In all cases, mu(C) = 1.

---

## Significance

This means the per-path identity for n <= 5 has **zero mathematical content** beyond the algebraic identity THM-004. The weighted sum sum_{TypeII at j} mu(v, P'[j], P'[j+1]) reduces to the unweighted count #TypeII when all mu = 1.

This resolves OPEN-Q-001: the "n=5 mystery" is no mystery at all. 5-cycles exist at n=5, but they are invisible to the per-path identity because that identity only involves 3-cycles, and all 3-cycle mu values are trivially 1.

## Notes for the formalizer

2026-06-14: Formalized the finite-support core in `Math/Tournaments/SmallMu.lean`:
after removing the three distinct vertices of a triangle from a tournament with
at most five vertices, at most two vertices remain (`remaining_vertices_after_triangle_le_two`,
`remaining_vertices_after_triangle_lt_three`).  The full statement is still open
until the repo has definitions for the `mu(C)` conflict graph and its independence
polynomial specialization.
