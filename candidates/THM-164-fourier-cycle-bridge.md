---
id: THM-164-fourier-cycle-bridge
source: 01-canon/theorems/THM-164-fourier-cycle-bridge.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-164: Fourier-Cycle Bridge

**Status:** VERIFIED (n=5 exhaustive, n=6 partial, n=7 regular)
**Session:** kind-pasteur-2026-03-13-S61

## Statement

The Walsh-Hadamard Fourier decomposition of H(T) on tournament space {-1,+1}^m has a direct correspondence with the cycle count decomposition:

### Degree-2k Fourier term encodes (2k+1)-cycle counts

| Fourier degree | Cycle length | Score-determined? | Energy fraction (n=5) |
|:---:|:---:|:---:|:---:|
| 0 | none (constant E[H]) | trivially | 75.95% |
| 2 | 3-cycles (c3) | YES | 22.78% |
| 4 | 5-cycles (c5) | NO | 1.27% |
| 6 | 7-cycles (c7) | NO | 0% at n<=6 |

### At n=5, within the only varying score class (1,2,2,2,3):

H = 9 + 2 * c5_dir, exactly.

All tournaments in this class have c3_dir = 4 (score-determined).
c5_dir = {1, 2, 3} distinguishes H = {11, 13, 15}.

H_4 = 2 * c5_dir - 3 (exact linear relationship).

## The Vitali Structure

The Fourier decomposition reveals a hierarchy of "measurability":

1. **Level 0 (measurable)**: The constant E[H] = n!/2^{n-1}. Universal.
2. **Level 2 (score-measurable)**: H_2 = c_2 * n * (m - 2*Var_s). Determined by score sequence. Captures 3-cycle contribution. This is the "Lebesgue-measurable" part.
3. **Level 4 (cycle-measurable)**: H_4 encodes 5-cycle count beyond score determination. This is the first "non-score" contribution. It's the first "Vitali-like" component — you need more structure than scores to determine it.
4. **Level 2k**: (2k+1)-cycle counts. Each successive level captures finer cycle structure.

## Key Relationships

- c3 is ALWAYS score-determined: c3 depends only on the degree sequence via the formula c3 = C(n,3) - sum_v C(s_v, 2) + ... (Rao's formula). For regular tournaments: c3 = n(n-1)(n+1)/24.

## Notes for the formalizer

(none yet)
