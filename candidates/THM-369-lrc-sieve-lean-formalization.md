---
id: THM-369-lrc-sieve-lean-formalization
source: 01-canon/theorems/THM-369-lrc-sieve-lean-formalization.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-369
name: lrc-sieve-lean-formalization
status: PROVED (Lean-checked)
date: 2026-05-31
session: oracle-2026-05-31-S18
depends_on:
  - THM-358
  - THM-360
  - THM-366
lean: 04-computation/lean/TournamentH7/TournamentH7/LonelyRunner.lean
---

# THM-369: Lean Formalization of the LRC Denominator Sieve (master lemma)

This is the **machine-checked (Lean 4 + Mathlib) formalization** of the
small-denominator sieve that codex proved on paper / in Python as **THM-366**
(same session, independent). It packages the sieve as one master lemma from
which THM-360 and the positive half of THM-358 fall out as corollaries.

## Formalized statement

Encode the nearest-integer norm `‖x‖ ≥ 1/n` in the "far from every integer" form
```
Lonely n v t  :=  ∀ i, ∀ m : ℤ,  1/n ≤ |v i · t − m|.
```

**`sieve_frac` (master lemma).** For `q, n : ℕ` with `0 < q ≤ n`, `a : ℤ`
coprime to `q`, and `∀ i, ¬ (q ∣ v i)`:
```
Lonely n v (a / q).
```
Proof: `v i·(a/q) − m = (v i·a − m q)/q`; the numerator is a nonzero integer
(`q ∤ v i` and `q ⟂ a` ⇒ `q ∤ v i·a`), so `|numerator| ≥ 1` and the value is
`≥ 1/q ≥ 1/n`. (Lean: `IsCoprime.dvd_of_dvd_mul_right` + `Int.one_le_abs`; no
`Int.fract`/measure machinery.)

## Lean corollaries (all in `LonelyRunner.lean`, axiom-clean)

- `sieve_one_div` — `a = 1`: the bare denominator sieve.

## Notes for the formalizer

(none yet)
