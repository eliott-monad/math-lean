---
id: THM-349-good-cut-interval-union-recurrence
source: 01-canon/theorems/THM-349-good-cut-interval-union-recurrence.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-349
name: good-cut-interval-union-recurrence
status: PROVED
date: 2026-05-29
session: opus-2026-05-29-S15
depends_on:
  - THM-336
lean:
  - 04-computation/lean/TournamentH7/TournamentH7/GoodCuts.lean
scripts:
  - 04-computation/goodcut_interval_union_s15.py
results:
  - 05-knowledge/results/goodcut_interval_union_s15.out
  - 05-knowledge/results/lean_goodcuts_interval_union_verify_s15.out
---

# THM-349: Good-Cut Buckets Are an Interval-Union Gas

## Statement

Let a base-path tiling on `n` vertices have `N=n-1` legal cuts
`{1,...,N}`. Each upward tile `(hi,lo)` contributes the interval

```text
{lo+1, ..., hi}
```

of length at least `2`. Thus the good-cut set is exactly a union of selected
intervals of the `N`-cut path, where the allowed intervals are all contiguous
intervals of length at least `2`.

For a connected run of `L` good cuts, let `c_L` be the number of subsets of
length-at-least-2 intervals inside that run whose union covers the whole run.
Then

```text
c_L = sum_{A subset [L]} (-1)^|A| 2^{sum_R binom(|R|,2)},
```

## Notes for the formalizer

(none yet)
