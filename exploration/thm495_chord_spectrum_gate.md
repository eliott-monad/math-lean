# THM-495 formalization note: chord-spectrum gate

Provenance: informal `eliottcassidy2000/math`
`01-canon/theorems/THM-495-resonant-crossing-norm-is-the-small-factor-chord-spectrum.md`.

Formalized result: the support form of THM-495(A).  For any additive group `V`,
finite factors `G,H`, natural-valued norm `N`, and finite direction set, if the
unhalved resonant support sum

```text
sum_{N alpha = t} m_alpha(G) m_alpha(H)
```

is positive at `t != 0`, then `t` occurs in the nonzero chord spectrum of both
`G` and `H`.

The Lean proof shows the bottleneck is not specific to Eisenstein arithmetic.  The
only structural input is `N(0)=0`; everything else is finite support.  Thus the
same gate should apply to any resonant-product construction where the bonus
factorizes through a shared displacement census.

Potential follow-up: formulate the exact half-sum `Delta_t` for Eisenstein
directions after a reusable Eisenstein integer type/norm exists in the repo.  The
current theorem deliberately proves the support statement without committing to an
encoding of Loeschian norms or the enumeration-heavy parts of THM-495(B-D).
