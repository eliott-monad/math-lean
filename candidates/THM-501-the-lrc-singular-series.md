---
id: THM-501-the-lrc-singular-series
source: 01-canon/theorems/THM-501-the-lrc-singular-series.md
source_commit: 8058679
status: open
---

## Informal statement

---
id: THM-501
title: The LRC singular series — the covering-deficit density limit L(S), L>0 ⟹ loose, and the reduction of C'(14) to a singular-series lower bound
status: PARTIAL — the density limit L(S), its vanishing-iff-tight, and L>0 ⟹ loose are established (expansion + exhaustive/large-q verification); the uniform lower bound inf L>0 (which would prove C'(14)) is CONJECTURED with strong evidence + the extremal structure identified
source: kind-pasteur-2026-06-14-S6
depends_on:
  - THM-398   # C' reduction; D(q,S)>0 <=> loose-via-q
  - THM-492   # band criterion (the deficit's definition)
  - THM-497   # dilated-band covering; the over-correlated regime
related:
  - HYP-2489  # the LRC deficit = circle-method singular series (this makes it concrete)
  - HYP-2501  # L(S) exists
  - HYP-2502  # L>0 => loose
  - THM-446   # the additive-relation / Sidon ladder (the relation lattice that controls L)
---

# THM-501 — the LRC singular series `L(S)`

## The object

For a speed set `S` (13 distinct positive integers) the covering deficit is
`D(q,S) = #{a ∈ Z/q : v·a mod q ∉ B_q for all v ∈ S}`, `B_q = ±{0,…,⌊q/14⌋}`;
`D(q,S) > 0 ⟺ S` has a strict loneliness witness at shell `q` (THM-398/492).

**Additive-character expansion.** Writing `1 − 1_{B_q}(va) = (1−β) − Σ_{t≠0} ĉ(t)
e_q(tva)` with `β = (2⌊q/14⌋+1)/q`, `ĉ(t) = (1/q)Σ_{x=−⌊q/14⌋}^{⌊q/14⌋} e_q(−tx)`
(the Dirichlet kernel, real), and summing the product over `a`:

> `D(q,S)/q = (1−β)^{13} + Σ_{∅≠T⊆S} (1−β)^{13−|T|}(−1)^{|T|}
>            Σ_{(t_v)_{v∈T}: t_v≠0, Σ_{v∈T} t_v v ≡ 0 (mod q)} ∏_{v∈T} ĉ(t_v).`

The deviation from the independence main term `(1−β)^{13}` is a sum over **additive
resonances** `Σ_{v∈T} t_v v ≡ 0 (mod q)` of the speeds.

## The singular series (PROVED to exist; verified)

A resonance from a non-zero integer relation `Σ t_v v = m ≠ 0` only fires at `q | m`
— finitely many `q`. So as `q → ∞` only the **exact** integer relations
`Σ_{v∈T} t_v v = 0` survive, and `ĉ(t) → s(t) := sin(πt/7)/(πt)` (the band's sinc
kernel). Therefore the limit

## Notes for the formalizer

(none yet)
