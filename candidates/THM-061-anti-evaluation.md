---
id: THM-061-anti-evaluation
source: 01-canon/theorems/THM-061-anti-evaluation.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-061: Anti-Evaluation Identity W(-1/2) = (-1)^{n-1} H(T)

**Type:** Theorem (PROVED)
**Certainty:** 5 — PROVED (elementary + verified exhaustive n<=6, sample n=7)
**Status:** PROVED
**Added by:** kind-pasteur-2026-03-07-S26
**Tags:** #W-polynomial #Hamiltonian #evaluation #master-polynomial

---

## Statement

**Theorem.** For any tournament T on n vertices,

W(-1/2) = (-1)^{n-1} · H(T)

where W(r) is the weighted path polynomial and H(T) is the number of Hamiltonian paths.

**Corollary.** F_f(-1/2) = (-1)^f for all f >= 0, where F_f is the f-th master polynomial of THM-059.

---

## Proof (Elementary)

W(r) = sum_{P in S_n} prod_{i=0}^{n-2} (r + s_i), where s_i = A[P(i), P(i+1)] - 1/2 in {+1/2, -1/2}.

**At r = 1/2:** Each factor (1/2 + s_i) equals 1 if A[P(i),P(i+1)]=1 (forward edge) and 0 otherwise. So W(1/2) = #{permutations P where P(i)->P(i+1) for all i} = H(T).

**At r = -1/2:** Each factor (-1/2 + s_i) equals 0 if A[P(i),P(i+1)]=1, and -1 if A[P(i),P(i+1)]=0 (backward edge). So W(-1/2) = (-1)^{n-1} · #{permutations P where P(i+1)->P(i) for all i}.

The condition P(i+1)->P(i) for all i means P(n-1) -> P(n-2) -> ... -> P(0) is a Hamiltonian path. Reversing any such path gives a Hamiltonian path P(0) -> P(1) -> ... -> P(n-1), and vice versa. This is a bijection, so the count equals H(T).

Therefore W(-1/2) = (-1)^{n-1} · H(T). QED.

---

## Proof of Corollary (via Eulerian numbers)

F_f(r) = sum_{k=0}^f A(f+1, k) · (r+1/2)^{f-k} · (r-1/2)^k (THM-059).

## Notes for the formalizer

(none yet)
