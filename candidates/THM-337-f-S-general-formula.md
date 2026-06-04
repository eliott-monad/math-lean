---
id: THM-337-f-S-general-formula
source: 01-canon/theorems/THM-337-f-S-general-formula.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
theorem: THM-337
name: General Formula for f(S) — Tile Coverage via Cut Subsets
status: PROVED
session: opus-2026-05-27-S2
verified: computationally all subsets n=4..7
depends_on: THM-330
---

## Statement

In the tiling model on n vertices, define f(S) for a subset S ⊆ {1,...,n-1} of cuts as:

**f(S) = #{tiles (x,y) that cross at least one cut in S}**
       = |⋃_{k∈S} tiles_k|

where tiles_k = {tile (x,y): x ≥ k > y, x ≥ y+2}.

Then f(S) admits the closed-form **Möbius formula**:

**f(S) = Σ_{∅≠T⊆S} (−1)^{|T|+1} · h(T)**

where:
- **h({k}) = k(n−k) − 1** (for singletons)
- **h(T) = min(T) · (n − max(T))** (for |T| ≥ 2)

## Proof

By inclusion-exclusion:

f(S) = |⋃_{k∈S} tiles_k| = Σ_{∅≠T⊆S} (−1)^{|T|+1} |⋂_{k∈T} tiles_k|

For a singleton T = {k}:
|tiles_k| = #{(x,y): x≥k>y, x≥y+2}
= Σ_{y=0}^{k-2} (n-k) + (n-k-1)   [the y=k-1 case has x≥k+1]
= (k-1)(n-k) + (n-k-1) = k(n-k) - 1. ✓

For |T| ≥ 2 with min(T)=a, max(T)=b:
|⋂_{k∈T} tiles_k| = #{(x,y): x≥k>y for ALL k∈T}
= #{(x,y): x≥b, y<a, x≥y+2}

## Notes for the formalizer

(none yet)
