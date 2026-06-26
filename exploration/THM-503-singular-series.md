# THM-503 singular-series notes

Source candidate: `candidates/THM-503-lrc-singular-series-structure.md`, from
`eliottcassidy2000/math` commit `8058679`.

Formalized support result:

- `Math.LonelyRunner.sinc7_eq_zero_iff_dvd_seven`: for nonzero integer frequency
  `t`, the LRC(14) sinc kernel `sin(pi*t/7)/(pi*t)` vanishes exactly when
  `7 | t`.
- `Math.LonelyRunner.sinc7_eq_zero_of_seven_dvd`: the forward "killed by the
  apex prime" direction holds uniformly, including the harmless `t = 0`
  denominator convention.
- `Math.LonelyRunner.abs_sinc7_le`: the analytic input needed for pairwise
  convergence is just the elementary bound
  `|s(t)| <= 1 / (pi * |t|)`.

Mathematical consequence:

The Lean proof isolates the "apex prime" effect as pure divisibility after the
standard Mathlib theorem `Real.sin_eq_zero_iff`: no analytic limiting argument is
needed for the vanishing gate.  The absolute-value bound is similarly local: it
uses only `|sin x| <= 1` and the positive denominator `pi * |t|`.

The remaining THM-503 claims are not consequences of these pointwise theorems
alone: the pairwise absolute-convergence bound still needs a summation
formalization for the pair relation lattice and the Basel tail
`sum_{k>=1} 1/k^2 = pi^2/6`; the "singular integral, no Euler product" statement
needs a precise formal object for `L(S)`.

Candidate status:

Keep THM-503 open.  This note records the completed atomic 7-vanishing component,
not the full candidate.
