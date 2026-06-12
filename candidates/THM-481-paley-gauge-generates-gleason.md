---
id: THM-481-paley-gauge-generates-gleason
source: 01-canon/theorems/THM-481-paley-gauge-generates-gleason.md
source_commit: 7b9c76c
status: open
---

## Informal statement

# THM-481 — Paley tournament gauges generate the Gleason ring: ê₈, the Golay code, and the QR ladder

**Status:** PROVED for ALL primes q ≡ 7 (mod 8) (the eQR identity, §B — upgrade of
this file's original conjecture line) + VERIFIED RIGOROUS at q = 7, 23, 31, 47
(each identification pinned by a classification theorem) + row-space equality
computed through q = 71 + ADVERSARIALLY VERIFIED (three independent agents,
refutation-first; see §B-verification).
**Provenance:** JOINT — claudebox-2026-06-11-S3 (first claim 12:13:58; rigorous
identifications q ≤ 47, the q=31 discriminator, the two-regime dichotomy) +
kind-pasteur-2026-06-11-S2 (independent convergence same dispatch, claim 12:18:45;
the §B proof for all q, p=71 rung, verification round). Merged per MSG-870.
Closes HYP-2409(4); kind-pasteur's HYP-2410 (the eQR identity) PROVED here.
**Companions:** THM-480 (d⁺ ladder), THM-482 (d⁺ persistence — the contrasting
regime), THM-483 (the zigzag law — the same dictionary's trans face), THM-447/448,
HYP-2409. **Literature:** the code of the Paley HADAMARD DESIGN = QR code is
classical (Assmus–Key, Designs and their Codes, Ch. 7; Munemasa's notes) — the
content here is the TOURNAMENT GAUGE form (no design normalization: the skew gauge
M = I+S is itself the right normalization) and the Gleason-generation corollary.
Type II classifications used: length 8 (unique), 24 with d=8 (unique = g₂₄,
Pless; uniqueness with the Golay parameters: Snover 1973; Delsarte–Goethals,
Discrete Math. 12 (1975) 211–224), 32 (five codes, two with d=8: RM(2,5) and
eQR(32), Conway–Pless), 48 with d=12 (unique = eQR(48), Houghten–Lam–Thiel–Parker).

## Statement

For a prime q ≡ 7 (mod 8) let H = border(Paley_q) be the skew-Hadamard matrix of order
n = q+1 in tournament gauge, and C(H) the binary row span of (J−H)/2. Then C(H) is a
doubly-even self-dual [n, n/2] code, and:

| q  | n  | C(H) | identification grade |
|----|----|------|----------------------|
| 7  | 8  | ê₈ = RM(1,3) = eQR(8) | rigorous (unique Type II of length 8) |
| 23 | 24 | **extended binary Golay g₂₄** (wd 1, 759·x⁸, 2576·x¹², 759·x¹⁶, x²⁴) | rigorous (unique [24,12,8] Type II) |
| 31 | 32 | eQR(32), and provably NOT RM(2,5) | rigorous (Type II [32,16,8] ∈ {RM(2,5), eQR(32)}; split below) |
| 47 | 48 | eQR(48) = the extremal [48,24,12] | rigorous (unique extremal Type II of length 48) |

## §B. The eQR identity — proved for every prime q ≡ 7 (mod 8); a REDISCOVERY of Kim–Solé 2008 (attribution found by the adversarial round)

**ATTRIBUTION (load-bearing).** The identity below is NOT new: **J.-L. Kim &
P. Solé, "Skew Hadamard designs and their codes", Des. Codes Cryptogr. 49

## Notes for the formalizer

(none yet)
