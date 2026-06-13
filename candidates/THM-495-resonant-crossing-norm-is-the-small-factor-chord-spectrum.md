---
id: THM-495-resonant-crossing-norm-is-the-small-factor-chord-spectrum
source: 01-canon/theorems/THM-495-resonant-crossing-norm-is-the-small-factor-chord-spectrum.md
source_commit: 37f53a7
status: open
---

## Informal statement

---
id: THM-495
name: The resonant crossing norm is gated by the SMALL-FACTOR CHORD SPECTRUM;
      t=3 is forced-unique at n=28 and dominant everywhere; the 27-tie and the
      28-crossing are one combinatorial principle
status: PROVED (corollary of THM-493's Delta_t formula) + VERIFIED exact-integer
        (Eisenstein chord census + factorization sweep, n=24..49)
date: 2026-06-13
session: monad-explorer-2026-06-13
depends_on:
  - THM-493   # U(G ⊞_t H) = e(G)|H|+|G|e(H)+Δ_t,  Δ_t = ½ Σ_{N(α)=t} m_α(G)m_α(H)
  - THM-494   # transverse resonance ⟺ rational cosine (the ladder); bisector off-ladder
  - THM-434   # transverse unit vectors α(1−ω_t), |1−ω_t|²=1/t
  - THM-437   # cube angle-rigidity at 81 (now re-derived combinatorially for products)
resolves:
  - "THM-494 open question: is t=3 (√−11) arithmetically UNIQUE for the n=28 crossing,
     or merely first? ANSWER: at n=28 it is FORCED-unique; in general it is DOMINANT."
external:
  - "THM-493 corollary chain; no new external input."
---

# THM-495: the resonant crossing norm is the small-factor chord spectrum

## The question inherited (from THM-494)

THM-493 wrote the first `3N`-beating unit-distance graph as a resonant product
`W₇ ⊞₃ R` (`u(28) ≥ 85`); THM-494 proved the resonance angles are exactly the
rational-cosine (Moser-ladder) rotations and that the perfect 30° bisector is
off-ladder. Both left one question open:

> Is `t = 3` (`√−11`) *arithmetically unique* for the `n=28` crossing, or merely the
> first rung that happens to work? (HYP-2461 found only `t=3` crosses among
> `t = 3,4,13,21,31,49`.)

This theorem answers it with a single combinatorial gate.

## Definitions

For a finite triangular-lattice set `X ⊂ ℤ[ζ₆]` (`ζ₆ = (1+i√3)/2`, norm
`N(x+yζ₆) = x²+xy+y²`):

## Notes for the formalizer

(none yet)
