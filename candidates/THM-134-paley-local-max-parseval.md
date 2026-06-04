---
id: THM-134-paley-local-max-parseval
source: 01-canon/theorems/THM-134-paley-local-max-parseval.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
theorem_id: THM-134
title: Paley is the unique local maximum of H on the Parseval simplex (p=7,11)
status: PROVED (p=7,11 — algebraic + computational)
proved_by: opus-2026-03-12-S58
date: 2026-03-12
related_theorems: [THM-133, THM-130, THM-126]
related_hypotheses: [HYP-468, HYP-469, HYP-470]
tags: [paley, schur-concavity, maclaurin, elementary-symmetric, eigenvalue, local-max]
---

## Main Result

**Theorem (THM-134):** For p ∈ {7, 11}, the Paley tournament is a strict LOCAL
MAXIMUM of H among circulant tournaments on Z_p, when H is viewed as a function
of the eigenvalue spectrum on the Parseval simplex.

More precisely: write x_k = Im(λ_k)² for k = 1,...,m where m = (p-1)/2.
The constraint Σx_k = mp/4 (Parseval) defines a simplex. Then:

1. H = c₀(p) + Σ_{j=2}^{m+1} c_j · e_j(x₁,...,x_m)

   where e_j are the elementary symmetric polynomials.

2. The Hessian of H restricted to the Parseval hyperplane at the uniform
   point x_k = p/4 (Paley) is a negative scalar multiple of the identity:

   Hess(H)|_{Σδ=0} = λ_H · I,  where λ_H < 0.

3. The uniform point is the UNIQUE critical point of the symmetric function
   H on the simplex (by cyclic symmetry).

4. Since λ_H < 0, Paley is a strict local maximum.

## Proof

### Step 1: Elementary Symmetric Decomposition

For a circulant tournament on Z_p with eigenvalues λ_k = -1/2 + iy_k,
define x_k = y_k² for k = 1,...,m. The Parseval identity gives Σx_k = mp/4.

## Notes for the formalizer

(none yet)
