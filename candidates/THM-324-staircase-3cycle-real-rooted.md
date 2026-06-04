---
id: THM-324-staircase-3cycle-real-rooted
source: 01-canon/theorems/THM-324-staircase-3cycle-real-rooted.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-324
title: Real-Rootedness of 3-Cycle IP for All-0 Staircase T_k
status: CONJECTURE (verified k=2..6)
session: opus-2026-05-23-S5
tags: [staircase, independence-polynomial, real-rooted, TRRT]
related: [THM-318, THM-319, THM-321, HYP-1732]
---

## Statement

Let $I_3(T_k, x)$ denote the independence polynomial of the conflict graph $\Omega_3(T_k)$ restricted to 3-cycles only. Then:

1. **Real-rooted:** All roots of $I_3(T_k, x)$ are real.
2. **Negative roots:** All roots of $I_3(T_k, x)$ are strictly negative.

## Evidence

Verified by explicit root computation for k=2..6:

| k | I_3(T_k, x) | Roots |
|---|-------------|-------|
| 2 | 1 + 2x | {-1/2} |
| 3 | 1 + 6x + x² | {-0.172, -5.828} |
| 4 | 1 + 12x + 16x² | {-0.098, -0.652} (approx) |
| 5 | 1 + 20x + 46x² + 5x³ | all negative |
| 6 | 1 + 30x + 138x² + ... | all negative |

For each k, all roots confirmed real and negative using numpy.roots().

## Significance

This is a special case of the TRRT (Tournament Real-Rootedness Theorem, CONJ-001). It says the 3-cycle sub-IP is already real-rooted, before adding longer cycles.

The full IP I(Ω(T_k), x) — which includes 5, 7, 9, ... cycles — is expected to also be real-rooted (part of TRRT), but this restricted case is a concrete testable instance.

## Proof Status

No proof known. The Hermite-Biehler approach (THM-311, THM-313, THM-315) would give real-rootedness from the interlacing B|A. For the 3-cycle graph specifically, the pair-partner construction (THM-311) applies, so B interlaces A iff HYP-1732 holds — connecting this theorem to HYP-1732.

## Notes for the formalizer

(none yet)
