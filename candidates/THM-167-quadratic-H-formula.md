---
id: THM-167-quadratic-H-formula
source: 01-canon/theorems/THM-167-quadratic-H-formula.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-167: Quadratic H Formula for Regular n=7

**Status:** VERIFIED (exhaustive, 2640 regular tournaments)
**Session:** kind-pasteur-2026-03-13-S61

## Statement

For every regular tournament T on n=7 vertices:

    H(T) = disj_33^2 - 23*disj_33 + 301

where disj_33 is the number of vertex-disjoint pairs of 3-cycle vertex sets.

### Equivalent formulations

Using the constraint c5_dir + 2*disj_33 = 56:

    c7_dir = (disj_33^2 - 23*disj_33 + 160) / 2

And in terms of pair-coverage variance:

    H = (441/4)*var_lambda^2 - (189/2)*var_lambda + 189

where var_lambda is the variance of the pair-coverage function lambda_{uv} = #{3-cycles containing both u and v}.

### Achieved values

| disj_33 | H   | c7_dir | c5_dir | var_lambda | Count | Description   |
|---------|-----|--------|--------|------------|-------|---------------|
| 7       | 189 | 24     | 42     | 0          | 240   | Paley (BIBD)  |
| 10      | 171 | 15     | 36     | 6/21       | 1680  |               |
| 14      | 175 | 17     | 28     | 14/21      | 720   |               |

### Key properties

1. **Parabola with minimum at disj=11.5:** H_min = 168.75 (not achievable by any tournament).
   Paley (disj=7) is FARTHEST from minimum, giving maximum H.

2. **BIBD characterization:** Paley T_7 has lambda=2 for ALL vertex pairs (uniform pair-coverage).
   This is the unique (7,3,2)-BIBD. The uniformity minimizes disj via Jensen's inequality.

## Notes for the formalizer

(none yet)
