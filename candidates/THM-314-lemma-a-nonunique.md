---
id: THM-314-lemma-a-nonunique
source: 01-canon/theorems/THM-314-lemma-a-nonunique.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-314
title: Lemma A (Complete Proof) — Non-Unique Maximum Independent Set Case
status: PROVED
session: opus-2026-05-22-S2
---

## Statement

**Theorem (Lemma A, Non-Unique Case):** Let $T$ be any tournament. Let $\Omega = \Omega(T)$ be its conflict graph on directed odd cycles, and let $d = \alpha(\Omega)$ be the maximum independent set size. Let $S$ be any maximum IS of $\Omega$ (size $d$).

If $S$ is **not** the unique maximum IS (i.e., there exists another max IS $S' \neq S$ of size $d$), then there exists a cycle $C^* \in S$ such that:
$$\deg(I(\Omega \setminus C^*, x)) = d = \deg(I(\Omega - N[C^*], x)) + 1$$

In the Hermite-Biehler notation: $d_A = d$ and $d_B = d - 1$.

## Proof

Since $S \neq S'$ and both have size $d$, the set $S \setminus S'$ is non-empty (otherwise $S \subseteq S'$ and since $|S|=|S'|=d$: $S = S'$, contradiction).

**Pick any $C^* \in S \setminus S'$.**

**Step 1 ($d_A = d$):**
$C^* \notin S'$, so $S'$ is a max IS of size $d$ contained in $\Omega \setminus C^*$. Therefore:
$$d_A = \alpha(\Omega \setminus C^*) \geq |S'| = d.$$
Since $d = \alpha(\Omega)$ is the global maximum: $d_A \leq d$. So $d_A = d$. □

**Step 2 ($d_B = d-1$):**

*Upper bound* (by THM-310, Key Inequality): Any IS $S'' \subseteq \Omega - N[C^*]$ satisfies $\{C^*\} \cup S''$ is an IS of $\Omega$ (since each element of $S''$ is non-adjacent to $C^*$ in $\Omega$). So $|S''| + 1 \leq d$, giving $d_B \leq d - 1$.

*Lower bound*: $S \setminus \{C^*\}$ has size $d - 1$. Since $S$ is an IS, all cycles in $S$ are pairwise vertex-disjoint; in particular, every cycle in $S \setminus \{C^*\}$ is vertex-disjoint from $C^*$. So $S \setminus \{C^*\} \subseteq \Omega - N[C^*]$, giving $d_B \geq d - 1$.

Combining: $d_B = d - 1$. □

**Conclusion:** $d_A = d = (d-1)+1 = d_B + 1$. □

## Significance

This theorem proves **Lemma A** for ALL cases where the maximum IS is non-unique. Combined with:

## Notes for the formalizer

(none yet)
