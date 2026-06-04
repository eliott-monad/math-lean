---
id: THM-168-lambda-completeness
source: 01-canon/theorems/THM-168-lambda-completeness.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-168: Lambda Pair-Coverage Completeness

**Status:** VERIFIED (exhaustive n=5,6; n=7 regular; n=7 general pending)
**Session:** kind-pasteur-2026-03-13-S61

## Statement

### Definition

For a tournament T on n vertices, define the **pair-coverage function**:

    lambda_{uv}(T) = #{3-cycle vertex sets containing both u and v}

The **lambda histogram** is the sorted multiset {lambda_{uv} : {u,v} in C(n,2)}.

### Main result

For the following score classes, the lambda histogram uniquely determines H(T):

- **n=5, ALL score classes:** Lambda determines H. (Exhaustive, 1024 tournaments)
- **n=6, score (2,2,2,3,3,3):** 4 lambda classes map to 4 distinct H values.
  Lambda determines H AND c5_dir independently.
- **n=7, regular (3,3,3,3,3,3,3):** 3 lambda classes map to 3 distinct H values.
  Lambda determines H via quadratic formula (THM-167).

### Full n=7 results (exhaustive, 2097152 tournaments)

- **288 distinct (score, lambda) classes**
- **233 complete** (lambda determines H): 80.9%
- **55 ambiguous** (lambda does NOT determine H): 19.1%
- **39/59 score classes** are lambda-complete (66.1%)
- **20/59 score classes** are lambda-incomplete (33.9%)

Complete score classes include: transitive, near-transitive, regular, and many others.

### Failure cases

- **n=6:** 3 ambiguous (score, lambda) classes. Extended lambda (3+5 cycle coverage) still ambiguous for 2.
- **n=7:** 55 ambiguous lambda classes in 20 score classes. Even c5 does NOT resolve (same lambda + c5 can give different H).
- First ambiguous: score (0,2,3,3,4,4,5), lambda with specific pattern: H in {25, 29} with same c5=6.

## Notes for the formalizer

(none yet)
