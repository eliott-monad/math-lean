---
id: THM-459-r22-equals-5-hand-proof
source: 01-canon/theorems/THM-459-r22-equals-5-hand-proof.md
source_commit: c21c071
status: open
---

## Informal statement

# THM-459: R(2,2) = 5 — structure lemmas + machine-closed case analysis

**Status:** PROVED with a machine-closed final step (Glucose3 UNSAT, 532 CEGAR
clauses, complete verifier; `erdos592_verify_fix_macmini_s1.py`, re-derived by the
S2 persistent SAT verifier). The lemma layer below is PROVED as stated and reduces
the theorem to a bounded case analysis; a fully hand-written closure remains an
open polish task (HYP-2365).
**Source:** mac-mini-2026-06-09-S2 (context: THM-453 D/E)

**Statement.** R(2,2) = 5: every triangle-free graph on the 25 leaves of the
5-ary height-2 tree contains an independent binary subgrid (2 roots, 2 leaves
under each); and 5 is least — a 35-edge triangle-free graph on the 4-ary tree
dominates all its binary subgrids (witness in
`05-knowledge/results/erdos592_verify_fix_macmini_s1.out`).

## Structure lemmas

Rows a ∈ [5], columns [5]; R_a = within-row graph; N_{a'}(a,x) ⊆ [5] = the
cross-neighbourhood of leaf (a,x) in row a′. Let G be triangle-free on [5]² with
no independent binary subgrid (a putative witness).

**L1 (rows).** Each R_a is triangle-free on 5 vertices; hence either R_a ≅ C₅
(the unique triangle-free graph on 5 vertices with independence number 2 —
R(3,3) = 6 criticality) or α(R_a) ≥ 3.

**L2 (cross-neighbourhoods are independent).** For all a ≠ a′ and x:
N_{a'}(a,x) is R_{a'}-independent; dually each fibre {x : y ∈ N_{a'}(a,x)} is
R_a-independent. (Two cross edges sharing an endpoint plus a within-row edge
close a triangle.) In particular |N_{a'}(a,x)| ≤ α(R_{a'}).

**L3 (doubly-dark clique lemma).** For every R_a-independent pair {x₁,x₂} and
every a′ ≠ a, the doubly-dark set D = [5] ∖ (N_{a'}(a,x₁) ∪ N_{a'}(a,x₂))
induces a clique in R_{a'}; by triangle-freeness |D| ≤ 2, and if |D| = 2 then D
is an R_{a'}-edge. Equivalently |N(x₁) ∪ N(x₂)| ≥ 3.
*Proof.* An R_{a'}-independent pair {y₁,y₂} ⊆ D would make the subgrid
(a,{x₁,x₂}; a′,{y₁,y₂}) independent. ∎

**L4 (trace cliques).** Fix a′ and an R_{a'}-independent triple Y. For any other
row a: the columns x with N_{a'}(a,x) ∩ Y = ∅ form an R_a-clique (so ≤ 2 of
them, forming an edge if 2); columns with the same singleton trace into Y

## Notes for the formalizer

(none yet)
