---
id: path_homology_synthesis
source: 05-knowledge/results/path_homology_synthesis.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# GLMY Path Homology of Tournaments and Circulant Digraphs — Synthesis

## Sessions: opus-2026-03-07-S38, opus-2026-03-08-S39

### Background

GLMY path homology (Grigor'yan-Lin-Muranov-Yau) assigns topological invariants
to directed graphs. For a digraph G on n vertices:

- **Allowed p-paths A_p**: sequences (v_0,...,v_p) of distinct vertices with each v_i→v_{i+1} an edge
- **∂-invariant paths Ω_p**: {u ∈ A_p : ∂u has all faces in A_{p-1}}
- **Path Betti numbers**: β_p = dim(ker ∂_p / im ∂_{p+1}) on the chain complex Ω_•
- **Euler characteristic**: χ = Σ (-1)^p β_p

### Key Results: Tournaments

#### 1. Betti Number Distribution (EXHAUSTIVE for n≤5, sampled for n≥6)

| n | Total | β=(1,0,...) | β=(1,1,0,...) | β=(1,0,0,1,...) | Other |
|---|-------|-------------|---------------|-----------------|-------|
| 3 | 8     | 6 (75%)     | 2 (25%)       | 0               | 0     |
| 4 | 64    | 40 (62.5%)  | 24 (37.5%)    | 0               | 0     |
| 5 | 1024  | 720 (70.3%) | 304 (29.7%)   | 0               | 0     |
| 6 | ~1000 | ~940 (94%)  | ~60 (6%)      | 0               | 0     |
| 7 | ~500  | ~410 (82%)  | ~48 (9.6%)    | ~42 (8.4%)      | 0     |
| 8 | ~80   | ~66 (82%)   | ~1 (1.3%)     | ~13 (16%)       | β_4=1: rare |
| 9 | 50    | 44 (88%)    | 0 (0%)        | 6 (12%)         | 0           |

#### 2. β_2 = 0 ALWAYS for tournaments (HYP-301)
Across ~5000 tournaments tested (n=3 through n=8), β_2 has NEVER been nonzero.
**ALGEBRAIC PROOF STRUCTURE**: ker(∂_2) = im(∂_3) EXACTLY for all tested tournaments.
- Ω_2 = transitive triples (a→b→c with shortcut a→c)
- Ω_3 = "doubly transitive" 4-paths (a→b→c→d with a→c AND b→d)
- Every 2-cycle in Ω_2 is filled by a 3-chain from Ω_3
- Verified EXHAUSTIVELY at n=4,5; sampled 100 each at n=6,7

#### 3. β_3=1 and β_1=1 are MUTUALLY EXCLUSIVE (HYP-302)
In 500 samples at n=7:
- 37 have β_3=1 (all with β_1=0)
- 39 have β_1=1 (all with β_3=0)

## Notes for the formalizer

(none yet)
