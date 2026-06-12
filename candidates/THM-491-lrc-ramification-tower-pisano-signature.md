---
id: THM-491-lrc-ramification-tower-pisano-signature
source: 01-canon/theorems/THM-491-lrc-ramification-tower-pisano-signature.md
source_commit: 7b9c76c
status: open
---

## Informal statement

# THM-491 — The LRC shell ramification tower, its Pisano signature, and the freed-clock formula

**Status:** PROVED (structural descent + freed-clock formula) + VERIFIED (exact ℚ, n=14,19 and
catalog to n=200). claudebox-2026-06-11-S6.
**Provenance:** user dispatch (LRC n=14 ↔ n=19, recursive reframes, formula-predictable sub-aspects,
the Pisano/Goldbach/magma substance). **Companions:** THM-421 (divisor-clock peeling), THM-420
(k-clock / non-transversal dodge), THM-412 (twisted-shell dodge n=14), THM-486 (24=Pisano modulus),
HYP-2436/2437. **Normalization:** canon (n runners, n−1 speeds, observer at 0, M(S)=max_t min_i‖v_i t‖,
LRC: M ≥ 1/n; tight iff =1/n). Shell = 2n−1.

## Part 1 — The ramification tower (the n=14 ↔ n=19 dichotomy, made recursive)

The shell 2n−1 controls the optimal witness (the ±-pair modulus). Its **prime-power structure** is
the right hardness coordinate:

- **Ramified n** (2n−1 = p^k, k ≥ 2): the residues split into UNITS of ℤ/p^k (coprime to p) and
  NON-UNITS (the p-divisible runners). The units are permuted by the doubling orbit ⟨2⟩ ≤ (ℤ/p^k)*
  and are dodgeable; the **non-unit core descends**: the p-divisible residues, divided by p, are
  exactly the residues mod p^{k−1} — the **shell-p^{k−1} problem**. Verified: 27 → 9 → 3 (n=14),
  25 → 5 (n=13), 49 → 7 (n=25). This is the **p-adic ramification tower**, and it matches the
  **Pisano tower exactly**: π(p^k) = p^{k−1}·π(p) (verified π(3)=8, π(9)=24, π(27)=72; THM-486).
  The LRC ramification depth of n = v_p(2n−1).
- **n = 14** (2n−1 = 27 = 3³, **depth 3**) is the SMALLEST n with depth ≥ 3 — the deepest small
  shell, two-headed: composite n = 2·7 peels by the divisor-clock tower (THM-421) WHILE the shell 27
  ramifies down the 3-adic tower. The catalog of ramified n ≤ 200: n=5(3²),13(5²),**14(3³)**,25(7²),
  41(3⁴),61(11²),63(5³),85(13²),122(3⁵),145(17²),172(7³),181(19²). Ramified n are RARE (2n−1 a proper
  prime power) and n=14 is the first deep one.
- **n = 19** (2n−1 = 37, prime, **depth 1**): NO tower. The recursion is cyclotomic, not p-adic:
  (ℤ/37)* is cyclic of order 36 with 2 a primitive root (single 36-cycle), and THM-420 applies —
  a config is loose unless its residues form a ±-transversal of (ℤ/37)*. Transversals are vanishingly
  rare (0 of 4000 random 18-subsets), so LRC(19) reduces to an essentially empty quasi-random core.
  **n=19 is clean precisely because both n and 2n−1 are prime** (no CRT fiber, no ramification tower).

## Part 2 — The freed-clock formula (a formula-predictable small aspect)

For the tight AP {1,…,n−1} (M = 1/n) and its single perturbations S_j = ({1,…,n−1} \ {j}) ∪ {n}:

**Lemma (freed clock, exact).** If j does NOT divide any other speed in S_j (equivalently 2j > n and
j ∤ n, so the only former multiple of j was j itself), then the j-clock t = 1/j is a witness and
**M(S_j) = 1/j** exactly. If j | n, the runner n is still a multiple of j and BLOCKS the j-clock

## Notes for the formalizer

(none yet)
