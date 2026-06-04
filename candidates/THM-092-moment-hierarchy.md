---
id: THM-092-moment-hierarchy
source: 01-canon/theorems/THM-092-moment-hierarchy.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-092: Moment-Cycle Hierarchy for Forward-Edge Distribution

**Status:** PROVED for r=0,1,2,3 (algebraic); VERIFIED for r=4 at n=5,6,7; kappa_6 at n=7; CONJECTURED for general r
**Proved by:** opus-2026-03-07-S46c, opus-2026-03-07-S46d (kappa_4 general, kappa_6)
**Scope:** All tournaments

---

## Statement

For a tournament T on n vertices, the r-th moment of the forward-edge count:

$$M_r(T) = E[\text{fwd}^r] = \frac{1}{n!} \sum_{\sigma \in S_n} \text{fwd}(\sigma)^r$$

is determined by cycle-counting invariants of T as follows:

**Level 0-1:** M_0 = 1, M_1 = (n-1)/2 (universal, tournament-independent).

**Level 2:** M_2 = (n-1)(3n-2)/12 + 4*t3/(n(n-1)) (THM-089). Depends on t3 only.

**Level 3:** M_3 = A(n) + 6*t3/n (THM-090). Depends on t3 only, by zero-skewness argument (THM-091).

**Level 4:** M_4 depends on (t3, t5) at n=5, on (t3, t5, alpha_2) at n=6.
Exact formulas:
- n=5: E[fwd^4] = 287/10 + (27/5)*t3 + (2/5)*t5
- n=6: E[fwd^4] = 619/10 + (82/15)*t3 + (2/15)*t5 + (4/15)*alpha_2

---

## The Hierarchy Principle

The key insight connecting moments to cycles:

1. **Reversal symmetry (THM-091):** fwd(sigma) + fwd(sigma^rev) = n-1, so the distribution is symmetric about (n-1)/2. All odd cumulants kappa_{2k+1} = 0.

2. **Cumulant decomposition:** The even cumulants determine the distribution:
   - kappa_2 = Var[fwd] depends on t3 (THM-089)
   - kappa_4 = E[(fwd-mu)^4] - 3*sigma^4 depends on (t3, t5, alpha_2) at n=6
   - kappa_{2k} introduces invariants involving cycles on <= 2k+1 vertices

## Notes for the formalizer

(none yet)
