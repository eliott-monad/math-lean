---
id: simplex_cuboid_cyclotomic
source: 05-knowledge/results/simplex_cuboid_cyclotomic.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# Simplex-Cuboid-Cyclotomic Connection to Forbidden H Values

**opus-2026-03-14-S71e**

## Setup

User directive: "k-nacci approaches 2 and weighted k-nacci approaches 3. Think of simplices as (x+1)^n and cuboids as (x+2)^n, and think about packing them inside each other."

## Key Results

### 1. k-nacci and weighted k-nacci limits

- **k-nacci**: a_{n+1} = a_n + ... + a_{n-k+1}. Ratio → root of x^{k+1} - 2x^k + 1 = 0. Limit = **2**.
- **Weighted k-nacci** (weight 2): a_{n+1} = 2*(a_n + ... + a_{n-k+1}). Ratio → root of x^{k+1} - 3x^k + 2 = 0. Limit = **3**.

These are exactly (x+1)|_{x=1} = 2 and (x+2)|_{x=1} = 3.

### 2. OCF as simplex/cuboid evaluation

At n=5 (where α₂=0): I(Ω, x) = 1 + ((H-1)/2)·x

| Point | Name | Value | Limit of ratio |
|-------|------|-------|----------------|
| x=1 | Simplex | (H+1)/2 | - |
| x=2 | OCF | H | OCF/simplex → 2 (k-nacci!) |
| x=3 | Cuboid | (3H-1)/2 | cuboid/simplex → 3 (weighted k-nacci!) |

### 3. Gap formula: (x+2)² - (x+1)² = 2x+3

Setting 2x+3 = q²+q+1 = Φ₃(q):
- x = (q+2)(q-1)/2

| q | Φ₃(q) | x | (x+2)²-(x+1)² |
|---|--------|---|----------------|
| 2 | **7** | 2 | 7 |
| 3 | 13 | 5 | 13 |
| 4 | **21** | 9 | 21 |
| 5 | 31 | 14 | 31 |

**Both forbidden H values are gaps between adjacent squares at x=2 and x=9=3².**

## Notes for the formalizer

(none yet)
