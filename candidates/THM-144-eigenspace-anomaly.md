---
id: THM-144-eigenspace-anomaly
source: 01-canon/theorems/THM-144-eigenspace-anomaly.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-144: Eigenspace Boundary Rank Anomaly (Preliminary)

**Status:** CONJECTURE (verified p=7 exhaustive, p=11 partial)
**Author:** opus-2026-03-12-S68
**Dependencies:** CirculantHomology eigenspace decomposition, THM-125

## Statement

For a circulant tournament C_p^S on prime p ≡ 3 (mod 4) vertices, the GLMY
boundary map d_m decomposes into p eigenspaces k = 0, ..., p-1. Define:

    r_m^(k) = rank(d_m restricted to eigenspace k)

**Observation 1 (Universal):** For ALL circulant tournaments:
- r_m^(k) is the same for all k ≥ 1 (k = 1, ..., p-1)
- r_m^(0) may differ from r_m^(k≥1) — we call this the "k=0 anomaly"

**Observation 2 (Anomaly depth):** Define the anomaly depth as:
    D(C_p^S) = max{m : r_m^(0) ≠ r_m^(1)}

For the **Paley tournament T_p** (S = QR_p):
- p=7: D = 4 (anomaly at m = 1, 2, 3, 4)
- p=11: D ≥ 6 (anomaly at m = 1, 2, 3, 4, 5, 6 verified)
- Pattern: D(T_p) = m + 1 = (p+1)/2 (conjectured)

For **ALL OTHER circulant tournaments** at p=7 (6 orientations):
- D = 1 (anomaly ONLY at m = 1)
- β₁ = 1, all other β_i = 0 (except β₀ = 1)

**Observation 3 (Betti from anomaly):** The non-trivial Betti numbers arise
FROM the anomaly:
- k=0 contributes differently from k≥1 at the anomaly degrees
- β_m ≠ 0 only when the anomaly at degree m or m+1 creates a ker/im mismatch
- For Paley: β_{D} = (p-1) × 1 = p-1 when each k≥1 eigenspace contributes 1

## Verified Data

### p = 7, Paley T_7 (S = {1, 2, 4}):
| m | r_m^(0) | r_m^(k≥1) | Δ = r^(0) - r^(k≥1) |
|---|---------|-----------|---------------------|

## Notes for the formalizer

(none yet)
