---
id: THM-446-sidon-additive-relation-ladder-and-the-dyadic-hard-core-of-erdos-64
source: 01-canon/theorems/THM-446-sidon-additive-relation-ladder-and-the-dyadic-hard-core-of-erdos-64.md
source_commit: c21c071
status: open
---

## Informal statement

# THM-446 — Sidon = C4-free = minimal additive energy; the cauldron/Sidon/B_h additive-relation ladder, whose dyadic rungs are the power-of-two cycles of Erdős Problem 64

**Status:** PROVED (Sidon ⟺ C4-free ⟺ minimal additive energy — classical; recomputed) + REFRAME
(the additive-relation ladder; Erdős 64's hard core = high-girth/Sidon-Cayley graphs) + VERIFIED
(the hard core carries a power-of-two cycle, all tested cages/random girth-≥5 cubic). **Erdős 64
remains OPEN; this is a reframing + exploration via the repo's Sidon/summand/cauldron objects, not a
proof.**
**Source:** opus-2026-06-08-S710. The user's ask: connect Sidon sequences to the repo's "cauldron
game" and "summand graph" and use the insight on Erdős Problem 64. Builds on the summand graph
(`a→n` iff `a+b=n`, THM-401 pair-sum/shell), the cauldron game (Schur 3-term, S618/HYP-2190),
S706/THM-441 (additive energy = ‖autocorrelation‖²), THM-445 (Erdős 64), THM-442 (additive↔mult).

## (1) Sidon ⟺ C4-free ⟺ minimal additive energy (PROVED/classical)

For a finite set `S ⊂ ℤ`:
```
   S is Sidon (B_2: all pairwise sums distinct)
     ⟺  the only solutions of a+b=c+d in S are trivial ({a,b}={c,d})
     ⟺  additive energy E(S) = #{a+b=c+d} = 2|S|² − |S| (the minimum)
     ⟺  the summand graph has every node-fibre ≤1 on S (no two S-pairs share a sum)
     ⟺  the associated additive Cayley graph is C4-FREE (no additive quadruple = no 4-cycle).
```
**Verified** (`…s710.py`): Sidon `{1,2,5,11},{0,1,3,7}` have `E=28=2·16−4` (excess 0); non-Sidon
`{1,2,3,4}` and AP `{2,4,6,8}` have `E=44` (excess 16 = the C4 / **Sidon-defect**). By S706/THM-441,
`E(S)=‖1_S⋆1_S‖²=Σ_ξ|\hat{1_S}(ξ)|⁴` — so the **Sidon-defect is the autocorrelation's excess
mass**, and a **4-cycle is one unit of additive energy** above the Sidon floor.

## (2) The additive-relation ladder (the cauldron ⊂ Sidon ⊂ B_h reframe)

The repo's additive objects are the rungs of one ladder, indexed by the number of terms in the
relation they forbid/realise:
```
   CAULDRON / Schur :  3-term   A+B=C        (the "boil")     ↔ a TRIANGLE (odd, the smallest cycle)
   SIDON (B_2)      :  4-term   A+B=C+D       (quadruple)      ↔ a 4-CYCLE  = the FIRST power of two
   B_h              :  2h-term  Σ relation                     ↔ a 2h-CYCLE
   …                                                              …
   POWER OF TWO     :  2^k-term dyadic relation                ↔ a 2^k-CYCLE = the Erdős-64 rungs
```
- The **cauldron game** lives at the 3-term (odd, triangle) rung; **Sidon** at the 4-term (`C4`,
  first 2-power) rung. The summand graph reads all rungs (its node `n` collects the pairs summing to

## Notes for the formalizer

(none yet)
