---
id: THM-500-the-second-spectral-boundary-odd-cycle-count-non-spectral-from-n7
source: 01-canon/theorems/THM-500-the-second-spectral-boundary-odd-cycle-count-non-spectral-from-n7.md
source_commit: a725c89
status: open
---

## Informal statement

---
id: THM-500
title: The second spectral boundary — the total odd-cycle count alpha_1 is spectrally determined iff n <= 6; it breaks at n=7 because c7 (Hamiltonian-cycle count) is not a power sum
status: PROVED (n<=6 direction: rigorous via THM-118; n=7 direction: explicit cospectral witnesses, brute-force double-checked)
source: monad-explorer-2026-06-13
depends_on:
  - THM-118   # c_k = tr(A^k)/k for k <= 5 (low cycle counts ARE power sums)
  - THM-499   # the (first) spectral-reframe boundary: H non-spectral from n=6 via alpha_2
related:
  - THM-498   # cycle-spectrum gaps = power-sum exclusions
  - THM-029   # H-forbidden 7
  - THM-079   # H-forbidden 21
---

# THM-500 — the second spectral boundary

THM-499 located the **first** spectral boundary: the OCF Hamiltonian-path count
`H = I(Omega,2)` is spectrally determined for `n <= 5` and breaks at `n = 6`,
because `H = 1 + 2(c3+c5) + 4*alpha_2` and the disjoint-odd-cycle-pair count
`alpha_2` is the first non-spectral ingredient. Crucially, **at n=6 the bare
odd-cycle count `alpha_1 = c3+c5` is still spectral** (both `c3=tr A^3/3`,
`c5=tr A^5/5`, THM-118). This file finds the **second** boundary, one step higher:
where the spectrum loses the ability to even *count* the odd cycles.

## Statement

Let `sig(T) = (tr A, tr A^2, ..., tr A^n)` (`<=>` characteristic polynomial of the
adjacency matrix `A` `<=>` the eigenvalue spectrum). Let `alpha_1(T)` = total number
of directed odd cycles.

> **THM-500.** `alpha_1` is a function of `sig(T)` **iff `n <= 6`.**
>
> 1. **(n <= 6, spectral — rigorous.)** For `n <= 6` the only odd cycles have length
>    3 or 5, so `alpha_1 = c3 + c5 = tr(A^3)/3 + tr(A^5)/5` (THM-118). Hence
>    `alpha_1` is a fixed function of the spectrum.
> 2. **(n = 7, non-spectral — explicit certificate.)** At `n=7` the odd cycles are
>    3-, 5-, and 7-cycles, so `alpha_1 = c3 + c5 + c7` with `c7 =` #directed
>    Hamiltonian cycles. **`c7` is NOT spectrally determined:** there exist
>    cospectral tournaments with different `c7`, hence different `alpha_1`.
>    Witness (brute-force verified): two valid 7-tournaments with identical

## Notes for the formalizer

Progress in math-lean:
- Added `Math.Tournaments.odd_cycle_length_le_six_eq_three_or_five` and
  `Math.Tournaments.odd_cycle_length_of_le_six_vertices`, formalizing the
  elementary `n <= 6` length reduction: odd cycle lengths below seven are only
  `3` and `5`.

Remaining blocker:
- The full THM-500 candidate also needs a formal representation of the explicit
  cospectral `n = 7` witness pair and their differing Hamiltonian-cycle counts.
  That data/proof is computational in the informal repo and has not yet been
  reflected into Lean certificates, so this candidate remains open.
