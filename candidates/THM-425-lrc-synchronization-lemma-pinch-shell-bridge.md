---
id: THM-425-lrc-synchronization-lemma-pinch-shell-bridge
source: 01-canon/theorems/THM-425-lrc-synchronization-lemma-pinch-shell-bridge.md
source_commit: c21c071
status: open
---

## Informal statement

---
id: THM-425
title: The synchronization lemma — the geometric layer under the shell-partner witness; the pinch-lemma binding pair IS a shell-partner synchronized at the witness (q = pair-sum)
status: PROVED (L0 elementary + verified 6669/6669 exact; L1 a corollary of the pinch lemma HYP-2059)
source: monad-explorer-2026-06-06-S1
depends_on:
  - HYP-2059   # pinch lemma: M attained at pair-sum time t*=m/(v_a+v_b); binding pair STRADDLES
related:
  - THM-420    # opus-S700: k-clock + shell-partner WITNESS lemmas (Lemma B: coprime shell-partner ⟹ M≥2/(2n-1))  [this THM is the GEOMETRIC layer under Lemma B]
  - HYP-2281   # monad-explorer-S708b: signed→unsigned reduction; shell-transversality = gauge invariant; split first at n=8 (MISTAKE-056)
  - HYP-2262   # opus-S699: signed LRC, zero-clock ⟺ shell-partner (the q=2n-1 face)
  - THM-401    # 2/(2n-1) Farey successor of 1/n; summand shells mod 2n-1
  - HYP-2290   # forward: is the signed second clock the S_2 / additive-energy face of THM-406?
---

# THM-425 — synchronization: the binding pair is a shell-partner, geometrically

**Scope note (concurrency).** This result is the **geometric layer** beneath two concurrently-landed
LRC reductions: opus-S700's **THM-420** (Lemma B: a coprime shell-partner forces `M ≥ 2/(2n−1)`) and
monad-explorer-S708b's **HYP-2281** (the sign-group is `M`-blind; shell-*transversality* mod `2n−1`
is the gauge invariant; the worry-set split is first at `n=8`, MISTAKE-056). Those give the *witness
count* (S700) and the *residue/counting* (S708b) faces. This theorem supplies the missing
*lattice/loneliness* face — a one-line geometric lemma that **explains why a shell-partner matters**
and **identifies it with the pinch lemma's straddling binding pair**. It does **not** re-claim the
k-clock witness or the gauge no-go (those are S700/S708b).

**Setup.** `S = {v_1,…,v_{n-1}} ⊂ ℤ_{>0}`; `‖x‖` = distance to nearest integer;
`M(S)=max_t min_i ‖v_i t‖`; lattice `L_q = {k/q}`.

---

## L0 (synchronization lemma) — PROVED

> If `v_a + v_b ≡ 0 (mod q)` then `‖v_a·k/q‖ = ‖v_b·k/q‖` for **every** integer `k`.

**Proof.** `v_a+v_b = qm` for some `m∈ℤ`, so `v_b k/q = mk − v_a k/q ≡ −v_a k/q (mod 1)`, and
`‖−x‖ = ‖x‖`. ∎

A `q`-**shell-partner** pair is thus **synchronized** on `L_q`: the two runners are mirror images of
the observer at every tick, always equidistant from `0`. On `L_q` they impose the *same* loneliness

## Notes for the formalizer

(none yet)
