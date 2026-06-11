---
id: THM-462-the-cubic-spectrum-of-tournaments-is-gap-free
source: 01-canon/theorems/THM-462-the-cubic-spectrum-of-tournaments-is-gap-free.md
source_commit: c21c071
status: open
---

## Informal statement

# THM-462 — The cubic spectrum of tournaments is gap-free: every c3 ∈ [0, max] is realized

**Status:** PROVED (self-contained elementary proof below: classical identity + Landau + a
four-square near-regular perturbation covering the top window + induction) + VERIFIED
(exhaustively, exact integer DP over Landau sequences, **all n ≤ 60**: zero gaps; the proof's
constructive step machine-checked for **every (n,t), n ≤ 80** — 21,379 exact constructions).
The identity and the max formula are **classical** (Kendall & Babington Smith 1940); the
gap-free statement at general n is **plausibly folklore** — our searches found small-n
verifications but no explicit general-n proof in print (see Attribution). The proof here is
self-contained either way.
**Source:** kind-pasteur-2026-06-10-S1 (Thread C, HYP-2368 — which this REFUTES as posed).

## The theorem

> **THM-462.** Let `A(n)` be the set of values of `c3(T)` (number of directed 3-cycles =
> cyclic triples) over all tournaments `T` on `n` vertices. Then for every `n ≥ 1`
>
> `A(n) = {0, 1, 2, …, M(n)}`,  where  `M(n) = (n³−n)/24` (n odd), `(n³−4n)/24` (n even).
>
> **The degree-3 channel has NO forbidden levels.** Contrast: the repo's degree-`n` invariant
> `H(T)` has the forbidden values 7 and 21 (THM-029/THM-079). Impossibility begins higher up
> the invariant hierarchy than the cubic layer.

Throughout: `s_1 ≤ … ≤ s_n` is the (sorted) score sequence, `C(a,b)` binomial,
`f(s) = Σ_i C(s_i,2)`, and `c3 = C(n,3) − f(s)`.

## Lemmas

**L1 (cyclic-triple identity — classical).** For every tournament,
`c3(T) = C(n,3) − Σ_v C(s_v,2)`. In particular c3 depends only on the score sequence.
*Proof.* In any 3-subset the three within-triple out-degrees sum to 3, so they are
`(2,1,0)` (transitive) or `(1,1,1)` (cyclic). A triple is transitive iff exactly one of its
vertices beats the other two, and `Σ_v C(s_v,2)` counts the pairs (v, {2 vertices v beats}),
i.e. each transitive triple exactly once. ∎
[Kendall & Babington Smith 1940; reproduced in Moon, *Topics on Tournaments* (1968) and
David, *The Method of Paired Comparisons*. Sanity-verified below.]

**L2 (Landau 1953).** A nondecreasing integer sequence `s_1 ≤ … ≤ s_n` is the score sequence
of some tournament iff `Σ_{i≤k} s_i ≥ C(k,2)` for all k, with equality at `k = n`.
Hence by L1: `A(n) = { C(n,3) − f(s) : s Landau }`.

## Notes for the formalizer

(none yet)
