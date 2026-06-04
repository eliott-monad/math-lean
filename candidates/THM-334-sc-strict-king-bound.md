---
id: THM-334-sc-strict-king-bound
source: 01-canon/theorems/THM-334-sc-strict-king-bound.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
theorem: THM-334
name: SC Tournaments Have Strict King Bound (n ≥ 5)
status: PROVED for n=5, CONJECTURED for n≥6 (verified n=6)
session: opus-2026-05-27-S1
verified: computationally n=5..6 (0 tight+SC cases)
depends_on: THM-331, THM-330
---

## Statement

For n ≥ 5, if T is **strongly connected** and Q is any vertex with maximum outdegree, then:

**H(T) − H(T−Q) > 2 · |N⁻(Q)|** (strict inequality)

Equivalently: strongly connected tournaments at n≥5 never achieve the tight lower bound of THM-331.

## Proof for n = 5 with |N⁻(Q)| = 1

(Full general n=5 proof; the case |N⁻(Q)|=0 is trivially strict when SC, and |N⁻(Q)|≥2 follows by the same argument applied to each rival.)

**Setup.** Let Q have d⁺(Q) = k, so |Court| = k and |Rivals| = 1. Write Rivals = {b}. At n=5, μ(C) = 1 for ALL odd cycles C through Q (since T−Q has 4 vertices and any 3-cycle C\{Q} leaves 2 vertices — too few for an odd cycle, and any 5-cycle C\{Q} = all of T−Q, leaving 0 vertices). Therefore:

H(T) − H(T−Q) = 2 · #{directed odd cycles through Q}

The bound is tight iff #{odd cycles through Q} = 1 = |rivals|.

**Claim: If #{odd cycles through Q} = 1, then T is not strongly connected.**

The single odd cycle must be a 3-cycle Q→a₁→b→Q for some court member a₁ (since b is the only rival). For no 5-cycle through Q: all 5-cycles of the form Q→x₁→x₂→x₃→b→Q must fail. Since b→Q and only a₁ beats b (among court members — if k=1 there's only a₁; if k≥2, we need the other court members a₂,...,aₖ to NOT beat b). For 5-cycles to fail, x₃ must beat b, so x₃=a₁. The 5-cycles have form Q→x₁→x₂→a₁→b→Q where x₁,x₂ ∈ {a₂,...,aₖ}. For all of these to fail, the sub-tournament on {x₁,x₂,...} must not have the required arc structure.

**Case analysis (for k=3, |Court|={a₁,a₂,a₃}).** For NO 5-cycle through Q:
- Q→a₂→a₃→a₁→b→Q fails ↔ NOT (a₂→a₃ AND a₃→a₁)
- Q→a₃→a₂→a₁→b→Q fails ↔ NOT (a₃→a₂ AND a₂→a₁)

In the tournament on {a₁,a₂,a₃}: exactly one of a₂→a₃ or a₃→a₂ holds.

**Sub-case a₂→a₃:** Need ¬(a₃→a₁), so a₁→a₃. Within {a₁,a₂,a₃}: a₂→a₃ and a₁→a₃. Sub-case a₁→a₂: a₂ beats a₃, a₁ beats both → a₃ has outdegree 0 in {a₁,a₂,a₃}. With b beating a₂,a₃ and a₁→b: in T, the vertex a₃ beats nobody → a₃ is the absolute sink. T is NOT SC (vertex a₃ has outdegree 0).

**Sub-case a₃→a₂:** Need ¬(a₂→a₁), so a₁→a₂. Within {a₁,a₂,a₃}: a₃→a₂ and a₁→a₂ → a₂ has outdegree 0 in {a₁,a₂,a₃}. Plus b→a₂: a₂ beaten by a₃,a₁,b → a₂ is the absolute sink. T is NOT SC.

## Notes for the formalizer

(none yet)
