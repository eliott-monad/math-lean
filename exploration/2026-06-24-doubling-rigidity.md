# THM-404 doubling rigidity notes

Formalized target: `candidates/THM-404-doubling-rigidity-dichotomy-of-the-witness-orbit.md`.

Lean forced the claim down to the exact arithmetic invariant:

```text
DoublePreservesUnitResidues n <-> Odd n
DoubleExitsUnitResidues n       when Even n
```

where `UnitResidue n j := gcd(j,n)=1`.  The proof is just `gcd(2,n)=1 <-> n odd` plus the
product coprimality criterion.  This is useful because it separates two mechanisms that are
easy to blur informally:

1. For odd `n`, doubling is an internal dynamical operation on the AP witness orbit.  The
   finer orbit decomposition is then genuinely a unit-group / order-of-2 question.
2. For even `n`, the doubled witness is not merely outside a chosen fundamental domain; it is
   arithmetically outside the unit residue set.  That is the residual source behind the
   LRC14 "half-turn leak" language.

Connection to THM-358: the initial-segment safe endpoints are exactly the unit clocks.  THM-404
therefore says that the endpoint skeleton is stable under doubling precisely for odd moduli.
For even moduli, any doubling-based propagation must cross from the unit skeleton into the
proper-divisor danger blocks formalized in `Math/LonelyRunner/DangerBlocks.lean`.

Potential next formal corollary: combine `double_exits_unitResidues_of_even` with
`gcd_eq_sum_totient_divisors` to show that for even `n` and unit `j`, the danger block sum at
`2*j` is at least `2`, because both divisor blocks `1` and `2` contribute.
