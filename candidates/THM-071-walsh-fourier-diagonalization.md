---
id: THM-071-walsh-fourier-diagonalization
source: 01-canon/theorems/THM-071-walsh-fourier-diagonalization.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-071: Walsh-Fourier Diagonalization of H(T)

**Type:** Theorem
**Certainty:** 5 -- PROVED (exhaustive n=5; analytical n=7)
**Status:** PROVED at n=5,7; CONJECTURED at general n
**Added by:** opus-2026-03-06-S11b (continued through opus-2026-03-07-S35)
**Tags:** #Walsh-Hadamard #Fourier #diagonalization #hypercube #telescoping

---

## Statement

### (i) Walsh degree decomposition

The OCF H(T) on the Boolean hypercube {0,1}^m (m = C(n,2)) decomposes into Walsh degree components D_{2j} for j = 0, 1, ..., (n-1)/2, where each D_{2j} has Walsh degree EXACTLY 2j.

Define Fourier coefficients w_k = 2^k * D_{n-1-k}. Then:

**H(T) = sum_{j=0}^{(n-1)/2} w_{n-1-2j} / 2^{n-1-2j}**

where w_{n-1-2j} is a function of tournament invariants with Walsh degree exactly 2j.

### (ii) Explicit formulas

**n=5** (exhaustively verified, all 1024 tournaments):
- w_4 = 120 = 5! (constant)
- w_2 = 12*t3 - 30 (Walsh degree 2)
- w_0 = 1 - t3 + 2*t5 (Walsh degree 4)
- H = 120/16 + (12*t3-30)/4 + (1-t3+2*t5) = 1 + 2*t3 + 2*t5

**n=7** (analytically verified):
- w_6 = 5040 = 7! (constant)
- w_4 = 240*(t3 - 35/4) (Walsh degree 2)
- w_2 = -60*t3 + 12*t5 + 24*bc33 + 231 (Walsh degree 4)
- w_0 = -17/4 + 2*t3 - t5 + 2*t7 - 2*bc33 (Walsh degree 6)

### (iii) Generalized telescoping

The pure-degree property of each w_k is guaranteed by telescoping identities:

## Notes for the formalizer

(none yet)
