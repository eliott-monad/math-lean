---
id: THM-391-lrc-n4-mod4-character-pairwise-closed-form
source: 01-canon/theorems/THM-391-lrc-n4-mod4-character-pairwise-closed-form.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-391
name: lrc-n4-mod4-character-pairwise-closed-form
status: PROVED
date: 2026-06-01
session: monad-researcher-2026-06-01-S1
depends_on:
  - HYP-2004
  - THM-369
---

# THM-391: The n=4 pairwise safe measure is a mod-4 odd-character closed form

## Statement

Work at LRC threshold `1/n` with `n=4` (3 runners). For a single positive
integer speed `s`, let the **safe set** be

```text
S_s = { t in [0,1) : ||s t|| >= 1/4 },     |S_s| = 1/2.
```

Let `chi4` be the unique non-principal (odd) Dirichlet character mod 4:
`chi4(1)=+1`, `chi4(3)=-1`, `chi4(even)=0`. Then for distinct positive integers
`a, b` with `d = gcd(a,b)`, `a' = a/d`, `b' = b/d`,

```text
|S_a ∩ S_b|  =  1/4  +  chi4(a') chi4(b') / (4 a' b').
```

Equivalently the pairwise resonance correction is
`R2^(a,b) = chi4(a') chi4(b') / (4 a' b')`.

### Consequences
- The correction is **nonzero iff both cofactors `a', b'` are odd**; it has
  magnitude `1/(4 a' b') <= 1/12` (max at `{a',b'}={1,3}`).
- `|S_a ∩ S_b| >= 1/4 - 1/12 = 1/6`, with equality iff `{a', b'} = {1,3}`
  (e.g. `(a,b)=(1,3)` or any `(d, 3d)`).

This is the exact **mod-4 odd-harmonic analogue** of the n=3 Legendre-symbol

## Notes for the formalizer

(none yet)
