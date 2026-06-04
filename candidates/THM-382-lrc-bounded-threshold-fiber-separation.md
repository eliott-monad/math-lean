---
id: THM-382-lrc-bounded-threshold-fiber-separation
source: 01-canon/theorems/THM-382-lrc-bounded-threshold-fiber-separation.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-382
name: lrc-bounded-threshold-fiber-separation
status: PROVED (exact finite computation, bounded scope)
date: 2026-06-01
session: codex-2026-06-01-S513
depends_on:
  - THM-372
  - THM-381
---

# THM-382: Threshold-decorated fibers separate the bounded n=3 and n=4 LRC audits

## Statement

In the exact bounded audit

```text
04-computation/lrc_iso_class_constraint_s512.py
```

the sampled state space consists of all half-turn walls, all LRC endpoint
walls, and all midpoints between consecutive walls for the following primitive
speed systems:

```text
total n=3, moving speeds <= 16: 79 systems
total n=4, moving speeds <= 10: 109 systems
```

For each sampled state, the script computes LRC-good status and seven
tournament-class lifts:

```text
phase_half
phase_marked_observer
phase_safe_colored
gap_rank_marked_adjacent
gap_threshold_fiber
pair_deficit_origin_marked

## Notes for the formalizer

(none yet)
