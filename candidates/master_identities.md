---
id: master_identities
source: 05-knowledge/results/master_identities.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# Master Identities from 2^m = Σ H/|Aut|
## opus-2026-04-03-S27

All verified at n=3,4,5,6. Let [T] range over isomorphism classes.

### The Five Master Equations

**[ME1] Σ H(T)/|Aut(T)| = 2^m**
  The tiling equation: tiling counts sum to hypercube size.
  m = C(n-1,2). Each term = number of base-path-fixed labelings in class [T].

**[ME2] Σ n!/|Aut(T)| = 2^C(n,2)**  
  Standard orbit-stabilizer: labeled tournament counts sum to total.
  Ratio ME2/ME1 = 2^C(n,2)/2^m = 2^(n-1) = ... wait:
  C(n,2) - C(n-1,2) = n-1. So 2^C(n,2) / 2^m = 2^(n-1).
  This means: each iso class has 2^(n-1) times more labeled tournaments than tilings.
  But 2^(n-1) ≠ n!/H in general. So this ratio 2^(n-1) is an AVERAGE.

**[ME3] Σ 1/|Aut(T)| = 2^C(n,2)/n!**
  From ME2 divided by n!. This is just Burnside restated.
  Equals A000568(n)? No: A000568 = number of classes = Σ 1.
  But Σ 1/|Aut| ≠ A000568 (different sum).

**[ME4] E[H | uniform over labeled tournaments] = n!/2^(n-1)**
  EXACT at all n tested! The average Hamiltonian path count over all
  labeled tournaments (uniform random) equals n!/2^(n-1).
  This is because each directed arc is present with probability 1/2,
  and each of n! permutations is a Hamiltonian path with probability 1/2^(n-1)
  (each of n-1 arcs must be present).

**[ME5] Σ gs_tilings = 2^((m + floor((n-1)/2))/2)**
  Grid-symmetric tilings from hypotenuse fixed-tile counting.
  Combined with ME1 restricted to SC classes: Σ_{SC} H/|Aut| = SC tiling sum.

### Derived Identities

**From ME1 + ME4:**
  Σ H²/|Aut| = (Σ H×size) = sum over all tilings of H(tiling's class)
  n=3: 4, n=4: 32, n=5: 632, n=6: 29696

## Notes for the formalizer

(none yet)
