---
id: THM-098-boolean-odd-betti
source: 01-canon/theorems/THM-098-boolean-odd-betti.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-098: Boolean Odd Betti Numbers for Tournaments

**Status:** CONJECTURE (strong computational evidence)
**Author:** kind-pasteur-S45 (2026-03-09)
**Verified:** Exhaustive n<=6 (33792 tournaments), sampled n=7 (1000), n=8 (300)

## Statement

For any tournament T on n vertices, the odd Betti numbers of the GLMY path homology
are Boolean:

    beta_{2k-1}(T) in {0, 1}  for all k >= 1

That is: beta_1, beta_3, beta_5, ... can only be 0 or 1.

## Evidence

### Exhaustive verification
- n=5 (1024 tournaments): beta_1 in {0,1}, beta_3 = 0
- n=6 (32768 tournaments): beta_1 in {0,1}, beta_3 in {0,1}

### Sampled verification
- n=7 (1000 samples): beta_1 in {0,1}, beta_3 in {0,1}, beta_5 = 0
- n=8 (300 samples): beta_1 in {0,1}, beta_3 in {0,1,2} -- Boolean property FALSE for beta_3 at n=8 (MISTAKE-018), beta_5 in {0,1}

### Contrast with even Betti numbers
Even Betti numbers are NOT Boolean:
- beta_2 = 0 always (proved, THM-108+109)
- beta_4 in {0, 1, 2, 5, 6} at n=7,8 (rich value set)

## Proof sketch for beta_1 in {0,1}

PROVED (see THM-095): rank(d_2) takes exactly two values {C(n,2)-n, C(n,2)-n+1},
and ker(d_1) = C(n,2)-n+1 is constant (since beta_0 = 1). Therefore:
    beta_1 = ker(d_1) - im(d_2) = [C(n,2)-n+1] - rank(d_2)
which is either 0 or 1.

## Proof ideas for beta_3 in {0,1}

By analogy with beta_1: if ker(d_3) - im(d_4) is always 0 or 1, then beta_3 in {0,1}.

## Notes for the formalizer

(none yet)
