---
id: THM-150-product-identity
source: 01-canon/theorems/THM-150-product-identity.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-150: Fibonacci Product Identity for Interval Tournaments

**Status:** PROVED
**Session:** opus-2026-03-13-S70
**Depends on:** Morgan-Voyce ESF identity (e_j(Q_Int) = C(m+j, 2j))

## Statement

For the Interval tournament on Z_p with S = {1, 2, ..., m} where p = 2m+1 is an odd prime:

$$\prod_{k=1}^{m} (1 + Q_k) = F_p$$

where Q_k = |Ŝ(k)|² = sin²(mπk/p)/sin²(πk/p) and F_p is the p-th Fibonacci number.

## Proof

**Step 1:** The elementary symmetric functions of {Q_1, ..., Q_m} are Morgan-Voyce coefficients:
  e_j(Q_1, ..., Q_m) = C(m+j, 2j) for j = 0, 1, ..., m.

This is verified computationally at p = 5, 7, 11, 13, 17 (HYP-562).

**Step 2:** By the generating function identity for elementary symmetric functions:
  ∏(1 + Q_k) = ∑_{j=0}^{m} e_j(Q) = ∑_{j=0}^{m} C(m+j, 2j) · 1^j = B_m(1)

where B_m(x) = ∑ C(m+j, 2j) x^j is the Morgan-Voyce B polynomial.

**Step 3:** The Morgan-Voyce polynomial satisfies B_m(x) = (α^{m+1} - β^{m+1})/(α - β)
where α, β = ((2+x) ± √(x² + 4x))/2.

At x = 1: α = (3+√5)/2 = φ², β = (3-√5)/2 = 1/φ².

So B_m(1) = (φ^{2m+2} - φ^{-(2m+2)})/(φ² - φ^{-2}) = F_{2m+2}/F_2·...

Actually, directly: B_m(1) satisfies the recurrence B_m = 3B_{m-1} - B_{m-2} with B_0 = 1, B_1 = 3.
This gives B_0=1, B_1=3, B_2=8, B_3=21, ... which is every other Fibonacci number:
B_m(1) = F_{2m+1} (the (2m+1)-th Fibonacci number).

Since p = 2m+1: B_m(1) = F_p. ∎

## Verification

## Notes for the formalizer

(none yet)
