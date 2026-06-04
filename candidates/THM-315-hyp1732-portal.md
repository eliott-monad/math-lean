---
id: THM-315-hyp1732-portal
source: 01-canon/theorems/THM-315-hyp1732-portal.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-315
title: Portal-Disjoint Structure of B-B Pairs (HYP-1732 partial result)
status: PROVED (structural), OPEN (full bound)
session: opus-2026-05-22-S2
---

## Setup

Let $T$ be a tournament with $\alpha(\Omega) = 2$. Let $C^*$ be the pair-partner cycle (from THM-311). Define:
- $A = \{a : a \text{ disjoint from } C^*\}$ ($p$ cycles)
- $B = \{b : b \text{ conflicts with } C^*\}$ ($m-1-p$ cycles)

Partition $B$ by **portal set**: $B_S = \{b \in B : V(b) \cap V(C^*) = S\}$ for each non-empty $S \subseteq V(C^*)$.

## Theorem (Portal-Disjoint Structure)

**Theorem:** Two $B$-cycles $b_1, b_2$ can form a $B$-$B$ disjoint pair only if their portal sets are **disjoint**: $V(b_1) \cap V(C^*) \cap V(b_2) = \emptyset$.

**Proof:** If $b_1$ and $b_2$ are vertex-disjoint ($V(b_1) \cap V(b_2) = \emptyset$), then in particular $(V(b_1) \cap V(C^*)) \cap (V(b_2) \cap V(C^*)) \subseteq V(b_1) \cap V(b_2) = \emptyset$. □

## Corollary: No Same-Portal B-B Pairs

**Corollary:** If $b_1, b_2 \in B_S$ (same portal set $S$): they share ALL vertices of $S$ (i.e., $V(b_1) \cap V(b_2) \supseteq S \neq \emptyset$), so they conflict and CANNOT form a disjoint pair.

**Verified:** 0 same-portal B-B pairs in 100 tests at n=9 (p=1 cases).

## Structure of B-B Pairs

$B$-$B$ disjoint pairs arise ONLY between groups $B_{S_1}$ and $B_{S_2}$ with $S_1 \cap S_2 = \emptyset$. This is a **tripartite/multipartite** structure governed by the $2^L$ partition of $V(C^*)$ into subsets.

For $|V(C^*)| = L = 3$ (a 3-cycle as pair-partner):
- Portal sets: singletons $\{u\}, \{v\}, \{w\}$ and pairs $\{u,v\}, \{u,w\}, \{v,w\}$ and $\{u,v,w\}$.
- Disjoint portal pairs: $(\{u\}, \{v\})$, $(\{u\}, \{w\})$, $(\{v\}, \{w\})$, $(\{u\}, \{v,w\})$, $(\{v\}, \{u,w\})$, $(\{w\}, \{u,v\})$, and more.

## Open: Proof of HYP-1732 ($\alpha_2 \leq p(m-p)$)

The portal-disjoint structure constrains B-B pairs but does not immediately give the bound $e_{AB} + e_{BB} \leq p(m-p)$. The full proof remains open.

**Key inequalities proved:**

## Notes for the formalizer

(none yet)
