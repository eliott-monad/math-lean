---
id: CONJ-001-claim-a
source: 01-canon/theorems/CONJ-001-claim-a.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# CONJ-001: Claim A — PROVED (via Grinberg-Stanley OCF)

**Type:** Theorem (was Conjecture; now proved)
**Certainty:** 5 — PROVED for all n
**Status:** PROVED
**Last reviewed:** kind-pasteur-2026-03-05-S12
**Disputes:** RESOLVED (02-court/resolved/DISC-001 moot; OCF proved externally)
**Tags:** #claim-a #proved #vertex-deletion #hamiltonian-paths #grinberg-stanley

---

## Statement

For every tournament T on n vertices and every vertex v:

```
H(T) − H(T−v) = 2 Σ_{C∋v} μ(C)
```

where the sum is over all directed odd cycles C through v, and μ(C) = I(Ω(T−v)|_{avoid C\{v}}, 2).

---

## PROOF (via Grinberg-Stanley + Claim B)

**Claim A is a COROLLARY of OCF (THM-002) + Claim B (THM-003).**

**Step 1:** OCF states H(T) = I(Omega(T), 2) for all tournaments T.
OCF is now PROVED for all n — it follows from Theorem 1.39 & Lemma 6.5 of arXiv:2307.05569
(Grinberg & Stanley, 2023), restated as Corollary 20 in arXiv:2412.10572 (Irving & Omar, 2024),
combined with the observation that for tournaments, the complement D̄ = D^op (converse),
and ham(D^op) = ham(D) by path reversal. See THM-002 for full details.

**Step 2:** Claim B (THM-003) states:
I(Omega(T), 2) - I(Omega(T-v), 2) = 2 * sum_{C through v} mu(C).
This is proved via the A-clique argument.

**Step 3:** Since OCF holds for both T and T-v:
H(T) - H(T-v) = I(Omega(T),2) - I(Omega(T-v),2) = 2 * sum_{C through v} mu(C). QED.

## Notes for the formalizer

(none yet)
