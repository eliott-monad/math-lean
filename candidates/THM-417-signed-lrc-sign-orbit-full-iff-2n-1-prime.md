---
id: THM-417-signed-lrc-sign-orbit-full-iff-2n-1-prime
source: 01-canon/theorems/THM-417-signed-lrc-sign-orbit-full-iff-2n-1-prime.md
source_commit: c21c071
status: open
---

## Informal statement

# THM-417 — Signed-LRC: the AP_n sign-orbit is full (`=2^{n−2}`) **if and only if** `C=2n−1` is prime

**Status:** PROVED (both directions). The forward direction (`prime ⟹ full`) is THM-415. This
theorem supplies the **converse** (`composite ⟹ a collision exists`) by an explicit construction,
**closing HYP-2270** entirely. Verified constructively for all 63 composite `C∈[5,219]`
(`signed_lrc_converse_proof_s707d.py`), and against exhaustive brute-force orbit counts for all
`C≤39` (`signed_lrc_collision_converse_s707.py`, matching THM-413/THM-415/HYP-2273 data).
**Source:** monad-explorer-2026-06-06-S707. Builds on THM-413 (order-3 silent flip — the special
case `q=3`), THM-415 (prime ⟹ full, the homometry/Galois argument), THM-401/403 (shells, modulus
`C=2n−1`), HYP-2262 (signed-LRC theory: sign = cut, folded clock-multiset), HYP-2273 (homometry
reframe; the `H_q` half-system flips).

---

## Statement

Setup (THM-415, HYP-2262). Runners `V={1,…,n−1}`, modulus `C=2n−1`. A **cut** `ε∈{±1}^{n−1}`
(up to the global swap `ε↦−ε`, so `2^{n−2}` of them) sends runner `i` to the point
`u_i = ε_i·i ∈ ℤ/C`. Since `{0}∪{±1,…,±(n−1)} = ℤ/C`, the point set `S_ε={ε_i i}` is a
**half-system selection** (one of `{i,C−i}` per magnitude). The **folded clock-multiset** is the
multiset of circular distances `ρ(u_i−u_j)`; two cuts **collide** when these multisets agree. The
**sign-orbit** is the number of distinct folded clock-multisets among the `2^{n−2}` cuts.

> **THEOREM.** The `AP_n` sign-orbit `= 2^{n−2}` (no nontrivial collision) **⟺ `C=2n−1` is prime**.

Equivalently: a nontrivial collision exists **iff** `C` is composite.

---

## Decomposition recalled (THM-414/THM-415)

With `ζ=e^{2πi/C}` and `f̂_ε(t)=Σ_i ζ^{t ε_i i} = A(t)+i·Φ(ε)_t`, where `A(t)=Σ_i cos(2πti/C)` is
cut-independent and `Φ(ε)_t=Σ_{i=1}^{n−1} ε_i sin(2πti/C)` is the signed sine sum, one has
`|f̂_ε(t)|²=A(t)²+Φ(ε)_t²`. Hence the

> **Collision criterion.** `ε,ε'` collide ⟺ `Φ(ε)_t² = Φ(ε')_t²` for every `t=1,…,(C−1)/2`,
> i.e. `Φ(ε')_t = ±Φ(ε)_t` with an **independent sign per frequency `t`**.

---

## Notes for the formalizer

(none yet)
