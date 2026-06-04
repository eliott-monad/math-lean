---
id: THM-405-lrc-bounded-ratio-first-window
source: 01-canon/theorems/THM-405-lrc-bounded-ratio-first-window.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-405
name: lrc-bounded-ratio-first-window
status: PROVED
date: 2026-06-03
session: oracle-2026-06-03-S582o
depends_on:
  - THM-386   # Lonely = central-box / nearest-integer predicate
  - THM-384   # LRC safety = observer-adjacent gap condition
---

# THM-405: Bounded speed ratio ⟹ LRC via the first window (AP is the sharp boundary)

## Statement

Let `n ≥ 2` and let `S = {v_1,…,v_{n-1}}` be distinct nonzero integers. Write
`a = min_i |v_i| ≥ 1` and `b = max_i |v_i|`. If

```
    b ≤ (n-1) · a          (equivalently  v_max / v_min ≤ n-1)
```

then `S` is lonely on the whole interval

```
    t ∈ [ 1/(n a) , (n-1)/(n b) ]   (nonempty),
```

hence `M(S) = max_t min_i ‖v_i t‖ ≥ 1/n`, i.e. **LRC@n holds for `S`**.

The bound is sharp: the arithmetic progression `S = {1,2,…,n-1}` has `a=1, b=n-1`, so
`b = (n-1)a` (equality) and the window collapses to the single point `t = 1/n` — recovering
the AP as the tight extremal (`M = 1/n` attained only at `t = j/n`).

## Proof

Loneliness is unchanged under `v_i → |v_i|` (since `‖(-v)t‖ = ‖vt‖`), so assume all
`v_i > 0`. For a positive integer `v` and `t ∈ (0, 1/v)` we have `vt ∈ (0,1)`, so
`frac(vt) = vt` and (THM-386 / `far_iff_fract`)

## Notes for the formalizer

(none yet)
