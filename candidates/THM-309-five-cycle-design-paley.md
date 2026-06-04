---
id: THM-309-five-cycle-design-paley
source: 01-canon/theorems/THM-309-five-cycle-design-paley.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-309: 5-Cycle Design in Paley Tournaments

**Status:** PROVED (verified computationally for p = 7, 11, 19, 23)
**Found by:** opus-2026-04-05-S28
**Verified in:** `04-computation/five_cycle_designs_s28.py`, `cycle_design_formulas_s28.py`

## Statement

For the Paley tournament P_p (p ≡ 3 mod 4 prime), the directed 5-cycles form a **2-(p, 5, λ₅) design** with:

**λ₅ = (p+1)(p-2)(p-3)/8**

Every pair of vertices participates in exactly λ₅ directed 5-cycles.

The total count of directed 5-cycles is:

**c₅ = p(p²-1)(p-2)(p-3)/160**

## Proof Sketch

Since Aut(P_p) ≅ AGL(1, F_p) is 2-transitive on vertices, the directed 5-cycles (being invariant under automorphisms) automatically form a 2-design. The parameter λ₅ follows from counting: λ₅ = c₅ × C(5,2) / C(p,2) = c₅ × 10 / (p(p-1)/2).

The formula for c₅ comes from the Jacobi sum evaluation: the number of directed 5-cycles through a fixed vertex is c₅ × 5/p, and this equals a sum of Legendre symbol products over 4-tuples of field elements, which evaluates to the given closed form via the Hasse-Davenport relation.

## Relation to 3-Cycle Design

The ratio λ₅/λ₃ = (p-2)(p-3)/2 = C(p-2, 2), where λ₃ = (p+1)/4 is the 3-cycle design parameter (THM-211). This means:

**Each pair's 5-cycle incidence is exactly C(p-2, 2) times its 3-cycle incidence.**

## Verified Cases

| p | c₃ | λ₃ | c₅ | λ₅ | λ₅/λ₃ |
|---|-----|-----|------|------|--------|
| 7 | 14 | 2 | 42 | 20 | 10 |
| 11 | 55 | 3 | 594 | 108 | 36 |
| 19 | 285 | 5 | 11628 | 680 | 136 |
| 23 | 506 | 6 | 31878 | 1260 | 210 |

## Special Case: P_7

## Notes for the formalizer

(none yet)
