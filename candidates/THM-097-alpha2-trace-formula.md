---
id: THM-097-alpha2-trace-formula
source: 01-canon/theorems/THM-097-alpha2-trace-formula.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-097: Alpha_2 Trace Formula

**Status:** PROVED
**Proved by:** kind-pasteur-2026-03-07-S39b
**Verified computationally:** n=5,6 exhaustive (all tournaments), n=7 sampled (500), 0 failures

---

## Statement

For any tournament T on n vertices with adjacency matrix A:

**alpha_2(Omega_3(T)) = C(c_3, 2) - sum_v C(t_3(v), 2) + s_2**

where:
- c_3 = number of directed 3-cycles (via Moon's formula: c_3 = C(n,3) - sum_v C(s_v, 2))
- t_3(v) = (A^3)[v][v] = number of directed 3-cycles through vertex v
- s_2 = sum over directed edges (a->b) of C((A^2)[b][a], 2) = number of 3-cycle pairs sharing exactly 2 vertices
- alpha_2 = number of vertex-disjoint pairs of directed 3-cycles

All quantities are computable in O(n^3) via matrix multiplication.

For n <= 7: alpha_2(Omega_3) = alpha_2(Omega) (full conflict graph), since no 5-cycle can be vertex-disjoint from any 3-cycle (would need 5+3=8 > 7 vertices).

---

## Proof

Partition pairs of 3-cycles by overlap count:
- s_0 = pairs sharing 0 vertices (vertex-disjoint) = alpha_2
- s_1 = pairs sharing exactly 1 vertex
- s_2 = pairs sharing exactly 2 vertices

Total pairs: C(c_3, 2) = s_0 + s_1 + s_2.

**Claim 1:** sum_v C(t_3(v), 2) = s_1 + 2*s_2.

*Proof:* Each pair sharing exactly k vertices (k=1 or 2) contributes C(k,1) = k to the sum (counted once per shared vertex). So sum = 1*s_1 + 2*s_2.

Note: sharing 3 vertices is impossible in tournaments (unique directed cycle per vertex triple).

## Notes for the formalizer

(none yet)
