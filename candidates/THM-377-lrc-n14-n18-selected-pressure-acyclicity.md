---
id: THM-377-lrc-n14-n18-selected-pressure-acyclicity
source: 01-canon/theorems/THM-377-lrc-n14-n18-selected-pressure-acyclicity.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-377
name: lrc-n14-n18-selected-pressure-acyclicity
status: PROVED (exact finite computation, selected-row scope)
date: 2026-06-01
session: codex-2026-06-01-S500
depends_on:
  - THM-372
  - THM-375
  - THM-376
---

# THM-377: Selected n=14/n=18 pressure lifts have no strict SCC or 3-cycle

## Statement

In the selected-row audit of

```text
04-computation/lrc_n14_n18_tournament_pingpong_s492.py
```

the following eight rows were tested:

```text
initial n=14
initial n=18
n=14 lpd ladder, scale 7 skip 6
n=18 lpd ladder, scale 9 skip 8
n=14 gate ladder, scale 14 skip 6
n=18 gate ladder, scale 18 skip 8
n=14 single-gate repair: replace 6 by 14*16
n=18 single-gate repair: replace 8 by 18*18
```

At the selected exact endpoint/gap times, three incomplete pressure
tournaments were computed:

```text
k1 relief:      nearest-distance deletion relief

## Notes for the formalizer

(none yet)
