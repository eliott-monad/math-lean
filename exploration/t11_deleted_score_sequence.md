# T11 deleted score sequence

Source candidate: `candidates/LEM-002-T11-sub-tournament.md`

The formalized invariant is the exact out-degree table of the induced Paley
subtournament `T_11 \ {0,1}` with connection set `{1,3,4,5,9}`:

`2,3,6,9,10` have deleted out-degree `4`; `4,5` have out-degree `5`; `7,8`
have out-degree `3`.

The Lean proof is deliberately just a finite check against explicit definitions.
This is useful because the current path-homology candidates around `T_11` depend
on large rank computations, while this local structure is small enough to make
fully transparent.

Mathematical note: deleting two adjacent Paley vertices partitions the remaining
vertices by how many of the deleted vertices they beat.  The score defects from
the regular value `5` are:

- defect `0`: vertices `4,5`
- defect `1`: vertices `2,3,6,9,10`
- defect `2`: vertices `7,8`

This suggests using deleted-vertex defect profiles as small certificates when
comparing T_11 chain subblocks or orbit representatives in the Betti
decomposition.  It is not yet a new theorem about the Betti numbers, but it is a
compact invariant that may help audit the `k=0` versus non-principal eigenspace
rank shifts.
