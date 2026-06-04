---
id: tiling_count_theorem
source: 05-knowledge/results/tiling_count_theorem.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THEOREM: Tiling Count = H / |Aut|
## opus-2026-04-03-S27

### Statement
For any tournament T on n vertices with isomorphism class [T]:

  tiling_count([T]) = H(T) / |Aut(T)|

where H(T) = number of Hamiltonian paths, |Aut(T)| = automorphism group size.

### Proof sketch
Each tiling corresponds to a labeled tournament with the base path n→(n-1)→...→1.
A relabeling σ ∈ S_n maps T to σ(T). The tournament σ(T) has the base path iff
σ^{-1}(n)→σ^{-1}(n-1)→...→σ^{-1}(1) is a Hamiltonian path in T.
So |{σ : σ(T) has base path}| = H(T).
But σ₁(T) = σ₂(T) iff σ₂⁻¹σ₁ ∈ Aut(T), so distinct tilings = H(T)/|Aut(T)|.

### The Master Equation
Summing over all isomorphism classes:

  2^m = Σ_{[T]} H(T) / |Aut(T)|

This is verified at n=3,4,5,6 (every class, every entry matches ✓).

### Consequences

1. **H is always a multiple of |Aut|.** Since tiling count is a positive integer.
   This constrains which H values can occur for tournaments with given automorphism groups.

2. **The "H = size" observation** (S3) means |Aut| = 1 for those classes.
   At n=6, most classes have |Aut| = 1 (trivial automorphism group).
   Only classes with |Aut| > 1 have H ≠ tiling count.

3. **For SC classes with odd tiling count (THM-281):**
   H / |Aut| is odd → H and |Aut| have the same 2-adic valuation... 
   NO. H/|Aut| odd means: the highest power of 2 dividing H equals
   the highest power of 2 dividing |Aut|. In particular, if |Aut| is odd
   (which it often is), then H must also be odd (which it always is for tournaments).

4. **The transitive tournament:** H=1, |Aut|=1, tiling_count=1. ✓

## Notes for the formalizer

(none yet)
