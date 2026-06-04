---
id: THM-085-f-omega-mod9-universal
source: 01-canon/theorems/THM-085-f-omega-mod9-universal.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-085: F(T, omega) is Universally Divisible by 9 for n >= 6

**Type:** Theorem (proved algebraically)
**Certainty:** 5 -- PROVED
**Status:** PROVED (complete algebraic proof; verified exhaustively n=3-6, sampled n=7-10)
**Added by:** kind-pasteur-2026-03-07-S36
**Tags:** #f-polynomial #cube-root #divisibility #taylor-expansion

---

## Statement

Let T be any tournament on n vertices, F(T,x) = sum_{P in S_n} x^{asc_T(P)} the
forward-edge polynomial, and omega = e^{2*pi*i/3} a primitive cube root of unity.

**Theorem A:** 3 | F(T, omega) for all n >= 3.

**Theorem B:** 9 | F(T, omega) for all n >= 6.

**Theorem C:** For n >= 5, all "S-sums" S_r := sum_{k = r mod 3} F_k are divisible by 3.

Theorem B is SHARP: it fails at n=5 (no tournament has 9 | F(T,omega) at n=5).

---

## Proof

### Step 1: Taylor expansion reformulation

Write F(T,x) = sum_k c_k (x-1)^k where c_k = F^{(k)}(T,1) / k!.

Over F_3, the cyclotomic factorization x^3 - 1 = (x-1)^3 implies:

  S_r = 0 mod 3 for all r IN {0,1,2}

is equivalent to (x-1)^3 | F(T,x) mod 3, which requires c_0, c_1, c_2 = 0 mod 3.

### Step 2: c_0 is tournament-independent

c_0 = F(T,1) = n! (sum over all n! permutations of 1).

## Notes for the formalizer

(none yet)
