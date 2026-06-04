---
id: THM-086-universal-taylor-zeros-mod3
source: 01-canon/theorems/THM-086-universal-taylor-zeros-mod3.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-086: Universal Taylor Zeros of F(T,x) Modulo 3

**Type:** Theorem (proved for j < 3; inductive proof structure identified for all j)
**Certainty:** 4.5 — PROOF SKETCH COMPLETE (algebraic proof for c_0,c_1,c_2; DC induction + palindrome for higher j; verified n<=10)
**Status:** PROOF SKETCH + VERIFIED
**Added by:** kind-pasteur-2026-03-07-S37
**Tags:** #f-polynomial #modular-arithmetic #taylor-expansion #eulerian-numbers

---

## Statement

Let T be any tournament on n >= 3 vertices, F(T,x) = sum_k F_k x^k the forward-edge
polynomial, and c_j(T) = sum_k C(k,j) F_k(T) the j-th Taylor coefficient at x=1.

Define val(n) = 2 * floor((n-1)/2) = n-1 if n is odd, n-2 if n is even.

**Theorem A (Universal Taylor Zeros):**
  3 | c_j(T) for all tournaments T on n vertices and all j < val(n).

Equivalently: (x-1)^{val(n)} divides F(T,x) modulo 3.

**Corollary (Eulerian Conjecture):**
  If 3 | A(n,k) (Eulerian number), then 3 | F_k(T) for all tournaments T on n vertices.

**Theorem B (Sharpness):**
  c_{val(n)}(T) is NOT always divisible by 3. The fraction of tournaments with
  3 | c_{val(n)} is approximately 30-35% at small n.

---

## Connection to THM-085

THM-085 proves the j < 3 case: c_0, c_1, c_2 are all 0 mod 3 for n >= 5.
THM-086 extends this to j < val(n), which is much stronger at large n:
- n=5,6: val=4, so adds c_3=0 (from palindrome)
- n=7,8: val=6, so adds c_3,c_4,c_5=0 (c_3 from palindrome, c_4,c_5 NEW)
- n=9,10: val=8, so adds c_3,...,c_7=0
- n=2k+1: val=2k, so c_0,...,c_{2k-1} all 0 mod 3

## Notes for the formalizer

(none yet)
