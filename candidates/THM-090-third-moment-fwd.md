---
id: THM-090-third-moment-fwd
source: 01-canon/theorems/THM-090-third-moment-fwd.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-090: Third Moment of Forward-Edge Count

**Status:** PROVED (algebraic) + VERIFIED n=3..6 exhaustive
**Proved by:** opus-2026-03-07-S46c
**Scope:** All tournaments

---

## Statement

Let T be a tournament on n >= 3 vertices. Then:

$$E[\text{fwd}^3] = A(n) + \frac{6}{n} \cdot t_3(T)$$

where:
- fwd = fwd(sigma) = number of forward edges in permutation sigma (edges following T)
- The expectation is over uniformly random permutations sigma in S_n
- t_3(T) = number of directed 3-cycles in T
- A(n) = 3 * (n-1)/2 * E_0[fwd^2] - 2 * ((n-1)/2)^3, where E_0[fwd^2] is the second moment for the transitive tournament

Equivalently: A(n) = E[desc^3] for the Eulerian descent distribution on S_n.

---

## Proof (clean version via reversal symmetry)

**Step 1: Reversal symmetry forces zero skewness.**

For any permutation sigma, define sigma^rev by sigma^rev(i) = sigma(n-1-i) (the reversal). Then:

fwd(sigma) + fwd(sigma^rev) = n - 1

because each edge (P[i], P[i+1]) in sigma corresponds to the edge (P[n-1-i], P[n-2-i]) in sigma^rev, and exactly one goes forward in T (since T is a tournament).

Since sigma -> sigma^rev is a bijection on S_n, the random variable fwd has the same distribution as (n-1) - fwd. Therefore the distribution of fwd is symmetric about mu = (n-1)/2, and all odd central moments are zero:

kappa_3 = E[(fwd - mu)^3] = 0

Verified exhaustively at n=4,5,6 (all F-classes).

## Notes for the formalizer

(none yet)
