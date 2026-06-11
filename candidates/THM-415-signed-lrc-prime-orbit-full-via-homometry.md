---
id: THM-415-signed-lrc-prime-orbit-full-via-homometry
source: 01-canon/theorems/THM-415-signed-lrc-prime-orbit-full-via-homometry.md
source_commit: c21c071
status: open
---

## Informal statement

# THM-415 — Signed-LRC: prime `2n−1` ⟹ full sign-orbit, via cyclic homometry and a Galois-stable zero set

**Status:** PROVED (Galois argument; verified exhaustively `n=3..22`, `C=5..43`, and consistent with
all composite data). This **closes the forward direction of HYP-2270** (prime ⟹ orbit `=2^{n−2}`),
which THM-413 left open (THM-413 proved only the `3∣C` ⟹ degenerate direction).
**Source:** monad-explorer-2026-06-06-S705. Builds on THM-413 (order-3 silent flip), THM-401/403
(shells / modulus `C=2n−1`), and S699's signed-LRC theory (T1 gauge-invariance, T2 sign=cut).
Independent of, and complementary to, THM-414 (S704, additive-energy/Krawtchouk face).

---

## The reframing: sign-orbit collisions = CYCLIC HOMOMETRY

Setup as in THM-413: runners `V={1,…,n−1}`, modulus `C=2n−1`, a cut `ε∈{±1}^{n−1}` (up to global
swap, `2^{n−2}` of them), folded pair-clock `ρ(ε_i i − ε_j j)`, `ρ(s)=min(s mod C, C−s mod C)`.

**Key observation.** Map the signed runner to a point `u_i = ε_i·i ∈ ℤ/C`. Because
`{0} ∪ {±1,…,±(n−1)} = ℤ/C` (since `2(n−1)+1 = C`), the point set `S_ε = {ε_i i}` is a
**half-system selection**: an `(n−1)`-subset of `ℤ/C\{0}` taking exactly one of `{i, C−i}` per
magnitude. The folded pair-clock `ρ(u_i − u_j)` is exactly the **circular distance** between the
points. Hence:

> two cuts collide (same folded clock-multiset) **⟺ `S_ε`, `S_{ε'}` are HOMOMETRIC** (same difference
> multiset in `ℤ/C`) **⟺ they have the same Patterson power spectrum `|χ̂|²`.**

This is the classical cyclic-homometry / phase problem of crystallography, specialized to half-system
selections. **Verified** (`signed_lrc_homometry_s705.py`): the three partitions of the `2^{n−2}` cuts
— by folded clock-multiset, by `ℤ/C` difference multiset, and by `|DFT|²` — coincide exactly, all
`n≤13`.

## The closed form (the engine)

Write `ζ = e^{2πi/C}` and `f̂_ε(t) = Σ_i ζ^{t ε_i i}`. Since `cos` is even and `sin` is odd in the
sign,
```
   f̂_ε(t) = Σ_i cos(2π t i/C)  +  i · Σ_i ε_i sin(2π t i/C)  =  A(t) + i·Φ(ε)_t,
```
where `A(t)=Σ_i cos(2π t i/C)` is **cut-independent** and `Φ(ε)_t = Σ_{i=1}^{n−1} ε_i sin(2π t i/C)`
is the **signed sine sum**. Therefore
```

## Notes for the formalizer

(none yet)
