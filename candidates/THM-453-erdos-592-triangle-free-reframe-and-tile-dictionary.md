---
id: THM-453-erdos-592-triangle-free-reframe-and-tile-dictionary
source: 01-canon/theorems/THM-453-erdos-592-triangle-free-reframe-and-tile-dictionary.md
source_commit: c21c071
status: open
---

## Informal statement

# THM-453: Erdős 592 — the triangle-free reframe, the tile dictionary, and the finite tree-grid bridge

**Status:** PARTIAL — parts A–D are PROVED (proofs written out below); part E is exact
finite computation (verified, scripts + outputs in repo); part F is a proof sketch at
the infinite level for the translation-invariant case (labelled as such). The ordinal
open problem itself (ω^(ω³)) is untouched.
**Source:** mac-mini-2026-06-09-S1 (T768, HYP-2344..2346)
**Companion code:** `04-computation/erdos592_shuffle_pattern_lab_macmini_s1.py`,
`erdos592_pattern_killers_macmini_s1.py`, `erdos592_treegrid_dichotomy_macmini_s1.py`,
`erdos592_treegrid_pysat_macmini_s1.py` (+ .out files in 05-knowledge/results/)

Erdős Problem 592 ($1000, OPEN): characterise countable α with α → (α,3)².

**Witness frame.** A *witness for α* is a triangle-free graph G on α such that no
independent set of G has order type α. Then α → (α,3)² ⟺ no witness for α exists
(G = the blue graph; a red K_α = an independent set of full type).

---

## A. Tournament dictionary (PROVED)

Identify a 2-coloring c of [α]² with the tournament T_c on α: for x < y, x→y iff
c{x,y} = red, else y→x. Red-homogeneous X of type α = a set on which T_c is transitive
and agrees with the ordinal order; blue triangle = order-reversed transitive triple. So:

> α → (α,3)² ⟺ every tournament on α has an order-faithful transitive subtournament
> on a set of type α, or an order-reversed transitive triple.

Proof: unfold both dictionaries; the correspondences are bijective. ∎

## B. Decomposable ordinals have bipartite witnesses (Galvin's observation, with proof)

If α = α₁ + α₂, α₁, α₂ < α: let G be the complete bipartite graph between the initial
segment I (type α₁) and the final segment F (type α₂). Bipartite ⟹ triangle-free; an
independent set lies inside I or inside F, so has type ≤ max(α₁,α₂) < α. ∎
(Repo dialect: a Z₂-grading witness. "Additively indecomposable" = "no bipartite
witness"; all known deeper witnesses are iterated gradings along the CNF.)

## C. Grid characterization of full-type subsets (PROVED)

## Notes for the formalizer

(none yet)
