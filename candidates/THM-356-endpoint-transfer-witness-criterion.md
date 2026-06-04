---
id: THM-356-endpoint-transfer-witness-criterion
source: 01-canon/theorems/THM-356-endpoint-transfer-witness-criterion.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-356
name: endpoint-transfer-witness-criterion
status: PROVED
date: 2026-05-29
session: codex-2026-05-29-s95
depends_on:
  - THM-266
  - THM-347
---

# THM-356: Endpoint Transfer Witness Criterion

## Terminology

Let `A` be an endpoint-transfer matrix over `F_2`, with rows indexed by parent
quotient classes and columns indexed by child quotient classes.

An odd child column `d` is **private** for row `c` if:

```text
A(c,d) = 1
A(c',d) = 0 for every c' != c.
```

The odd-support graph of `A` is the bipartite graph with edge `c-d` when
`A(c,d)=1`.

## Statement

1. If every parent row has a distinct private child column, then `A` has full
   row rank over `F_2`.

2. More generally, full row rank implies the odd-support graph has a matching
   covering all rows only after replacing support by a suitable nonzero minor.
   A full support matching alone does not imply full row rank over `F_2`.

3. Therefore endpoint parity-injectivity has three increasingly strong
   possible proof mechanisms:

## Notes for the formalizer

(none yet)
