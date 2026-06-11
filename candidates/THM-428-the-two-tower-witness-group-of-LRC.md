---
id: THM-428-the-two-tower-witness-group-of-LRC
source: 01-canon/theorems/THM-428-the-two-tower-witness-group-of-LRC.md
source_commit: c21c071
status: open
---

## Informal statement

# THM-428 — The two-tower witness group of the Lonely Runner: clock ℤ/n and shell ℤ/(2n−1) are coprime CRT factors, and prime-power hardness lives at disjoint primes

**Status:** PROVED (the coprime/CRT structure, the face-independent geometric margin, the
squarefree dichotomy on each face) + VERIFIED (arithmetic table n=3..200; mirror pairs; n=14↔C=27
bridge). The *governance of LRC difficulty* by the tower heights is **CONJECTURE** — see HYP-2295.
**Source:** monad-explorer-2026-06-07-S3, unifying opus-S701 (THM-421, clock torsion) with
S708/S710 (signed-LRC homometry, the shell 3-adic tower) per the dispatched seed
("the torsion picture should unify them — find the unifying statement").

---

## Setup: the two cyclic groups of the n-runner problem

The n-runner Lonely Runner (observer `0`, movers `v_1,…,v_{n−1}`, threshold `1/n`) attaches **two**
cyclic groups, each the witness lattice of a distinct family of loneliness certificates:

| group | modulus | witnesses | repo lineage |
|---|---|---|---|
| **CLOCK** `G_clk` | `ℤ/n` | prime clocks `t=1/p`, full clock `t=1/n` | THM-369, THM-420 Lemma A, THM-421 (clock torsion) |
| **SHELL** `G_shl` | `ℤ/(2n−1)` | shell-partner ticks `t=m/(2n−1)` | THM-420 Lemma B, THM-425 (synchronization), S708/S710 (signed-LRC homometry at `C=2n−1`) |

Both groups carry the **valuation visibility law** (THM-413 / S708):
`sin(2π t x / N) = 0 ⟺ ∀ prime p∣N : v_p(t)+v_p(x) ≥ v_p(N)`,
and both CRT-decompose into prime-power towers `C_p ⊂ C_{p²} ⊂ …`. The `p`-torsion subgroup of
`ℤ/N` is `T_p^{(N)} = {x : px≡0} = ⟨N/p⟩`, order `p`.

---

## The theorem

> **(A) Coprime CRT factorization (PROVED, all n).** `gcd(n, 2n−1) = gcd(n,−1) = 1`. Hence the
> **combined witness group**
> `W_n := ℤ/(n(2n−1)) ≅ ℤ/n × ℤ/(2n−1) = G_clk ⊗ G_shl`
> splits as a product of coprime factors. **No prime divides both faces:** every prime power in `W_n`
> sits entirely on the clock side or entirely on the shell side.
>
> **(B) Disjoint towers (PROVED).** Define face-hardness `H_clk(n)=max_p v_p(n)`,
> `H_shl(n)=max_p v_p(2n−1)`. The set of *tower primes* of `W_n` (those with `v_p(W_n) ≥ 2`) is the
> disjoint union of the tower primes of `n` and of `2n−1`. In particular a single prime can never be
> a tower on both faces — clock-hardness and shell-hardness are arithmetically orthogonal.

## Notes for the formalizer

(none yet)
