---
id: THM-171-c3-disjointness-from-lambda
source: 01-canon/theorems/THM-171-c3-disjointness-from-lambda.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-171: c3 Disjointness Preservation from Lambda Graph

**Status:** PROVED
**Date:** 2026-03-13
**Author:** kind-pasteur-2026-03-13-S61
**Dependencies:** Lambda graph definition (definitions.md)

## Statement

For any tournament T on n vertices, the number of vertex-disjoint pairs (and triples, and k-tuples) of 3-cycle vertex sets is completely determined by the lambda graph λ(u,v).

**Corollary:** Any lambda-preserving operation (including the Vitali atom) automatically preserves the disjoint c3-c3 pair count, disjoint c3-c3-c3 triple count, and the full overlap weight spectrum of c3 vertex sets.

## Proof

Let C be the set of 3-cycle vertex sets. For any two distinct sets V₁, V₂ ∈ C, exactly one holds:
- |V₁ ∩ V₂| = 0 (disjoint)
- |V₁ ∩ V₂| = 1 (share one vertex)
- |V₁ ∩ V₂| = 2 (share an edge)

So:

$$\binom{|C|}{2} = D + P_1 + P_2$$

where D = disjoint pairs, P₁ = pairs sharing exactly 1 vertex, P₂ = pairs sharing exactly 2 vertices.

**Step 1:** |C| is determined by λ. Indeed, |C| = (1/3) Σ_v δ(v) where δ(v) = #{3-cycle vertex sets containing v} = (1/2) Σ_{u≠v} λ(v,u). So |C| = (1/6) Σ_{u,v} λ(u,v).

**Step 2:** P₂ is determined by λ. Two 3-cycle vertex sets sharing exactly 2 vertices {u,v} means both contain {u,v} plus one distinct third vertex. The number of such pairs at a specific {u,v} is C(λ(u,v), 2). Each pair sharing 2 vertices has a unique common pair. Therefore:

$$P_2 = \sum_{\{u,v\}} \binom{\lambda(u,v)}{2}$$

**Step 3:** P₁ is determined by λ. The number of pairs of c3 sets both containing a specific vertex w is C(δ(w), 2). Each such pair either shares exactly w (contributing to P₁) or shares w and another vertex (contributing to P₂, counted at both shared vertices). Therefore:

$$\sum_w \binom{\delta(w)}{2} = P_1 + 2P_2$$

Since δ(w) and P₂ are lambda-determined, so is P₁.

**Step 4:** D = C(|C|, 2) - P₁ - P₂ is lambda-determined. QED.

## Notes for the formalizer

(none yet)
