---
id: THM-404-doubling-rigidity-dichotomy-of-the-witness-orbit
source: 01-canon/theorems/THM-404-doubling-rigidity-dichotomy-of-the-witness-orbit.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-404
title: Doubling-rigidity dichotomy — the AP witness orbit is ⟨×2⟩-connected iff n is odd
status: PROVED
source: opus-2026-06-03-S594
depends_on:
  - THM-403   # the witness orbit is (ℤ/n)*
related:
  - HYP-2126  # the dynamical-rigidity dichotomy (S585)
  - THM-398   # C′ (the even-n residual)
---

# THM-404 — doubling rigidity: the witness orbit is ⟨×2⟩-connected iff n is odd

## Statement

Let `W = { j/n : j ∈ (ℤ/n)^* }` be the AP's floor-witness orbit (THM-403). The
**doubling map** `t ↦ 2t` acts on the clock as `j ↦ 2j (mod n)`. Then:

> `2 · W ⊆ W` **iff `2 ∈ (ℤ/n)^*` iff `n` is ODD.**
>
> - **`n` odd:** `×2` is a bijection of `(ℤ/n)^*`, permuting `W`; the orbits are the
>   cosets of the cyclic subgroup `⟨2⟩ ≤ (ℤ/n)^*`, each of size `ord_n(2)`. The witness
>   orbit is **dynamically connected** (foliated by doubling cycles).
> - **`n` even:** `×2` maps every unit `j` to `2j`, which is even, hence
>   `gcd(2j, n) ≥ 2`, so `2j ∉ (ℤ/n)^*`. Thus `2·W ∩ W = ∅` — the doubling action
>   **fragments** the witness orbit (no nontrivial doubling cycle lies inside `W`).

## Proof

`2 ∈ (ℤ/n)^* ⟺ gcd(2,n)=1 ⟺ n` odd.

*Odd `n`:* multiplication by the unit `2` is a bijection of `(ℤ/n)^*`; it permutes the
witnesses `j/n`. Its orbits are the right cosets of `⟨2⟩`, each of cardinality the
multiplicative order `ord_n(2)`.

*Even `n`:* for any unit `j` (so `j` odd, `gcd(j,n)=1`), `2j` is even; since `n` is even,
`gcd(2j,n) ≥ 2`, so `2j` is a non-unit, i.e. `2j/n ∉ W`. Hence `×2` carries `W` entirely
out of `W`. ∎

## Notes for the formalizer

(none yet)
