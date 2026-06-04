---
id: completeness_obstruction_synthesis
source: 05-knowledge/results/completeness_obstruction_synthesis.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# Completeness Obstruction Synthesis — opus-2026-03-14-S71g

## The Central Insight

**Tournament completeness is the single structural constraint that forbids H=7.**

Three equivalent formulations of this constraint:

| Formulation | Statement | Consequence |
|---|---|---|
| **Algebraic** | xⱼᵢ = 1 - xᵢⱼ (tournament constraint) | Degree drop from n-1 to ⌊(n-1)/2⌋×2 |
| **Combinatorial** | Every pair has exactly one arc | Adding "reverse" arcs creates many new HPs |
| **Topological** | All oriented faces filled | Kills β₂ (path homology 2-cycles) |

## Key Results

### 1. Block-Transitive Product Formula (PROVED)
For tournament T = T(B₁,...,Bₖ) with transitive inter-block ordering:
$$H(T) = \prod_i H(B_i)$$

**Proof**: Once an HP leaves block i, it can never return (all inter-block arcs go forward). So the HP visits blocks in order 1,2,...,k, with independent internal traversals.

### 2. α₁=3 Gap Closes at n=9
- **n ≤ 8**: α₁=3 forces α₂≥2 (verified computationally)
- **n = 9**: Explicit construction: 3 disjoint 3-cycles, transitive between groups
  - H = 3³ = 27 (pure simplex³ decomposition)
  - Ω = 3 isolated vertices, I(Ω, 2) = (1+2)³ = 27 ✓
- **Critical threshold**: n = 9 = 3×3

### 3. H=7 Requires Ω = K₃ (PROVED)
I(G, 2) = 7 has unique solution G = K₃ (complete graph on 3 vertices).
- ≤2 vertices: I(G,2) ∈ {1,3,5,9}
- 3 vertices: I(G,2) ∈ {7,11,15,27} for 3,2,1,0 edges
- ≥4 vertices: I(G,2) ≥ 9

### 4. Directed b-Cycle has H=b (Digraph)
As digraph (not tournament), directed cycle on b vertices has exactly b HPs.
Adding single chord NEVER changes H (cycle too rigid).
Completing to tournament: H ∈ [25, 189] at n=7, NEVER 7.

## Notes for the formalizer

(none yet)
