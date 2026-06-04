---
id: overnight_session_S16_synthesis
source: 05-knowledge/results/overnight_session_S16_synthesis.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# Overnight Session S16 — Key Discoveries

**Session:** kind-pasteur-2026-03-21-S16
**Duration:** Extended investigation session
**Topics:** OCR plateau, permanent gaps, Paley maximizer

---

## DISCOVERY 1: OCR Has Exact Rational Values (NEW THEOREM)

The Orthogonal Control Ratio R²(S₂, H) is an exact rational number for all n:

| n | OCR = R²(S₂, H) | 1 - OCR | Denominator |
|---|-----------------|---------|-------------|
| 3 | 1/1 | 0 | — |
| 4 | 1/1 | 0 | — |
| 5 | **18/19** | 1/19 | 19 (prime) |
| 6 | **12/13** | 1/13 | 13 (prime) |
| 7 | **120/131** | 11/131 | 131 (prime) |

**Verified exhaustively** at n=5 (1,024 tournaments), n=6 (32,768), n=7 (2,097,152).

**The denominators 19, 13, 131 are all prime.** This is a new integer sequence
not found in OEIS. The sequence of OCR denominators (excluding degenerate n≤4)
is: **19, 13, 131, ...**

### Exact moments:

| n | E[H] | Var(H) | Var(S₂) | Cov(H, S₂) |
|---|------|--------|---------|-------------|
| 5 | 15/2 | 285/16 | 15/2 | -45/4 |
| 6 | 45/2 | 585/4 | 15 | -45 |
| 7 | 315/4 | 206325/128 | 105/4 | -1575/8 |

### Key structural facts:

1. **c₃ is perfectly determined by scores** (Rao's formula: c₃ = C(n,3) - Σ C(sᵢ,2)).
   So R²(S₂, H) = R²(c₃, H) exactly.

2. **H = 1 + 2c₃ EXACTLY at n ≤ 4** (no 5-cycles possible). This gives OCR = 1.

## Notes for the formalizer

(none yet)
