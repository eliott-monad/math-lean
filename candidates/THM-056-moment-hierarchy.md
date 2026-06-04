---
id: THM-056-moment-hierarchy
source: 01-canon/theorems/THM-056-moment-hierarchy.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-056: Forward-Arc Moment Hierarchy Theorem

**Type:** Theorem (algebraic proof + computational verification)
**Certainty:** 5 -- PROVED algebraically at n=7, verified computationally at n=5,9
**Status:** PROVED at n=7 (complete); PROVED at n=5 (complete)
**Added by:** opus-2026-03-06-S28
**Tags:** #moments #transfer-matrix #hierarchy #sigma-patterns

---

## Statement

**Theorem.** For a tournament T on n=7 vertices, let f_P = #{forward arcs in permutation P}. Then:

sum_P f_P^j = a_j(t3) + b_j(t5) + c_j(bc) + d_j(H)

where all coefficients are LINEAR in (t3, t5, bc, H). Explicitly:

| j | sum_P f^j | Depends on |
|---|-----------|------------|
| 0 | 5040 | universal |
| 1 | 15120 | universal |
| 2 | 48720 + 480*t3 | t3 |
| 3 | 166320 + 4320*t3 | t3 |
| 4 | 596064 + 27840*t3 + 288*t5 + 576*bc | t3, t5, bc |
| 5 | 2227680 + 158400*t3 + 4320*t5 + 8640*bc | t3, t5, bc |
| 6 | 8636880 + 850080*t3 + 40320*t5 + 80640*bc + 720*H | t3, t5, bc, H |

where:
- t3 = directed 3-cycle count
- t5 = directed 5-cycle count
- bc = sum over 6-vertex subsets of #{pairs of vertex-disjoint directed 3-cycles}
- H = directed Hamiltonian path count

---

## Key Properties

1. **Linearity:** All moments are LINEAR in the tournament invariants — no quadratic or higher terms.

## Notes for the formalizer

(none yet)
