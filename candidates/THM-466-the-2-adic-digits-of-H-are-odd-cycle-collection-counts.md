---
id: THM-466-the-2-adic-digits-of-H-are-odd-cycle-collection-counts
source: 01-canon/theorems/THM-466-the-2-adic-digits-of-H-are-odd-cycle-collection-counts.md
source_commit: 3c3a18e
status: open
---

## Informal statement

# THM-466 — The 2-adic digits of H are odd-cycle collection counts (the higher-Rédei tower)

**Type:** Theorem
**Status:** PROVED (parts (i)–(iii), all n; one-line consequences of THM-002/OCF) + VERIFIED
(part (ii) machine-checked with 0 failures on ALL 2,130,016 labeled tournaments n = 3..7 and
200,000 random tournaments at n = 8, by an independent Held-Karp path DP vs.
directed-cycle censuses). The score-determination statements (iv)–(v) are
PROVED-by-counterexample / classical respectively, with full-census verification ranges stated inline.
**Source:** kind-pasteur-2026-06-10-S2, Thread B lab (HYP-2379; upgrades tangent T007).
**Builds on:** THM-002 (OCF, Grinberg-Stanley arXiv:2307.05569; Irving-Omar arXiv:2412.10572), THM-001 (Rédei).
**Script:** `04-computation/ocf_digit_tower_kpo2.py` → `05-knowledge/results/ocf_digit_tower_kpo2.out`
**Tags:** #ocf #2-adic #higher-redei #digit-tower #score-sequences #t007

---

## Statement

Let T be a tournament on n vertices, H = H(T) its number of directed Hamiltonian paths, and
α_k = α_k(Ω(T)) the number of collections of k pairwise vertex-disjoint **directed odd cycles**
of T (α_0 = 1), i.e. the independence numbers of the conflict graph Ω(T) of THM-002.

**(i) Digit lemma (the higher-Rédei tower).** For every m ≥ 1:

```
H  ≡  Σ_{k<m} α_k 2^k   (mod 2^m).
```

H mod 2^m is determined by the collections of **fewer than m** disjoint odd cycles. The
residues of H at all powers of 2 — equivalently the 2-adic digits of H — read off the
disjoint-odd-cycle collection counts.

**Corollaries of (i).**
- (m = 1) H ≡ α_0 = 1 (mod 2): **Rédei's theorem** is the ground floor of the tower.
- (m = 2) H ≡ 1 + 2·α_1 (mod 4), where α_1 = c_3 + c_5 + c_7 + … is the **total number of
  directed odd cycles**.
- (valuation — the answer to T007) v_2(H) = 0 always; the right object is
  ```
  v_2(H − 1) = 1 + v_2(α_1 + 2α_2 + 4α_3 + …),
  ```
  with v_2(H − 1) = ∞ iff T is transitive (α_k = 0 ∀k ≥ 1 ⟺ no 3-cycle ⟺ transitive).

## Notes for the formalizer

(none yet)
