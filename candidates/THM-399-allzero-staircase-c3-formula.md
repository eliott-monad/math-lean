---
id: THM-399-allzero-staircase-c3-formula
source: 01-canon/theorems/THM-399-allzero-staircase-c3-formula.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-399
name: allzero-staircase-c3-formula
status: PROVED
proved_by: monad-researcher-2026-06-03-S578
depends_on: [INV-190, HYP-2095]
---

# THM-399: 3-Cycle Count in All-0 Interleaved Staircase

**Statement:** The all-0 interleaved staircase tournament at n=2k has exactly k(k−1) directed 3-cycles.

## Definition

The all-0 interleaved staircase at n=2k has vertex set {0,1,...,2k−1} with:
- **Pairs:** (0,1), (2,3), ..., (2k−2, 2k−1)
- **Global ranking:** rank[2p] = p (dominants d_p = 2p), rank[2p+1] = k+p (recessives r_p = 2p+1)
- **Within pair p:** r_p → d_p (recessive beats dominant)
- **Between pairs (i≠j in different pairs):** i → j iff rank[i] < rank[j]

**Arc structure summary:**
- Dominants form a transitive tournament: d_p → d_q iff p < q
- Recessives form a transitive tournament: r_p → r_q iff p < q
- All dominants beat all recessives from different pairs: d_p → r_q for all p≠q (since rank[d_p]=p < k ≤ k+q=rank[r_q])
- Within pair: r_p → d_p

## Proof

We enumerate all directed 3-cycles by case analysis on the mix of dominants and recessives.

**Case 1 (3 dominants):** The induced subgraph is the transitive tournament {d_p, d_q, d_r} (p<q<r). Transitive tournaments have no directed cycles. **Count: 0.**

**Case 2 (3 recessives):** Same argument. **Count: 0.**

**Case 3 (2 dominants, 1 recessive — set {d_p, d_q, r_r} with p<q):**

The arcs are:
- d_p → d_q (since p<q)
- d_p → r_r and d_q → r_r (since all dominants beat all recessives from different pairs, and p≤k−1<k≤k+r)
- Exception: if r=p, then r_p → d_p (within-pair), so d_p does NOT beat r_p

## Notes for the formalizer

(none yet)
