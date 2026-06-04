---
id: THM-012b-insertion-decomposition
source: 01-canon/theorems/THM-012b-insertion-decomposition.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-012b: Insertion Decomposition Formula

**Type:** Theorem
**Certainty:** 4 — VERIFIED (exhaustive n≤5, formula holds with 0 failures)
**Status:** VERIFIED (proof pending full rigor)
**Contributed by:** opus-2026-03-05-S3
**NOTE:** Formerly mislabeled as THM-013 (filename collision with THM-013-arc-flip-delta-I.md).
Renamed to THM-012b. This is a standalone result not referenced by other theorems under this ID.
**Tags:** #insertion #orphan-paths #hamiltonian-paths #claim-a-reformulation

---

## Statement

For every tournament T on n vertices and every vertex v:

```
H(T) - H(T-v) = Σ_{P'∈Ham(T-v)} #{TypeII(P')} + #{orphan Ham paths of T w.r.t. v}
```

where:
- **TypeII(P')** = #{j : s[j]=1 and s[j+1]=0 in the signature of P' w.r.t. v}
  (equivalently, by THM-004: #{TypeII(P')} = (inshat(v,P') - 1)/2)
- **Orphan Ham path** of T w.r.t. v: a directed Hamiltonian path P ∈ Ham(T) such that
  removing v from P gives an invalid directed path in T-v
  (i.e., the two neighbors of v in P have a backward arc: if P[k-1]=a and P[k+1]=b,
  then T(a,v)=1, T(v,b)=1, but T(b,a)=1, so the sequence a→b is backward in T-v)

Equivalently, since #{TypeII(P')} = (inshat(v,P')-1)/2:

```
H(T) - H(T-v) = Σ_{P'∈Ham(T-v)} (inshat(v,P') - 1)/2 + #{orphan Ham paths}
```

---

## Derivation

**Step 1 (from insertion framework):** Every Ham path P ∈ Ham(T) arises in exactly one of two ways:
- *Non-orphan*: removing v from P gives a valid P' ∈ Ham(T-v). This means v is inserted between

## Notes for the formalizer

(none yet)
