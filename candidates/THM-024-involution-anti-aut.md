---
id: THM-024-involution-anti-aut
source: 01-canon/theorems/THM-024-involution-anti-aut.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-024: Every SC tournament has an involution anti-automorphism

**Status:** PROVED
**Certainty:** 5
**Author:** opus-2026-03-06-S18
**Dependencies:** Moon's theorem (tournament automorphisms have odd order), Cauchy's theorem
**Corrects:** T095 (claimed ALL anti-auts are involutions — false; this proves ≥1 exists)

---

## Statement

For any self-converse tournament T (i.e., T isomorphic to its converse T^op),
there exists a permutation σ such that:
1. σ is an anti-automorphism of T (i.e., T^σ = T^op)
2. σ is an involution (σ² = id)

## Proof

Let G = Aut(T). By Moon's theorem (1968), every automorphism of a tournament
has odd order. (Proof sketch: a 2-cycle (a,b) would swap arcs a→b and b→a,
but exactly one is in T, so no automorphism contains a transposition.)
Therefore |G| is odd.

Let σ₀ be any anti-automorphism of T (exists since T is self-converse).
Then σ₀ ∉ G and σ₀² ∈ G (σ₀² is an automorphism since applying σ₀ twice
reverses all arcs and then reverses them back).

Define H = ⟨G, σ₀⟩. Since σ₀² ∈ G and σ₀ ∉ G, we have [H:G] = 2,
so |H| = 2|G|, which is even.

By Cauchy's theorem, H has an element τ of order 2.

Since |G| is odd, τ ∉ G. Therefore τ ∈ σ₀G (the non-trivial coset).

Every element of σ₀G is an anti-automorphism of T (since σ₀ is anti-aut
and G = Aut(T), composing gives anti-aut).

Therefore τ is an involution anti-automorphism. □

## Notes for the formalizer

(none yet)
