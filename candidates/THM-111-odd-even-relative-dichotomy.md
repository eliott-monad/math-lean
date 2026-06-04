---
id: THM-111-odd-even-relative-dichotomy
source: 01-canon/theorems/THM-111-odd-even-relative-dichotomy.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-111: Odd/Even Relative Homology Dichotomy

**Status:** CONJECTURE (strong computational evidence)
**Filed by:** opus-2026-03-09-S52

## Statement

For any tournament T on n vertices and any vertex v:

**Odd levels:** dim H_{2k+1}(T, T\v) ≤ 1 for all k ≥ 0.

**Even levels:** dim H_{2k}(T, T\v) can be arbitrarily large.

## Proof of Boolean Odd Betti (THM-098) from Odd Relative Bound

**Theorem:** If H_{2k+1}(T, T\v) ≤ 1 for all (T,v), then β_{2k+1}(T) ≤ 1
for all tournaments T.

**Proof by strong induction on n:**

Base: β_{2k+1} = 0 for n small enough (n ≤ 4k+3 suffices, since Omega_{2k+1}
requires 2k+2 vertices for nontrivial paths).

Inductive step: Assume β_{2k+1}(T') ≤ 1 for all (n-1)-vertex tournaments T'.
Let T be an n-vertex tournament. For ANY vertex v, the LES of (T, T\v) gives:

    H_{2k+1}(T\v) →^{i_*} H_{2k+1}(T) →^{j_*} H_{2k+1}(T,T\v) → ...

From the general LES inequality (no conditions on adjacent Betti numbers):

    β_{2k+1}(T) = dim(im i_*) + dim(im j_*)
                 ≤ β_{2k+1}(T\v) + dim H_{2k+1}(T,T\v)
                 ≤ 1 + 1 = 2

But this only gives ≤ 2. The sharper bound needs one of:

(a) **Good vertex existence**: ∃ v with β_{2k+1}(T\v) ≤ β_{2k+1}(T) - dim H_{2k+1}(T,T\v).
(b) **Simultaneous bound**: When β_{2k+1}(T\v) = 1, either i_* = 0 or H_{2k+1}(T,T\v) = 0.

For k = 0 (β₁): PROVED (THM-103, star constraint argument).

## Notes for the formalizer

(none yet)
