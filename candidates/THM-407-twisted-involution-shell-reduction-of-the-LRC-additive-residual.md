---
id: THM-407-twisted-involution-shell-reduction-of-the-LRC-additive-residual
source: 01-canon/theorems/THM-407-twisted-involution-shell-reduction-of-the-LRC-additive-residual.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-407 — Twisted-involution (scaling × time-reversal) reduction of the LRC additive residual; n=14 collapses 13 shells → 3

**Status:** PROVED (Lemma A elementary; the reduction Corollary follows; the n=14 stratification
verified exactly). **Source:** opus-2026-06-03-S599g (remote-control). Realises Transfer T2/T8
(HYP-2160) as a concrete n=14 improvement, via the laminar-flow / criss-cross picture.
**Setup:** speeds `S={v_1,…,v_{n−1}}⊂ℤ_{>0}`, gap `1/n`, `M(S)=max_t min_i ‖v_i t‖`; LRC(n) ⟺
`M(S)≥1/n` for all `S`. Pair-sum modulus `2n−1` (THM-401); **shells** = the pairs `{a,−a}` in
`ℤ/(2n−1)`, `a=1,…,n−1`.

---

## The flow picture (where this lives)

Draw the trajectories `y=v_i t (mod 1)`: a **criss-cross lattice** of lines of slope `v_i`, with
crossings at `t=m/(v_i±v_j)` (the arrangement vertices = the candidate lonely times, S599d). The
danger bands `‖v_i t‖<1/n` are horizontal strips; a **lonely time** is a vertical line threading
the **laminar channels** between all strips. Two maps preserve this entire picture's tightness:

## Lemma A (scaling & time-reversal invariance of `M`) — PROVED

> For every integer `c≥1` and every sign, `M(cS) = M(S)` and `M(−S) = M(S)`.

**Proof.** `M(−S)=M(S)` since `‖(−v)t‖=‖vt‖`. For scaling: as `t` runs over `[0,1)`, `u:=ct mod 1`
runs over all of `[0,1)` (`c` times around), and `min_i‖(cv_i)t‖ = min_i‖v_i u‖`; taking the sup,
`M(cS)=sup_u min_i‖v_i u‖=M(S)`. ∎ **Verified** (`lrc_twisted_involution_flow_shells_s599g.py`):
`M=M(2S)=M(3S)=1/6` for the AP and the sporadic `(1,3,4,5,9)`; `2/5` for a loose config.

Geometrically: **time-reversal `t↦−t`** is an honest involution of the laminar flow (fixing
`t=0,½`); **doubling `S↦2S`** is the *twist* (the renormalisation that rescales the criss-cross
lattice by 2). Together they generate the tightness-preserving group.

## Corollary (twisted-involution shell reduction) — PROVED

> On the cover-relevant data — the residues mod `2n−1` (THM-401/S574) — scaling-by-2 and
> negation act as the multiplicative group `G = ⟨2,−1⟩ ≤ (ℤ/(2n−1))^×`. By Lemma A every
> `G`-orbit of shells is a single tightness class, so the worry-set's **additive residual is
> determined by one shell per `G`-orbit.** The number of cases is `#{G\text{-orbits on } ℤ/(2n−1)\setminus\{0\}}`,
> not `n−1`.

The reflections `(−1)·2^k ∈ G` are the **twisted involutions on the flow shells** (glide-reflections

## Notes for the formalizer

(none yet)
