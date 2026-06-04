---
id: THM-064-W-imaginary-evaluation
source: 01-canon/theorems/THM-064-W-imaginary-evaluation.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-064: W(i/2) Evaluation and H-Maximizer Characterization

**Type:** Theorem + Conjecture
**Certainty:** 4 -- VERIFIED (exhaustive n=3,4,5; sampled n=6,7; partially at n=11)
**Status:** PARTIALLY PROVED
**Added by:** kind-pasteur-2026-03-07-S27
**Tags:** #W-polynomial #forward-edge #Paley #maximizer #complex-evaluation

---

## Statement

### (i) W(i/2) is real at odd n, pure imaginary at even n

For any tournament T on n vertices:
- If n is odd: W(i/2) is real (W has only even powers of r)
- If n is even: W(i/2) is pure imaginary (W has only odd powers of r)

This follows immediately from the r-parity of W (THM-061).

### (ii) Polar decomposition

Each permutation P contributes to W(i/2) a term of modulus (1/sqrt(2))^{n-1} and argument pi/4 * (3(n-1) - 2k_P), where k_P = number of forward edges.

Therefore:

**W(i/2) = exp(i*pi*3(n-1)/4) / 2^{(n-1)/2} * A(-i)**

where A(x) = sum_k a_k x^k is the forward-edge generating polynomial.

### (iii) W(i/2) = 0 iff (x^2+1) | A(x)

Since A(x) has real coefficients and is palindromic (a_k = a_{n-1-k}), the condition A(-i) = 0 is equivalent to:

**(x^2 + 1) divides A(x)**

which decomposes into two real conditions:
- sum_k (-1)^k a_{2k} = 0 (alternating sum of even-indexed coefficients)
- sum_k (-1)^k a_{2k+1} = 0 (alternating sum of odd-indexed coefficients)

## Notes for the formalizer

(none yet)
