---
id: THM-067-c1-formula-mersenne
source: 01-canon/theorems/THM-067-c1-formula-mersenne.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-067: General c_1 Formula and Mersenne Vanishing

**Type:** Theorem (PROVED)
**Certainty:** 5 -- PROVED (algebraic, verified computationally)
**Status:** PROVED
**Added by:** kind-pasteur-2026-03-07-S28
**Tags:** #coefficient #reduced-polynomial #mersenne #eulerian

---

## Statement

### (i) General formula for c_1^(f,d)

The coefficient c_1^(f,d) appearing in the forward-edge distribution formula (THM-062) satisfies:

**c_1^(f,d) = 2^{f+1} - d - 2**

for all even f with 0 <= f <= d.

### (ii) Mersenne vanishing

c_1^(f,d) = 0 if and only if **d = 2^{f+1} - 2**, equivalently **n = 2^{f+1} - 1**.

The vanishing values of n form the sequence of odd-exponent Mersenne numbers:
- f=0: n = 1 (trivial)
- f=2: n = 7
- f=4: n = 31
- f=6: n = 127
- f=8: n = 511

### (iii) Consequence for P(u,x)

The reduced polynomial P(u,x) where G_T(t,x) = t^m * P(t+1/t, x) has coefficients p_j(x) that are linear combinations of OCF invariants. The sub-leading coefficient p_{m-1}(x) involves c_1^(f,d) for each invariant.

At n = 2^{f+1} - 1, all invariants with free-position count f have zero contribution to p_{m-1}(x). Their information is "invisible" to p_{m-1} -- it appears only in p_m(x) = I(Omega(T), x) and lower coefficients.

**At n=7:** The f=2 invariants (t5, bc) vanish from p_2(x), making it a LINEAR function of x:
  p_2(x) = 120 + (48*t3 - 12*t7)*x

## Notes for the formalizer

(none yet)
