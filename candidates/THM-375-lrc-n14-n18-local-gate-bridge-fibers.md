---
id: THM-375-lrc-n14-n18-local-gate-bridge-fibers
source: 01-canon/theorems/THM-375-lrc-n14-n18-local-gate-bridge-fibers.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-375
name: lrc-n14-n18-local-gate-bridge-fibers
status: PROVED (exact finite computation)
date: 2026-06-01
session: codex-2026-06-01-S500
depends_on:
  - THM-357
  - THM-360
---

# THM-375: The n=14 and n=18 local gate invoices have exact bridge fibers

## Statement

Consider the local LRC endpoint-cover problem at denominator `n`: include a
single `n`-gate speed, look only at the `2n` endpoints owned by that gate, and
ask which lower columns `1,...,n-1` strictly protect all of those endpoints.

For `n=14`, the exact minimum lower cover size is `8`.  Every minimum cover
contains the forced odd fan

```text
(1,3,5,7,9,11,13)
```

and exactly one even bridge from

```text
{2,4,6,8,10,12}.
```

For `n=18`, the exact minimum lower cover size is also `8`.  Every minimum
cover contains the forced fan

```text
(1,5,7,9,11,13,17)
```

and exactly one bridge from

## Notes for the formalizer

(none yet)
