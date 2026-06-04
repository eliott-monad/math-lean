---
id: THM-070-claim-a-from-ocf
source: 01-canon/theorems/THM-070-claim-a-from-ocf.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-070: Claim A from OCF (Clean Proof Chain)

**Type:** Theorem (PROVED)
**Certainty:** 5 -- PROVED (elementary, 4-step proof)
**Status:** PROVED
**Added by:** opus-2026-03-07-S36
**Tags:** #claim-a #ocf #conflict-graph #clique #independence-polynomial

---

## Statement

**Claim A:** For any tournament T and vertex v: H(T) - H(T-v) = 2 * sum_{C through v} mu(C).

This follows from OCF (H(T) = I(Omega(T), 2)) via a clean 4-step chain.

---

## Proof

### Step 0: OCF (Grinberg-Stanley)
H(T) = I(Omega(T), 2) for all tournaments T.

### Step 1: Through-v Clique Property

**Lemma.** All directed odd cycles through v form a clique in Omega(T).

*Proof.* Any two cycles C1, C2 through v satisfy v in V(C1) cap V(C2). Since adjacency in Omega means sharing a vertex, C1 and C2 are adjacent. QED.

### Step 2: Unique Cycle Decomposition

By Step 1, any independent set S in Omega(T) contains **at most one** cycle through v (since two through-v cycles would be adjacent, contradicting independence).

Therefore:
- I(Omega(T), 2) = [sum over S with NO cycle through v] + [sum over S with EXACTLY ONE cycle through v]
- I(Omega(T), 2) = I(Omega(T-v)*, 2) + sum_{C through v} sum_{S': indep in Omega\N[C]} 2^{|S'|+1}

where Omega(T-v)* is the subgraph of Omega(T) on cycles NOT through v.

**Note:** Omega(T-v)* = Omega(T-v) because:

## Notes for the formalizer

(none yet)
