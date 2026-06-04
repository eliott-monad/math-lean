---
id: THM-013-arc-flip-delta-I
source: 01-canon/theorems/THM-013-arc-flip-delta-I.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-013: Arc-Flip Formula for DeltaH

**Type:** Theorem (verified n=4,...,9; proved at n<=7)
**Certainty:** 5 -- PROVED at n<=7 (exhaustive); VERIFIED at n=8,9 (sampled)
**Status:** PROVED at n<=7, VERIFIED for general n up to n=9
**Added by:** opus-2026-03-05-S2
**Tags:** #ocf #arc-reversal #independence-polynomial #open-q-009 #claim-a

---

## Statement (General)

Let T be a tournament on n vertices, and T' obtained by flipping arc i->j to j->i.

**The GENERAL formula (all n):**

**DeltaH = H(T) - H(T') = DeltaI(Omega(T), 2) = sum_{k>=1} 2^k * Delta(alpha_k)**

where alpha_k = #{independent sets of size k in the odd-cycle conflict graph Omega(T)}.

### Computing Delta(alpha_k)

An odd cycle is affected by the flip iff it contains both i and j. Two VD cycles cannot both contain {i,j}, so at most one cycle in any independent set is affected.

**Delta(alpha_k)** = sum_L [sum_{C: L-cycle using i->j in T} alpha_{k-1}(comp(C))
                          - sum_{C': L-cycle using j->i in T'} alpha_{k-1}(comp(C'))]

where comp(C) = V \ V(C), and alpha_{k-1} counts independent sets in Omega(T[comp(C)]).

Key: comp(C) subset of V\{i,j}, so T[comp(C)] = T'[comp(C)] (unchanged by flip).

### Simplified forms by n

**n<=5:** alpha_k = 0 for k >= 2 (can't fit two VD 3-cycles).
  DeltaH = 2 * sum_L (DL - CL)

**n=6:** alpha_k = 0 for k >= 3. Only VD 3-3 pairs contribute to alpha_2.
  DeltaH = -2*sum_x s_x*H(B_x) + 2*(D5-C5)
  where s_x = 1 - T[x][i] - T[j][x], B_x = V\{i,j,x}

## Notes for the formalizer

(none yet)
