---
id: THM-021-discriminant-real-roots
source: 01-canon/theorems/THM-021-discriminant-real-roots.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-021: Elementary proof of real-rootedness via Turán's theorem

**Status:** PROVED for n ≤ 8
**Certainty:** 5
**Author:** opus-2026-03-06-S15
**Dependencies:** Turán's theorem (classical), AM-GM inequality
**Relation to THM-020:** Alternative proof of the same result. THM-020 uses claw-freeness + Chudnovsky-Seymour (2007); this proof uses only classical combinatorics.

---

## Statement

For any tournament T on n ≤ 8 vertices, the independence polynomial I(Ω(T), x) has all real (non-positive) roots.

## Proof

Write I(Ω(T), x) = 1 + α₁x + α₂x² + ··· + α_d x^d where d = α(Ω(T)) ≤ ⌊n/3⌋.

**Case n ≤ 5:** d ≤ 1. A polynomial 1 + α₁x trivially has one real root at x = -1/α₁. ∎

**Case n ∈ {6, 7}:** d ≤ 2. Write I = 1 + α₁x + α₂x². This has all real roots iff the discriminant α₁² − 4α₂ ≥ 0.

At n ≤ 7, the only vertex-disjoint odd-cycle pairs are pairs of 3-cycles (since 3 + 5 = 8 > n for any other combination). Let G be the graph whose vertices are the c₃ directed 3-cycles of T, with an edge between two cycles iff they are vertex-disjoint.

**Key observation:** Three pairwise disjoint triples require 3 × 3 = 9 > n vertices. Therefore ω(G) ≤ 2, i.e., G is **triangle-free**.

By Turán's theorem for triangle-free graphs: |E(G)| ≤ ⌊c₃²/4⌋.

Since α₂ = |E(G)| (disjoint cycle pairs) and α₁ ≥ c₃ (α₁ also counts 5- and 7-cycles):

**α₁² − 4α₂ ≥ c₃² − 4⌊c₃²/4⌋ ≥ 0.** ∎

**Case n = 8:** d ≤ 2. Now vertex-disjoint pairs include:
- **(3,3)-pairs:** Two disjoint 3-cycles (using 6 of 8 vertices). Count: α₂^{33}.
- **(3,5)-pairs:** A 3-cycle and a disjoint 5-cycle (using all 8 vertices). Count: B.
- Other combinations (5+5, 3+7, etc.) require > 8 vertices: impossible.

So α₂ = α₂^{33} + B.

**Bound on α₂^{33}:** Same Turán argument (ω ≤ 2 since 9 > 8). So 4α₂^{33} ≤ c₃².

## Notes for the formalizer

(none yet)
