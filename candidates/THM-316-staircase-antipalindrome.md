---
id: THM-316-staircase-antipalindrome
source: 01-canon/theorems/THM-316-staircase-antipalindrome.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-316
title: Anti-Palindrome Theorem for All-0 Staircase
status: PROVED
session: opus-2026-05-22-S3
---

## Setup

The **all-0 interleaved staircase** $T_k$ is the tournament on $n=2k$ vertices $\{0,1,\ldots,2k-1\}$ with:
- **Pairs:** $(0,1), (2,3), \ldots, (2k-2, 2k-1)$. Within pair $p$: recessive $2p+1$ beats dominant $2p$.
- **Ranking:** $\text{rank}(2p) = p$ (dominants), $\text{rank}(2p+1) = k+p$ (recessives).
- **Crossing arcs:** between different pairs, lower rank beats higher rank.

Notation:
- $H(k) = H(T_k)$: Hamiltonian path count.
- $\text{ep\_end}(v, T_k)$: number of HPs ending at vertex $v$.
- $\text{ep\_start}(v, T_k)$: number of HPs starting at vertex $v$.
- $a_k = \text{ep\_end}(2k-1, T_k)$: HPs ending at last recessive.

## Main Theorem

**Theorem (Anti-Palindrome):** For all $k \geq 2$ and all $v \in \{0,\ldots,2k-1\}$:
$$\text{ep\_start}(v, T_k) = \text{ep\_end}(2k-1-v, T_k).$$

**Proof:** The map $\varphi: v \mapsto 2k-1-v$ is an **anti-automorphism** of $T_k$:
$$T_k(u \to v) = 1 \quad \Longleftrightarrow \quad T_k(\varphi(v) \to \varphi(u)) = 1.$$

**Proof of anti-automorphism:**

*Within-pair arcs:* Pair $p = \{2p, 2p+1\}$ maps to pair $k-1-p = \{2(k-1-p), 2(k-1-p)+1\} = \{2k-2-2p, 2k-1-2p\}$ under $\varphi$ (dominant $2p \mapsto 2k-1-2p$ = recessive of pair $k-1-p$; recessive $2p+1 \mapsto 2k-2-2p$ = dominant of pair $k-1-p$). Within-pair arc $2p+1 \to 2p$ becomes $\varphi(2p) \to \varphi(2p+1)$, i.e., $(2k-1-2p) \to (2k-2-2p)$, which is the within-pair arc of pair $k-1-p$ (recessive beats dominant). ✓

*Crossing arcs:* For vertices $u, v$ in different pairs: $T_k(u \to v) \Leftrightarrow \text{rank}(u) < \text{rank}(v)$. Since $\varphi$ reverses the ranking ($\text{rank}(\varphi(v)) = 2k-1-\text{rank}(v)$): $\text{rank}(u) < \text{rank}(v) \Leftrightarrow 2k-1-\text{rank}(u) > 2k-1-\text{rank}(v) \Leftrightarrow \text{rank}(\varphi(v)) < \text{rank}(\varphi(u)) \Leftrightarrow T_k(\varphi(v) \to \varphi(u))$. ✓

The anti-automorphism establishes a bijection: HP $v_1 \to \cdots \to v_{2k}$ of $T_k$ starting at $v_1$ and ending at $v_{2k}$ corresponds to HP $\varphi(v_{2k}) \to \cdots \to \varphi(v_1)$ of $T_k$ starting at $\varphi(v_{2k})$ and ending at $\varphi(v_1)$. Therefore $\text{ep\_start}(v_1) = \text{ep\_end}(\varphi(v_1)) = \text{ep\_end}(2k-1-v_1)$. □

## Consequences

**Corollary 1:** $\text{ep\_start}(0, T_k) = \text{ep\_end}(2k-1, T_k) = a_k.$

## Notes for the formalizer

(none yet)
