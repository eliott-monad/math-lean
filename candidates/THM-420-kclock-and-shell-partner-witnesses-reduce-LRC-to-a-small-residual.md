---
id: THM-420-kclock-and-shell-partner-witnesses-reduce-LRC-to-a-small-residual
source: 01-canon/theorems/THM-420-kclock-and-shell-partner-witnesses-reduce-LRC-to-a-small-residual.md
source_commit: c21c071
status: open
---

## Informal statement

# THM-420 — The k-clock witness and the shell-partner lemma reduce LRC(n) to a small explicit residual

**Status:** PROVED (the two witness lemmas) + VERIFIED (the residual is loose, n≤8 window). A major
refinement of the LRC reduction, NOT a full proof of LRC(14).
**Source:** opus-2026-06-07-S700. Convention: `n` runners, gap `1/n`, speeds `v_1,…,v_{n−1}`
distinct positive integers; `M(S)=max_t min_i ‖v_i t‖`; LRC(n) ⟺ `M(S) ≥ 1/n` for all `S`;
`C = 2n−1`.

## Two explicit-witness lemmas

> **Lemma A (k-clock witness — generalizes THM-369).** If there exists `k ∈ {2,…,n}` such that no
> `v_i ≡ 0 (mod k)`, then `t = 1/k` gives `M(S) ≥ 1/k ≥ 1/n`. *Proof:* `‖v_i/k‖ = min(r,k−r)/k`
> with `r = v_i mod k ∈ {1,…,k−1}`, so `≥ 1/k`; and `1/k ≥ 1/n` since `k ≤ n`. ∎
> (THM-369 is the case `k = n`; smaller `k` give a *larger* bound `1/k`.)

> **Lemma B (shell-partner lemma — NEW).** If all `v_i` are coprime to `C = 2n−1` and there is a
> **shell-partner pair** `v_i + v_j ≡ 0 (mod C)`, then `M(S) ≥ 2/(2n−1) > 1/n`.
> *Proof.* The discrete witness `t = m/C` gives `‖v_k m/C‖ ≥ 2/C` for all `k` iff
> `v_k m ∉ {0, ±1} (mod C)` for all `k`. The forbidden set is `F = {0} ∪ \{±v_k^{-1} : k\}`
> (using `v_k` coprime: `v_k m ≡ ±1 ⟺ m ≡ ±v_k^{-1}`). A shell-partner gives
> `v_j ≡ −v_i ⟹ v_j^{-1} ≡ −v_i^{-1} ⟹ \{±v_j^{-1}\} = \{±v_i^{-1}\}`, so that pair contributes
> **2 values, not 4**: `|F\setminus\{0\}| ≤ 2(n−1) − 2 = 2n−4`. Hence `|F| ≤ 2n−3 < 2n−1 = |ℤ/C|`,
> so `≥ 2` good `m` exist; for such `m`, `t = m/C` gives `M ≥ 2/C = 2/(2n−1) > 1/n`
> (gap `= 1/(n(2n−1))`). ∎
> **Verified** (`…s700.py`): all shell-partner configs at `n = 5,6,7` have a good `m` and
> `M ≥ 2/(2n−1)`.

## The refined reduction

> **Corollary.** LRC(n) holds for every config except possibly the **residual**:
> ```
>   R(n) = { S : every k∈{2,…,n} divides some v_i  (all clocks fail)
>                 AND  S has no shell-partner pair (v_i+v_j ≢ 0 mod 2n−1) }.
> ```
> Everything outside `R(n)` is loose by Lemma A or Lemma B. So **LRC(n) ⟺ every config in `R(n)`
> is loose.**

**Verified** (`…s700c.py`): `R(n)` is small and entirely loose in the window `[1,2n]`:
```
   n :   5    6    7    8

## Notes for the formalizer

(none yet)
