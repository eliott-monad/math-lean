# LEM-004 odd-sign boundary

Source candidate: `candidates/LEM-004-tournaments-are-odd-functions.md`
Informal source: `eliottcassidy2000/math` `01-canon/theorems/LEM-004-tournaments-are-odd-functions.md`

The part of LEM-004 that cleanly matches the existing Lean core is the labeled
tournament boundary:

- A tournament gives a skew sign matrix `sigma(a,b) in {+1,-1}` off the diagonal,
  with `sigma(b,a) = -sigma(a,b)`.
- Conversely, a diagonal-zero skew off-diagonal `{+1,-1}` matrix defines the
  tournament relation `a -> b` iff `sigma(a,b) = 1`.

This is now formalized in `Math/Tournaments/Basic.lean` as `Tournament.signedAdj`,
`Tournament.signedAdj_swap`, and `tournamentOfSkewSign`.

The circulant dictionary in LEM-004(a) should be a separate follow-up: it needs a
chosen model for `ZMod n` connection sets and the fixed-point-free involution
`d |-> -d` on nonzero residues when `n` is odd. The current result is the general
labeled boundary that the informal statement says every tournament reduces to.

No genuinely new informal theorem was found here; the Lean proof mainly isolates
the minimal invariant: skewness plus off-diagonal `+-1` values are exactly the
tournament axioms.
