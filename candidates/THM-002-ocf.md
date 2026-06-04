---
id: THM-002-ocf
source: 01-canon/theorems/THM-002-ocf.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-002: Odd-Cycle Collection Formula (OCF)

**Type:** Theorem
**Certainty:** 5 — PROVED for all n
**Status:** PROVED
**Last reviewed:** kind-pasteur-2026-03-05-S12
**Disputes:** none
**Tags:** #ocf #independence-polynomial #conflict-graph #proved #grinberg-stanley

---

## Statement

For every tournament T on n vertices:

```
H(T) = I(Ω(T), 2) = Σ_{k≥0} α_k(Ω(T)) · 2^k
```

where Ω(T) is the conflict graph on directed odd cycles of T (vertices = odd cycles, edges = shared vertex), I(G,x) is the independence polynomial of G, and α_k counts independent sets of size k.

---

## Proof

### Proof 1: Via Grinberg-Stanley (external, all n)

**Corollary 20 of arXiv:2412.10572** (Irving & Omar, 2024; attributed there to Grinberg & Stanley [Theorem 1.39 & Lemma 6.5 of arXiv:2307.05569]) states:

> For a tournament D on [n]: ham(D̄) = Σ_{σ ∈ S(D), all cycles of σ have odd length} 2^{ψ(σ)}

where S(D) = permutations whose nontrivial cycles are directed cycles of D, ψ(σ) = number of nontrivial cycles, and D̄ is the complement digraph.

**For tournaments, D̄ = D^op (converse):** Since exactly one of (u,v), (v,u) is in D, the complement has (u,v) iff (v,u) ∈ D.

**ham(D^op) = ham(D):** Path reversal bijection (v_1,...,v_n) ↔ (v_n,...,v_1).

**The RHS is I(Ω(D), 2):** Each permutation σ with all nontrivial cycles being odd D-cycles corresponds to a collection of vertex-disjoint odd directed cycles (the nontrivial cycles of σ). The weight 2^{ψ(σ)} = 2^{|collection|}. Summing over all such collections gives Σ_k α_k · 2^k = I(Ω(D), 2), since independent sets in Ω(D) are exactly collections of pairwise vertex-disjoint odd cycles.

**Therefore: H(T) = ham(T) = ham(T̄) = I(Ω(T), 2).** QED.

## Notes for the formalizer

(none yet)
