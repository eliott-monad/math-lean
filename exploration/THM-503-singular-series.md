# THM-503 singular-series notes

Source candidate: `candidates/THM-503-lrc-singular-series-structure.md`, from
`eliottcassidy2000/math` commit `8058679`.

Formalized support result:

- `Math.LonelyRunner.sinc7_eq_zero_iff_dvd_seven`: for nonzero integer frequency
  `t`, the LRC(14) sinc kernel `sin(pi*t/7)/(pi*t)` vanishes exactly when
  `7 | t`.

Mathematical consequence:

The Lean proof isolates the "apex prime" effect as pure divisibility after the
standard Mathlib theorem `Real.sin_eq_zero_iff`: no analytic limiting argument is
needed for the vanishing gate.  The remaining THM-503 claims are not consequences
of this theorem alone: the pairwise absolute-convergence bound needs a summation
formalization for the pair relation lattice, and the "singular integral, no Euler
product" statement needs a precise formal object for `L(S)`.

Candidate status:

Keep THM-503 open.  This note records the completed atomic 7-vanishing component,
not the full candidate.
