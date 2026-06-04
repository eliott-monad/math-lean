---
id: THM-078-uT-size-weighted-independence
source: 01-canon/theorems/THM-078-uT-size-weighted-independence.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-078: u_T(m) is the Size-Weighted Independence Polynomial

**Type:** Theorem (PROVED)
**Certainty:** 5 -- PROVED (algebraic + exhaustive verification)
**Status:** PROVED
**Added by:** opus-2026-03-07-S39
**Tags:** #principal-specialization #independence-polynomial #multivariate #real-roots

---

## Statement

### (i) Size-weighted decomposition

For any tournament T on n vertices (n odd):

**u_T(m) = ps_1(U_T)(m) = sum_j sw(j) * m^{n-2j}**

where sw(j) = sum over independent sets S in Omega(T) with sum_{C in S} (|C|-1)/2 = j, weighted by 2^|S|.

Equivalently:

**u_T(m) = m^n * I_multi(Omega(T); x_C = 2*m^{1-|C|} for each cycle C)**

where I_multi is the multivariate independence polynomial.

### (ii) Q_T(w) real-rootedness (n <= 8)

The polynomial Q_T(w) defined by u_T(m) = m * Q_T(m^2) has all real non-positive roots for n <= 8.

This follows from the Chudnovsky-Seymour theorem (2007): the univariate independence polynomial I(G, x) of a claw-free graph has all real roots. Since Omega(T) is claw-free for n <= 8 (THM-020), I(Omega, x) has all real roots. Q_T(w) real-rootedness is verified computationally but requires a separate argument from I(Omega, x) real-rootedness, since Q_T involves size-weighted specialization (x_C = 2*m^{1-|C|}), not the standard univariate I(G, x).

**Note:** The Leake-Ryder theorem (arXiv:1610.00805) proves *same-phase stability* (not full real stability) for claw-free graphs. Same-phase stability is weaker than real stability, so the specialization argument for Q_T does not follow automatically from Leake-Ryder alone.

### (iii) Q_T(w) can have complex roots at n >= 9

The THM-025 counterexample at n=9 (score [1,1,3,4,4,4,6,6,7]) has I(Omega, x) with complex roots, and the corresponding Q_T(w) also has complex roots.

---

## Notes for the formalizer

(none yet)
