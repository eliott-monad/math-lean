---
id: THM-005-f2-typeii-bijection
source: 01-canon/theorems/THM-005-f2-typeii-bijection.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-005: F2 — Every Type-II Position is a 3-Cycle (Bijection)

**Type:** Lemma
**Certainty:** 5 — PROVED
**Status:** PROVED
**Last reviewed:** SYSTEM-2026-03-05-S1
**Disputes:** none
**Tags:** #type-ii #3-cycle #bijection #signature

---

## Statement

For any path P' = (P[0], P[1], …, P[n−2]) of T−v and any index j:

**j is a Type-II position** (s[j]=1, s[j+1]=0) **if and only if** v → P[j] → P[j+1] → v is a directed 3-cycle.

Moreover, this gives an **exact bijection**:

```
{Type-II positions j in P'} ↔ {directed 3-cycles (v, P[j], P[j+1]) : (P[j],P[j+1]) consecutive in P'}
```

---

## Proof / Proof Sketch

**Forward direction (Type-II → 3-cycle):**
- s[j] = 1 means v → P[j] (arc from v to P[j])
- P[j] → P[j+1] (since P' is a directed path)
- s[j+1] = 0 means P[j+1] → v (arc from P[j+1] to v)

So v → P[j] → P[j+1] → v is a directed 3-cycle. □

**Reverse direction (3-cycle → Type-II):**
If v → a → b → v is a directed 3-cycle and (a,b) are consecutive in P' (i.e., a = P[j], b = P[j+1] for some j), then s[j]=1 (v→a) and s[j+1]=0 (b→v, i.e., P[j+1]→v). So j is a Type-II position. □

**Bijection:** Each 3-cycle (v,a,b) with (a,b) consecutive in P' corresponds to exactly one Type-II position in P' (at the index j where a=P[j]). Each Type-II position corresponds to exactly one such 3-cycle. □

## Verification Scripts

## Notes for the formalizer

(none yet)
