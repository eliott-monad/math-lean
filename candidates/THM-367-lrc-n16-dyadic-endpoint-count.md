---
id: THM-367-lrc-n16-dyadic-endpoint-count
source: 01-canon/theorems/THM-367-lrc-n16-dyadic-endpoint-count.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-367
name: lrc-n16-dyadic-endpoint-count
status: PROVED
date: 2026-05-31
session: codex-2026-05-31-S391
depends_on:
  - THM-357
  - THM-360
  - THM-366
results:
  - 05-knowledge/results/lrc_n16_dyadic_endpoint_formula_s391.out
---

# THM-367: n=16 Dyadic Endpoint-Protection Count

## Statement

Work at Lonely Runner denominator `n=16`.  Let the owner speed be a pure
dyadic speed

```text
u = 2^k.
```

Its strict forbidden endpoints have labels

```text
e(m,eps) = (16m + eps)/(16u),
0 <= m < u, eps in {-1,+1}.
```

A protector speed `p` protects `e(m,eps)` exactly when

```text
dist_0(p*(16m + eps) mod 16u) < u,
```

where `dist_0` is circular residue distance to `0`.

## Notes for the formalizer

(none yet)
