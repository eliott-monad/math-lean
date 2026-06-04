---
id: THM-117-universal-coefficient
source: 01-canon/theorems/THM-117-universal-coefficient.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-117: Universal Coefficient Theorem for Cumulant-Cycle Hierarchy

**Status:** PROVED (algebraic + numerical verification)
**Proved by:** opus-2026-03-07-S46e
**Resolves:** OPEN-Q-023

## Statement

For any tournament T on n >= 2k+1 vertices, the coefficient of t_{2k+1} (the count of directed (2k+1)-cycles) in the even cumulant kappa_{2k} of the forward-edge distribution is exactly:

    coeff(t_{2k+1} in kappa_{2k}) = 2 / C(n, 2k)

where C(n,2k) is the binomial coefficient.

## Examples

- k=1: coeff(t_3 in kappa_2) = 2/C(n,2) = 4/(n(n-1))
  (This is the t_3 coefficient in Var = (n+1)/12 + 4t_3/(n(n-1)), from THM-089.)

- k=2: coeff(t_5 in kappa_4) = 2/C(n,4)
  (Verified in THM-093.)

- k=3: coeff(t_7 in kappa_6) = 2/C(n,6)
  (Verified at n=7 in S46d.)

## Proof

### Step 1: Forward path formula
The number of directed r-edge paths through r+1 distinct vertices equals:

    #fwd(r)path = sum_{S in C(V,r+1)} H(T[S])

where H(T[S]) is the Hamiltonian path count of the subtournament on S.

### Step 2: OCF contribution of new cycles
By OCF (H = I(Omega, 2)), when r+1 = 2k+1:

    H(T[S]) = 1 + 2*t_3(S) + ... + 2*t_{2k+1}(S) + [higher alpha terms]

Each global directed (2k+1)-cycle appears in exactly ONE (2k+1)-element subset

## Notes for the formalizer

(none yet)
