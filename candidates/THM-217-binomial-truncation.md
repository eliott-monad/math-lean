---
id: THM-217-binomial-truncation
source: 01-canon/theorems/THM-217-binomial-truncation.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-217: Binomial Truncation of g_k

**Status:** VERIFIED (computationally, k=1..11)
**Session:** opus-2026-03-15-S89c
**Depends on:** THM-216

## Statement

For all k ≥ 1, the polynomial g_k(m) has support on at most {C(m,0), C(m,1), C(m,2), C(m,3)} in the binomial basis. Specifically:

$$g_k(m) = g_k(0) \cdot \binom{m-1}{2} + m + 2(k-1) \cdot \binom{m}{2} + 2a_k \cdot \binom{m}{3}$$

where:
- g_k(0) is the polynomial extrapolation to m=0 (nonzero for k ≥ 4)
- a_k is the leading coefficient of 3·g_k(m) = a_k·m³ + b_k·m² + c_k·m + d_k
- The identity 1 - m + C(m,2) = C(m-1,2) is used

## Consequences

1. **Degree bound**: g_k(m) has degree ≤ 3 for all k (degree exactly 3 for k ≥ 3)
2. **Two free parameters**: The entire polynomial is determined by (g_k(0), a_k)
3. **Universal boundary**: g_k(1) = 1 and g_k(2) = 2k hold automatically
4. **Binomial cancellation**: In the naive formula g_k^naive(m) = Σ C(k-1,r-1)·C(m,r)·2^{r-1}, the C(m,r) coefficient for r ≥ 4 is C(k-1,r-1)·2^{r-1}. The true coefficient is EXACTLY ZERO. The correction kills these terms completely.

## Binomial basis decomposition

| k | Δ⁰ = g_k(0) | Δ¹ | Δ² | Δ³ = 2a_k |
|---|---|---|---|---|
| 1 | 0 | 1 | 0 | 0 |
| 2 | 0 | 1 | 2 | 0 |
| 3 | 0 | 1 | 4 | 4 |
| 4 | -8 | 9 | -2 | 20 |
| 5 | -592 | 593 | -584 | 776 |
| 6 | -114320 | 114321 | -114310 | 139320 |
| 7 | -33338240 | 33338241 | -33338228 | 39652540 |
| 8 | -12475185560 | 12475185561 | -12475185546 | 14619453484 |
| 9 | -5629549881808 | 5629549881809 | -5629549881792 | 6525375440480 |
| 10 | -2973062116837472 | 2973062116837473 | -2973062116837454 | 3415543797850416 |
| 11 | -1807627677927630720 | 1807627677927630721 | -1807627677927630700 | 2060690587896716340 |

## Notes for the formalizer

(none yet)
