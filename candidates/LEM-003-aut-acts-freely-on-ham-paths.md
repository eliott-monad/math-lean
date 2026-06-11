---
id: LEM-003-aut-acts-freely-on-ham-paths
source: 01-canon/theorems/LEM-003-aut-acts-freely-on-ham-paths.md
source_commit: c21c071
status: open
---

## Informal statement

# LEM-003: Aut Acts Freely on Directed Hamiltonian Paths (Universal)

**Type:** Lemma
**Certainty:** 5 — PROVED (elementary digraph argument; uses NO tournament, Paley, QR, or Eisenstein structure)
**Status:** PROVED + VERIFIED (exhaustive: all 2^10 labeled n=5 and all 2^15 labeled n=6 tournaments; explicit orbit construction for every tournament with |Aut|>1 at n≤6)
**Last reviewed:** kind-pasteur-2026-06-10-S1
**Disputes:** none
**Tags:** #automorphism #hamiltonian-paths #divisibility #orbit-stabilizer #freeness #universal

---

## Statement

Let D be **any** finite digraph. Identify a directed Hamiltonian path with its arc set P ⊆ A(D). Then:

1. **(Order-rigidity)** If σ ∈ Aut(D) satisfies σ(P) = P as arc sets, then σ = id.
2. **(Freeness)** Aut(D) acts freely on the set of directed Hamiltonian paths; every orbit has size exactly |Aut(D)|.
3. **(Divisibility)** |Aut(D)| divides H(D), the number of directed Hamiltonian paths. (Trivially including H(D) = 0. For tournaments H ≥ 1 and odd by Rédei, so H/|Aut| is a positive integer, odd since |Aut| is odd.)

## Proof

**Step 1 (a directed Ham path's arc set determines its vertex sequence).** In the spanning subgraph (V, P), every vertex has in-degree ≤ 1 and out-degree ≤ 1, and exactly one vertex v₁ has in-degree 0 (the start). Given vᵢ, the unique arc of P leaving vᵢ (if any) identifies vᵢ₊₁. By induction along the path, P determines the full sequence (v₁, …, v_n).

**Step 2 (σ fixing P fixes the sequence pointwise).** Suppose σ(P) = P. σ is a digraph isomorphism of (V, P) onto (V, σ(P)) = (V, P), so it maps the unique in-degree-0 vertex to itself: σ(v₁) = v₁. Inductively, if σ(vᵢ) = vᵢ, then σ maps the unique P-arc out of vᵢ to the unique σ(P)-arc = P-arc out of vᵢ, so σ(vᵢ₊₁) = vᵢ₊₁.

**Step 3 (Hamiltonicity finishes).** The path visits every vertex, so σ fixes every vertex: σ = id. Hence the stabilizer of every Hamiltonian path is trivial; by orbit–stabilizer every orbit has size exactly |Aut(D)|, the Hamiltonian paths partition into orbits of equal size |Aut(D)|, and |Aut(D)| | H(D). ∎

## The honest boundary: the CYCLE caveat

The lemma **fails for directed Hamiltonian cycles**. A cycle's arc set has no distinguished start vertex, so Step 2's anchor disappears and rotation-type automorphisms can fix a cycle.

- **Sharp counterexample:** the cyclic triangle C₃ (0→1→2→0) has exactly 1 directed Hamiltonian cycle, |Aut| = 3, and 3 ∤ 1; the rotation fixes the unique cycle.
- **Maximally non-free:** the circulant RQ₅ (i → i+1, i+2 mod 5) has exactly 2 Hamiltonian cycles as arc sets (the +1-step and +2-step cycles), **both** rotation-fixed: orbit sizes [1, 1], |Aut| = 5, 5 ∤ 2. On the same tournament the path action is free: H = 15, exactly 3 orbits of size 5.

Paths are **order-rigid** (unique source anchors an induction); cycles are not. This is the entire content of the lemma.

## Consequences and reconciliation with prior repo statements

- **THM-048 Step 3** ("|Aut(T)| divides H(T) by orbit-counting") — asserted there without proof; this lemma supplies the proof.
- **CLAUDE.md / S20bt line** "Tilings × |Aut| = H for every iso class (orbit-stabilizer on tiling fibration)" — same fact in tiling language. Tilings in class [T] = pairs (labeled copy, Ham path) mod S_n; the S_n-stabilizer of a pair (T, P) is Aut(T) ∩ Stab(P) = {id} **by this lemma**, giving exactly H·(n!/|Aut|)/n! = H/|Aut| tilings. S20bt verified the formula at n = 4, 5 but implicitly assumed freeness; opus-S182's general argument was circular (it derived divisibility from tiling-count integrality, which is the same statement). LEM-003 closes that gap.

## Notes for the formalizer

(none yet)
