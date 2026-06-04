---
id: THM-157-alpha1-linear-identity
source: 01-canon/theorems/THM-157-alpha1-linear-identity.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-157: alpha_1 = linear(S_4,...,S_{p-1}) Identity

**Status:** PROVED (algebraic identity + exact rational verification)
**Author:** kind-pasteur-2026-03-13-S60
**Dependencies:** Eigenvalue expansion of c_k (standard)

## Statement

For any prime p and any circulant tournament T on Z_p with connection set S of size m = (p-1)/2, the total directed odd cycle count

  alpha_1(T) = sum_{k=3,5,...,p} c_k(T)

is an **exact linear function** of the eigenvalue moments S_{2r} = sum_{t=1}^m D_t^{2r}:

  alpha_1 = sum_{r=2}^{m} a_r * S_{2r} + C(p)

where the coefficients are:

  a_r = sum_{k=2r+1, k odd, k<=p} (2/k) * C(k,2r) * (-1/2)^{k-2r} * (-1)^r

and C(p) is a constant depending only on p (not the orientation).

## Key Properties

1. **S_{p-1} coefficient**: a_m = (-1)^{(p+1)/2}
   - p = 3 mod 4: a_m = +1
   - p = 1 mod 4: a_m = -1

2. **Number of free parameters**: m-1 = (p-3)/2 (since S_2 = mp/4 is constant)

3. **Overconstrained verification**: At p=23, 90 orbit types with 11 parameters (79 excess constraints), all satisfied exactly with rational arithmetic.

## Proof

Direct algebraic consequence of the eigenvalue expansion:

  c_k = (1/k)[m^k + 2 * sum_{r=0}^{floor(k/2)} C(k,2r) * (-1/2)^{k-2r} * (-1)^r * S_{2r}]

Summing over all odd k = 3, 5, ..., p:

## Notes for the formalizer

(none yet)
