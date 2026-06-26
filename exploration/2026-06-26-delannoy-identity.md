# Delannoy Identity Carrier

Source candidate: `candidates/THM-218-delannoy-identity.md`
Informal provenance: `eliottcassidy2000/math` `01-canon/theorems/THM-218-delannoy-identity.md`

Lean formalization added:

- `Math.Combinatorics.delannoyDiagonalWeight`
- `Math.Combinatorics.delannoyG`
- `Math.Combinatorics.delannoyG_closed_form`
- `Math.Combinatorics.delannoyDiagonalWeight_comm`
- `Math.Combinatorics.delannoyG_duality`
- `Math.Combinatorics.delannoyG_one`
- `Math.Combinatorics.delannoyG_two`

Mathematical note:

The Lean proof separates the theorem into two layers.  The hard tournament/Fourier
content is the identification of the original `g_k(m)` with the weighted Delannoy
diagonal-step sum; the algebra after that is very small.  Once the carrier is

```text
T(k,m) = sum_j j * C(k,j) * C(m,j) * 2^(j-1),
g_k(m) = T(k,m) / k,
```

the duality is exactly the symmetry `T(k,m) = T(m,k)`.  The boundary values come
from the support collapse of `C(1,j)` and `C(2,j)`.

This suggests a useful dependency split for future formalization of the full
tournament Fourier-energy statement: prove the analytic/combinatorial model only
up to the carrier equation `k * g_k(m) = T(k,m)`, then import this module for all
symmetry and boundary consequences.  No new informal theorem needs forwarding;
this is a proof-architecture clarification of THM-218.
