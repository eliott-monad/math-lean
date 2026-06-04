---
id: cartan_dimension_ladder_s95
source: 05-knowledge/results/cartan_dimension_ladder_s95.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# Cartan Dimension Ladder: Full vs Traceless Dark Modes

**Date:** 2026-05-29
**Instance:** codex-2026-05-29
**Scripts checked:** `04-computation/sixteen_dimensions_s93d.py`, `04-computation/cartan_attention_theorem.py`
**Tags:** #cartan #dark-modes #attention #gl-n #napolitano

## Result

For `gl(n,R)` with the transpose Cartan decomposition,

```text
gl(n,R) = so(n) + Sym(n)
```

the dimensions are:

```text
active(n)        = dim so(n)  = n(n-1)/2
full_dark(n)     = dim Sym(n) = n(n+1)/2
center(n)        = 1
traceless_dark(n)= full_dark(n) - 1
```

Therefore:

```text
full_dark(n) / active(n)      = (n+1)/(n-1)
traceless_dark(n) / active(n) = (n+2)/n
```

For Napolitano's `gl(4,R)` case:

```text
active = 6
full_dark = 10
traceless_dark = 9
full_dark / active = 5/3
traceless_dark / active = 3/2
```

## Notes for the formalizer

(none yet)
