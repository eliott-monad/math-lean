---
id: THM-221-uncovered-edge-characterization
source: 01-canon/theorems/THM-221-uncovered-edge-characterization.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-221: Uncovered Edge Characterization

**Status:** PROVED
**Source:** opus-2026-03-15-S72
**Verified:** Exhaustive n=5,6 (10240/10240, 491520/491520 correct)

## Statement

In a tournament T on n vertices, edge i→j participates in no transitive triple (i.e., is "uncovered") if and only if:
- out-degree(i) = 1 (i beats only j)
- out-degree(j) = n−2 (j beats everyone except i)

## Proof

For each vertex k ∉ {i,j}, there are exactly 4 configurations of edges between k and {i,j} in a tournament. Three of them create a transitive triple containing edge i→j:

| k→i? | k→j? | Triple containing i→j? |
|------|------|----------------------|
| k→i  | k→j  | (k,i,j): k→i→j, k→j ✓ |
| k→i  | j→k  | None ✗ |
| i→k  | k→j  | (i,k,j): i→k→j, i→j ✓ |
| i→k  | j→k  | (i,j,k): i→j→k...wait, need i→k too. Have i→k ✓ |

Edge i→j is uncovered iff ALL k give the sole non-triple case: k→i AND j→k.

If this holds for all k ∈ V\{i,j}:
- Every vertex beats i (except j), so out-deg(i) = 1
- j beats every vertex (except i beats j), so out-deg(j) = n−2

Conversely, if out-deg(i)=1 and out-deg(j)=n−2, then for all k: k→i and j→k. ∎

## Corollaries

**Score sufficient condition:** If min(score sequence) ≥ 2, then every edge is covered by a transitive triple.

**Connection to β₁:** See THM-222.

## Notes for the formalizer

(none yet)
