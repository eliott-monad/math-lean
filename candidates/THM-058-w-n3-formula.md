---
id: THM-058-w-n3-formula
source: 01-canon/theorems/THM-058-w-n3-formula.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-058: Universal formula for w_{n-3}

**Status:** PROVED (algebraic proof, verified computationally at n=5,7,9)
**Proved by:** kind-pasteur-2026-03-06-S25g
**Depends on:** THM-055 (coefficient hierarchy), definitions.md

---

## Statement

For any tournament T on n vertices (n >= 3, n odd):

  w_{n-3}(T) = (n-2)! * [2*t_3(T) - C(n,3)/2]

where:
- W(r) = sum_P prod_{i=0}^{n-2} (r + A[p_i,p_{i+1}] - 1/2) is the weighted path polynomial
- w_{n-3} is the coefficient of r^{n-3} in W(r)
- t_3(T) is the number of directed 3-cycles in T
- C(n,3) = n(n-1)(n-2)/6 is the total number of 3-element vertex subsets

Equivalently:

  w_{n-3}(T) = 2*(n-2)! * t_3(T) - C(n,3)*(n-2)!/2

## Properties

1. **Centered:** E[w_{n-3}] = 0 over random tournaments (since E[t_3] = C(n,3)/4).
2. **Factored:** w_{n-3} = (n-2)! * (deviation of t_3 from random midpoint)
3. **Linear in t_3:** Depends ONLY on the 3-cycle count, not on any finer invariant.

## Proof

### Step 1: Decomposition into sigma sums

W(r) = sum_{k=0}^{n-1} r^{n-1-k} * sigma_k, where
sigma_k = sum_{|S|=k, S subset [n-2]} sigma(S) and
sigma(S) = sum_P prod_{i in S} s_{p_i, p_{i+1}} with s_{a,b} = A[a,b] - 1/2.

So w_{n-3} = sigma_2 = sum_{|S|=2} sigma(S).

## Notes for the formalizer

(none yet)
