# THM-500 low-length boundary note

Formalized today:

- `Math.Tournaments.odd_cycle_length_le_six_eq_three_or_five`
- `Math.Tournaments.odd_cycle_length_of_le_six_vertices`

These isolate the elementary arithmetic core of THM-500's `n <= 6` direction:
once a directed cycle has length at least `3`, the odd lengths available under
the vertex bound `n <= 6` are exactly `3` and `5`. Thus the low side of the
second spectral boundary reduces to the already-formalized/claimed power-sum
control of `c3` and `c5`.

Remaining formalization work for the full theorem is certificate-oriented rather
than conceptual: represent the explicit pair of cospectral `7`-tournaments from
the informal witness file, prove their power-sum signatures agree, and prove
their Hamiltonian-cycle counts differ. Once that witness layer is in Lean, the
`n = 7` non-spectral half should be a direct counterexample theorem.
