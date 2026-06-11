---
id: THM-421-clock-leaks-are-localized-to-the-prime-torsion-of-Z-mod-n
source: 01-canon/theorems/THM-421-clock-leaks-are-localized-to-the-prime-torsion-of-Z-mod-n.md
source_commit: c21c071
status: open
---

## Informal statement

# THM-421 — LRC clock-witness leaks are localized to the prime-torsion of ℤ/n (CRT)

**Status:** PROVED (the CRT localization + the geometric margin) + VERIFIED (n=12,14,15,18,20,21,30,
33,35,45,50). Sharpens the k-clock witness THM-420/Lemma A by saying *where* the obstruction lives.
**Source:** opus-2026-06-06-S701, from the user's observation: "the n=14 half-turn leak at residue 7
is 1 mod 2 and 0 mod 7 — the 2-torsion projecting to zero in the 7-runner base; n=15's order-3 leaks
at 5,10 are the 3-torsion projecting to zero in the 5-runner base; the leakage is locked into the
algebraic torsion of the composite divisors."

## Setup

`n` runners, speeds `v_i`, full clock `t = 1/n`; runner `i` sits at `v_i/n`, position governed by
`v_i mod n`. A **clock leak** at prime `p ∣ n` = a runner that defeats every clock dividing the
`p`-cofactor (`≡ 0` there) yet survives in the `p`-direction. For `n = ∏_p p^{a_p}`, CRT gives
`ℤ/n ≅ ∏_p ℤ/p^{a_p}`; the **`p`-torsion subgroup** is `T_p = {x : p·x ≡ 0 (mod n)} = ⟨n/p⟩`, of
order `p`.

## The theorem

> **(1) CRT localization.** Every nonzero `x ∈ T_p` is `≡ 0` in the cofactor base
> `m_p = n/p^{a_p}` and nonzero in the `p`-base. In particular the generator `n/p` is the residue
> the user named: `n=14, p=2 ⟹ n/p = 7 ↔ (1 mod 2, 0 mod 7)`; `n=15, p=3 ⟹ n/p = 5 ↔ (2,0)` and
> `10 ↔ (1,0)` mod `(3,5)`.
>
> **(2) Geometric margin (all `n`).** At the full clock `t = 1/n`, a `p`-torsion runner `x ∈ T_p\{0}`
> sits at an **exact order-`p` rotation** `x/n = j/p` (`j = x/(n/p)`), so `‖x/n‖ ≥ 1/p`. The
> `p`-torsion leak is *intrinsically safe by margin `1/p`*.
>
> **(3) Squarefree vs prime-power dichotomy.** The canonical generator `n/p = p^{a_p−1} m_p`:
> - **`a_p = 1` (squarefree `p`):** `n/p = m_p` is coprime to `p`, so the socle *survives mod `p`* —
>   the leak is plugged by the **prime clock `t = 1/p`** (margin `1/p`). (n=14, 15, 21, 30, 33, 35.)
> - **`a_p ≥ 2` (prime-power `p`):** `n/p = p^{a_p−1}m_p ≡ 0 (mod p)`, so the socle *dies mod `p`*
>   too — the prime clock fails on it; control needs the **deeper `p`-adic clock** `t = 1/p^{a_p}`.
>   (n=12, 18, 20, 45, 50: socle `survive mod p = False`, verified.)
>
> **(4) The hard core.** The runners that leak at *every* prime simultaneously are
> `⋂_p (≡0 \text{ in the }p\text{-comp}) = \{x ≡ 0 (\bmod\, \mathrm{rad}\,n)\}` (multiples of the
> radical). For **squarefree `n` this is `{0}` only** — a runner is all-prime-dangerous iff
> `v ≡ 0 (mod n)`, recovering exactly the **THM-398 multiple-of-`n` residual**. For prime-power-
> containing `n` the hard core is larger (e.g. `{0,6}` at `n=12`).

## Notes for the formalizer

(none yet)
