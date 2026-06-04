---
id: THM-251-cayley-boost-spectrum
source: 01-canon/theorems/THM-251-cayley-boost-spectrum.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-251: The Cayley Boost Spectrum and Functional Equation

**Status:** PROVED
**Session:** kind-pasteur-2026-03-17-S116n33

## Setup

Let T be a tournament on n vertices with a fixed canonical path 0 → 1 → ... → n-1. The non-path arcs form the tiling space {0,1}^m where m = C(n-1, 2).

The **random flip Markov chain** on the tiling space flips one uniformly random bit per step. Its eigenvalues are:

λ_k = (m - 2k)/m for k = 0, 1, ..., m

with multiplicity C(m, k) at each level.

## Theorem A (Cayley Boost Spectrum)

The Cayley transform Q(x) = (1+x)/(1-x) maps each eigenvalue to:

**Q(λ_k) = (m - k)/k** for k = 1, ..., m-1

with Q(λ_0) = ∞ and Q(λ_m) = 0.

### Proof

Q((m - 2k)/m) = (1 + (m-2k)/m) / (1 - (m-2k)/m) = (2m - 2k)/(2k) = (m-k)/k. ∎

## Theorem B (Functional Equation)

The Cayley boost spectrum satisfies:

**Q(λ_k) · Q(λ_{m-k}) = 1** for all k = 1, ..., m-1

### Proof

Q(λ_k) · Q(λ_{m-k}) = ((m-k)/k) · ((m-(m-k))/(m-k)) = ((m-k)/k) · (k/(m-k)) = 1. ∎

### Interpretation

This is a **duality pairing**: the Cayley boost of mode k and its "mirror" mode m-k are multiplicative inverses. The product Q(λ_k) · Q(λ_{m-k}) = 1 is the tournament analog of a functional equation relating a zeta function at s and 1-s.

## Notes for the formalizer

(none yet)
