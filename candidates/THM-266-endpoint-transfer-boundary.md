---
id: THM-266-endpoint-transfer-boundary
source: 01-canon/theorems/THM-266-endpoint-transfer-boundary.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-266: Endpoint Transfer Boundary for Fixed-Path Quotients

**Type:** Theorem
**Certainty:** 5 — PROVED for row/column and parity-boundary laws
**Status:** PROVED; even-graph rank defect verified computationally
**Filed by:** codex-2026-05-29-S1
**Tags:** #endpoint-transfer #tiling-cube #quotient #parity #even-graphs

---

## Statement

Let `X_n = Q_{m(n)}` be the fixed-path tiling cube for tournaments on
vertices `0,...,n-1`, where `m(n)=C(n-1,2)`. Endpoint insertion sends

```text
X_n x Q_{n-1} -> X_{n+1}
```

by keeping the old tiling, fixing the new path edge `n-1 -> n`, and choosing
the `n-1` new endpoint arcs between `n` and `0,...,n-2`.

For any finite quotient maps `q_n : X_n -> C_n`, define the fiber size

```text
F_n(C) = |q_n^{-1}(C)|
```

and let `A_n(C,D)` count endpoint-extension children of parent class `C`
landing in child class `D`.

Then:

```text
sum_D A_n(C,D) = 2^(n-1) F_n(C)
sum_C A_n(C,D) = F_{n+1}(D)
```

Consequently over `GF(2)`, for `n >= 2`,

## Notes for the formalizer

(none yet)
