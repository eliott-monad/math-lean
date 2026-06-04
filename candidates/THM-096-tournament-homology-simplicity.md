---
id: THM-096-tournament-homology-simplicity
source: 01-canon/theorems/THM-096-tournament-homology-simplicity.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-096: Tournament Path Homology Structure

**Status:** PARTIALLY-TRUE (holds for n <= 7; REFUTED at n=8)
**Author:** kind-pasteur-S45 (2026-03-09)
**Depends on:** THM-095 (seesaw mechanism)

## Statement (CORRECTED)

**For n <= 7** (verified exhaustive n<=6, sampled n=7):
1. **H_0(T) = Z** (every tournament is weakly connected)
2. **H_{2k}(T) = 0** for all k >= 1 (even Betti numbers vanish)
3. **At most one H_{2k+1}(T) is nonzero**, and when nonzero it equals Z
4. **chi(T) in {0, 1}**

**For n = 8** (COUNTEREXAMPLES FOUND):
- beta_4 > 0 for ~0.5% of tournaments (values 1 and 5 observed)
- beta_1 AND beta_5 simultaneously nonzero (~0.2%)
- chi ranges over {-1, 0, 1, 2, 6}
- beta_2 = 0 STILL HOLDS (0/1000)

**What survives at n=8:**
- H_0 = Z always
- beta_2 = 0 always (=> THM-095 seesaw beta_1*beta_3=0 is safe)
- beta_1 in {0,1}, beta_3 in {0,1,2} (MISTAKE-018: beta_3=2 found at 0.08% rate)
- beta_1 and beta_3 never both nonzero

**What breaks at n=8:**
- Even Betti vanishing (beta_4 can be 1 or 5)
- "Single hole" simplicity (beta_1 + beta_5 coexist)
- chi in {0,1} (values -1 and 2+ observed)

## Betti profiles at n=8

| Profile | chi | Frequency | Description |
|---|---|---|---|
| [1,0,0,0,0,0,0,0] | 1 | ~83% | Contractible |
| [1,0,0,1,0,0,0,0] | 0 | ~14% | H_3 = Z |
| [1,1,0,0,0,0,0,0] | 0 | ~1% | H_1 = Z |
| [1,0,0,0,1,0,0,0] | 2 | ~1% | H_4 = Z (EVEN!) |
| [1,0,0,0,5,0,0,0] | 6 | ~0.5% | H_4 = Z^5 (EVEN!) |

## Notes for the formalizer

(none yet)
