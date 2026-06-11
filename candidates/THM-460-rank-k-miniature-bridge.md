---
id: THM-460-rank-k-miniature-bridge
source: 01-canon/theorems/THM-460-rank-k-miniature-bridge.md
source_commit: c21c071
status: open
---

## Informal statement

# THM-460: the tower miniature for ω^(ω^m) — full-type = stacked towers, and the König bridge to the Erdős 592 ladder

**Status:** PARTIAL — parts A–C PROVED (proofs below); part D = computations (statuses
inline). The open problem (m=3) is NOT resolved; this builds its finite probe.
**Source:** mac-mini-2026-06-09-S2 (T768, HYP-2366; continues THM-453)

## Context

Erdős 592's surviving frontier is α_m := ω^(ω^m) for finite m: α_1 = ω^ω is positive
(Chang), α_2 = ω^(ω²) positive (Schipperus, Darby), α_4 = ω^(ω⁴) negative
(Schipperus), and **α_3 = ω^(ω³) is the smallest open case**. THM-453's grid
miniature covered ω^n (n < ω). This file lifts it across the first limit exponent.

## A. Presentation and block structure (standard, fixed here for the code)

Ordinals below ω^(ω^m) ↔ finitely supported functions f: N^m → N (the exponent
δ < ω^m in CNF ↔ an m-tuple; f(δ) = its coefficient), ordered by largest
disagreement: ξ < η iff f_ξ(δ*) < f_η(δ*) at the lex-largest δ* where they differ.
For m-tuples δ, lex order on N^m ↔ the order on exponents. Nesting direction
(ordinal arithmetic, fixed here because it is easy to get backwards): for
exponents x + y (x the CNF-leading part), ω^(x+y) = ω^x · ω^y = "ω^y copies of
ω^x" — the TRAILING (smaller) CNF terms give the OUTERMOST/most-significant
nesting. E.g. ω^(ω+1) = ω copies of ω^ω. So a type-ω^δ set, δ = (d_1,…,d_m),
peels from its LAST CNF term: an ω^(d_m)-indexed nest of ω^(ω·d_{m-1} + …)-blocks,
and so on inward, the innermost scale being the ω^(ω^(m-1))-power structure.

## B. Full-type characterization: STACKED TOWERS (PROVED)

Call a **tower of shape (δ_1 < … < δ_M)** (δ_j ∈ N^m, lex increasing) a subset
T = T_1 ∪ … ∪ T_M of ω^(ω^m) with T_1 < T_2 < … < T_M (as sets, in the ordinal
order) and otp(T_j) = ω^(δ_j). A **full tower** has M = ω and {δ_j} lex-cofinal
in N^m.

**Lemma B1.** otp(Σ_j ω^(δ_j)) over an increasing ω-sequence δ_1 < δ_2 < …
lex-cofinal in N^m equals ω^(ω^m).
Proof. The ordered sum Σ_j ω^(δ_j) is ≥ ω^(δ_j) for every j, hence ≥
sup_j ω^(δ_j)·1; since the δ_j are cofinal, sup_j ω^(δ_j) = ω^(ω^m). For ≤:
Σ_{j≤J} ω^(δ_j) ≤ ω^(δ_J)·J < ω^(ω^m), and the total sum is the sup of its
partial sums, each < ω^(ω^m), with the sum a countable increasing union, so
≤ ω^(ω^m). (Both bounds use that ω^(ω^m) is additively indecomposable.) ∎

## Notes for the formalizer

(none yet)
