---
id: THM-165-coefficient-2-theorem
source: 01-canon/theorems/THM-165-coefficient-2-theorem.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-165: The Coefficient-2 Theorem and Cycle-Disjointness Constraint

**Status:** VERIFIED (n=3-7 exhaustive)
**Session:** kind-pasteur-2026-03-13-S61

## Statement

### Part 1: Coefficient-2 for Hamiltonian Cycles

For an n-vertex tournament T, each directed Hamiltonian cycle (n-cycle) uses all n vertices, so it conflicts with every other directed odd cycle in Omega(T). Therefore, changing the number of directed Hamiltonian cycles by delta changes H(T) by exactly 2*delta.

**Within any fixed "sub-Hamiltonian class"** (tournaments sharing the same c3, c5, ..., c_{n-2} structure), we have:

    H(T) = constant + 2 * c_n_dir(T)

where c_n_dir counts directed Hamiltonian cycles from a fixed vertex.

### Part 2: Verified Instances

**n=5, score class (1,2,2,2,3):**
- H = 9 + 2 * c5_dir (c5_dir in {1,2,3})
- c3_dir = 4 (score-determined, constant in class)
- Residual H - 2*c5_dir = 9 for all 280 tournaments in this class

**n=7, regular tournaments (all scores = 3):**
- H = 141 + 2 * c7_dir (c7_dir in {15, 17, 24})
- c3_dir = 14, c5_dir varies (36, 28, 42)
- Residual H - 2*c7_dir = 141 for all 2640 regular tournaments

### Part 3: The Cycle-Disjointness Constraint

For regular n=7, the c5 coefficient is ZERO in the bridge equation because of a rigid constraint:

    c5_dir + 2 * disj_33 = 56

where disj_33 = number of vertex-disjoint 3-cycle pairs. Verified:
- c5_dir=36, disj_33=10: 36 + 20 = 56
- c5_dir=28, disj_33=14: 28 + 28 = 56
- c5_dir=42, disj_33=7: 42 + 14 = 56

## Notes for the formalizer

(none yet)
