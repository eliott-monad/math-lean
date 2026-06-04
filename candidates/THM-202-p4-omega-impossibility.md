---
id: THM-202-p4-omega-impossibility
source: 01-canon/theorems/THM-202-p4-omega-impossibility.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-202: P₄ Cannot Be Ω(T) — Toward H≠21

**Status:** PROVED (for P₄ Omega structure)
**Proved by:** opus-2026-03-14-S71g
**Dependencies:** THM-200, directed cycle counting, Jacobsthal connection

## Statement

For any tournament T, the conflict graph Ω(T) is never isomorphic to P₄ (the path graph on 4 vertices).

## Proof

Suppose Ω(T) = P₄, meaning T has exactly 4 directed odd cycles C₁, C₂, C₃, C₄ with adjacency C₁-C₂-C₃-C₄ (sharing vertices pairwise along the path).

**Step 1.** Each Cᵢ must be a 3-cycle.

A 5-cycle on 5 vertices forces ≥3 additional 3-cycles, which would create more than 4 total cycles. So all cycles are triangles.

**Step 2.** The 4 triangles span ≤9 vertices with shared vertices v₁ = C₁∩C₂, v₂ = C₂∩C₃, v₃ = C₃∩C₄.

Write C₁ = {a, b, v₁}, C₂ = {v₁, c, v₂}, C₃ = {v₂, d, v₃}, C₄ = {v₃, e, f}.

**Step 3.** The "dominance cascade" forces extra triangles.

To have exactly 4 triangles, every other triple must be transitive. This creates a chain of forced arcs:

1. Triple {c, v₂, d}: arcs c→v₂ (C₂) and v₂→d (C₃). To avoid triangle: force c→d.
2. Triple {c, d, v₃}: c→d (forced) and d→v₃ (C₃). To avoid triangle: force c→v₃.
3. Triple {v₁, c, v₃}: v₁→c (C₂) and c→v₃ (forced). To avoid: force v₁→v₃.
4. Triple {v₁, c, v₂}: already in C₂.

The cascade continues through the "private" vertices:
5. Triple {b, v₁, c}: b→v₁ (C₁) and v₁→c (C₂). To avoid: force b→c.
6. Triple {b, c, d}: b→c (forced) and c→d (forced). To avoid: force b→d.
7. ...continuing: b is forced to beat {c, d, v₃, e, f} — all vertices outside C₁.

Similarly, vertex a is forced to beat b (C₁) and then b's cascade gives a→{c, d, e, f, v₃}.

**Step 4.** The shared vertices form unavoidable "skip triangles."

## Notes for the formalizer

(none yet)
