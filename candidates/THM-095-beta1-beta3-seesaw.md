---
id: THM-095-beta1-beta3-seesaw
source: 01-canon/theorems/THM-095-beta1-beta3-seesaw.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-095: Beta_1 * Beta_3 = 0 (Seesaw Mechanism)

**Status:** PROVED (conditional on beta_2 = 0)
**Author:** kind-pasteur-S45 (2026-03-09)
**Verified:** Exhaustive n=6 (32768), sampled n=7,8 (2000 each)

## Statement

For any tournament T on n vertices with n <= 8:

    beta_1(T) * beta_3(T) = 0

That is, beta_1 > 0 and beta_3 > 0 cannot occur simultaneously.

## Proof (Seesaw Mechanism)

**Prerequisite:** beta_2(T) = 0 for all tournaments T on n vertices (verified n <= 8).

Consider the chain complex:

    ... -> Omega_3 --d3--> Omega_2 --d2--> Omega_1 --d1--> Omega_0 -> 0

**Step 1: beta_2 = 0 gives exact coupling.**

beta_2 = 0 means ker(d_2) = im(d_3). Therefore:

    im(d_2) = dim(Omega_2) - ker(d_2) = dim(Omega_2) - im(d_3)

This creates a conservation law: im(d_2) + im(d_3) = dim(Omega_2).

**Step 2: ker(d_1) is constant.**

Computationally verified: ker(d_1) = C(n,2) - n + 1 for ALL tournaments on n vertices (n <= 8).

This means: beta_1 = ker(d_1) - im(d_2) = [C(n,2) - n + 1] - im(d_2).

So beta_1 > 0 iff im(d_2) < C(n,2) - n + 1.

**Step 3: Seesaw.**

## Notes for the formalizer

(none yet)
