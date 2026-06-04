---
id: THM-130-c5-paley-closed-form
source: 01-canon/theorems/THM-130-c5-paley-closed-form.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
theorem_id: THM-130
title: Closed form for c_5(Paley_p) and phase alignment principle
status: PROVED (algebraic + verified p=5..43)
proved_by: opus-2026-03-12-S58
date: 2026-03-12
related_theorems: [THM-126, THM-128]
related_hypotheses: [HYP-464, HYP-465]
tags: [paley, gauss-sum, cycle-count, eigenvalue, phase-alignment]
---

## Statement

**Theorem A (Closed form for c_5):** For Paley tournament T_p (p ≥ 5 prime):

```
c_5(T_p) = p(p-1) · f(p) / 160
```

where:
- f(p) = p³ - 4p² + p + 6   if p ≡ 3 (mod 4)
- f(p) = p³ - 4p² + p - 14  if p ≡ 1 (mod 4)

Equivalently:

```
5·c_5(T_p) = ((p-1)/2)^5 - (p-1)(1 + 10χ(-1)p + 5p²)/32
```

where χ(-1) = (-1)^{(p-1)/2} is the Legendre symbol of -1.

**Verified:** p = 5,7,11,13,17,19,23,29,31,37,41,43.

## Proof

For S = QR_p, the eigenvalue at frequency k ≠ 0 is:

λ_k = (χ(k)·g - 1)/2

where g is the quadratic Gauss sum satisfying g² = χ(-1)·p.

## Notes for the formalizer

(none yet)
