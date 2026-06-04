---
id: THM-087-worpitzky-tournament
source: 01-canon/theorems/THM-087-worpitzky-tournament.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-087: Worpitzky Expansion of F(T,x)

**Status:** PROVED (algebraic) + VERIFIED n=3..7
**Proved by:** opus-2026-03-07-S46
**Scope:** All tournaments

---

## Statement

Let T be a tournament on n vertices with forward-edge polynomial F(T,x) = sum_{k=0}^{n-1} F_k x^k. Define the Worpitzky sequence:

$$a_m(T) = \sum_{k=0}^{n-1} F_k \binom{m+n-1-k}{n-1}$$

Then:

**(A)** a_m(T) is a polynomial in m of degree n-1.

**(B)** The generating function identity holds: F(T,x) / (1-x)^n = sum_{m>=0} a_m x^m

**(C)** The top two coefficients of a_m(T) as polynomial in m are UNIVERSAL (independent of T):
- Leading coefficient (m^{n-1}): always n/(n-1)!
- Next coefficient (m^{n-2}): always C(n,2)/(n-2)!

**(D)** For the transitive tournament (F = Eulerian polynomial A_n):

$$a_m = (m+1)^n - m^n$$

So the Worpitzky coefficients are C(n,j) for j=1,...,n.

**(E)** The deviation from the transitive case at level d (coefficient of m^{n-1-d}):

$$\delta_d(T) = c_{n-1-d}(T) - \binom{n}{d}$$

satisfies:
- d=0, d=1: delta_d = 0 (universal)
- d=2: delta_d = 2(n-2) * t3(T)
- d=3: delta_d = (n-2)(n-3) * t3(T)
- d >= 4: depends on additional invariants beyond t3

## Notes for the formalizer

(none yet)
