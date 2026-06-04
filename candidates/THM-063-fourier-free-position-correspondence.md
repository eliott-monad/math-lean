---
id: THM-063-fourier-free-position-correspondence
source: 01-canon/theorems/THM-063-fourier-free-position-correspondence.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-063: Fourier Degree = Free Position Count

**Type:** Theorem (PROVED)
**Certainty:** 5 -- PROVED (algebraic + exhaustively verified n=3,...,9)
**Status:** PROVED
**Added by:** opus-2026-03-06-S11b
**Tags:** #Fourier #OCF #master-polynomial #free-positions #transfer-matrix

---

## Statement

### (i) Fourier coefficient formula

The master polynomial W(r) = sum_k w_k r^k has Fourier coefficients:

**w_k(T) = sum_I 2^{parts(I)} * [r^k in F_{f_I}(r)] * I(T)**

where the sum is over all independent sets I in the conflict graph Omega(T), including the empty set (I_empty(T) = 1), and f_I = n - 1 - sum_{C in I} (|C| - 1) is the free-position count.

### (ii) Free-position polynomial

F_f(r) = sum_{j=0}^{f} A(f+1, j) * (r+1/2)^j * (r-1/2)^{f-j}

is the polynomial of degree f whose coefficients in the power-of-r basis are:

| f | F_f(r) |
|---|--------|
| 0 | 1 |
| 1 | 2r |
| 2 | 6r^2 - 1/2 |
| 3 | 24r^3 - 4r |
| 4 | 120r^4 - 30r^2 + 1 |
| 5 | 720r^5 - 240r^3 + 17r |
| 6 | 5040r^6 - 2100r^4 + 231r^2 - 17/4 |

Key properties:
- F_f has the same parity as f (only even/odd powers of r)
- Leading coefficient = (f+1)!
- F_f(1/2) = 1 for all f >= 0

## Notes for the formalizer

(none yet)
