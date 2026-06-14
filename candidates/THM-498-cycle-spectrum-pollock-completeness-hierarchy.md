---
id: THM-498-cycle-spectrum-pollock-completeness-hierarchy
source: 01-canon/theorems/THM-498-cycle-spectrum-pollock-completeness-hierarchy.md
source_commit: a725c89
status: open
---

## Informal statement

---
id: THM-498
title: The Pollock-completeness hierarchy of tournament cycle spectra — c3 complete, c5 first-gap at (n=6, value 10), H gappy
status: PARTIAL — the c5 first-gap is PROVED by exhaustive computation + an independent second method (0 disagreements); the hierarchy framing and the Pollock-method reading are the conceptual content
source: kind-pasteur-2026-06-13-S3
depends_on:
  - THM-462   # c3 spectrum gap-free [0,M(n)] (the Lagrange-four-square / Pollock-style engine)
  - THM-029   # H-forbidden value 7
  - THM-079   # H-forbidden value 21
related:
  - goldbach-polygonal-zeckendorf-additive-bases-s501   # the three-currencies additive-coverage frame
---

# THM-498 — the Pollock-completeness hierarchy of tournament cycle spectra

## The Pollock lens

Pollock's conjectures (1850) ask whether a fixed family of figurate numbers
(tetrahedral, octahedral) is an **additive basis of bounded order** — whether
*every* integer is representable. In the repo's additive-coverage frame
(reflection `goldbach-polygonal-zeckendorf-additive-bases-s501`) this is the
**bounded-arity currency**: sparse atoms, but a fixed number of summands large
enough to erase residue gaps. The tournament analogue of "every integer is
representable" is: **is an invariant's value-set GAP-FREE** (every value in
`[0,max]` realized by some tournament)? Call such a channel *Pollock-complete*.

THM-462 proved the cubic channel `c3` (directed 3-cycle count) is gap-free
`[0,M(n)]` at all `n` — and its engine is exactly a Waring/Pollock-style argument:
the score deviation satisfies `f(s) = m(n) + (Σ e_i²)/2`, and **Lagrange's
four-square theorem** makes `Σ e_i²` hit every value in the top window, with
induction covering the rest. So `c3` is Pollock-complete, *proved by the
prototype Pollock theorem (four squares)*. At the other end, the degree-`n`
invariant `H = I(Ω,2)` is **incomplete**: it has the forbidden values 7 and 21
(THM-029/THM-079). The question THM-498 answers: **where, in the cycle-length
hierarchy, does Pollock-completeness break?**

## The result (c5 — verified)

> **THM-498.** Let `c5(T)` = the number of directed 5-cycles of a tournament `T`.
> The `c5` value-set over `n`-vertex tournaments is **gap-free at `n = 5`

## Notes for the formalizer

(none yet)
