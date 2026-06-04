---
id: burnside_enum_extensions
source: 05-knowledge/results/burnside_enum_extensions.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# OEIS B-file Extensions via Burnside/Polya Partition Enumeration

## Summary of extensions computed by opus-2026-03-08-S48

### Core sequences (burnside_enum_v2.c)

| Sequence | Name | OEIS had | We computed | New terms | Status |
|----------|------|----------|-------------|-----------|--------|
| A000568 | Tournaments | 77 | 200+ | +123+ | Running (GMP, to 200) |
| A002785 | Self-comp oriented graphs | 100 | 300 | +200 | Complete |
| A000171 | Self-comp graphs | 100 | 439+ | +339+ | Running (to 500) |
| A000273 | Digraphs | 65 | 101 | +36 | Complete |
| A000595 | Binary relations | 51 | 200 | +149 | Running (GMP, to 200) |
| A001174 | Oriented graphs | 50 | 200 | +150 | Running (GMP, to 200) |
| A000088 | Simple graphs | 88 | 101 | +13 | Complete |
| A000666 | Symmetric relations | 81 | 200 | +119 | Running (GMP, to 200) |
| A003086 | Self-comp digraphs | 80 | 100 | +20 | Complete |
| A005639 | Self-converse oriented graphs | 50 | 80 | +30 | Complete |
| A002499 | Self-converse digraphs | 50 | 80 | +30 | Complete |
| A002854 | Two-graphs / Euler graphs | 88 | 113 | +25 | Extending (to 130) |

### k-uniform hypergraph sequences

| Sequence | Name | OEIS had | We computed | New terms | Status |
|----------|------|----------|-------------|-----------|--------|
| A000665 | 3-uniform hypergraphs | 29 | 50+ | +21+ | GMP extending (at n=50) |
| A051240 | 4-uniform hypergraphs | 19 | 77+ | +58+ | GMP added n=0..35 |
| A051249 | 5-uniform hypergraphs | 16 | 64+ | +48+ | Gaps at 41-47 |
| A309860 | 6-uniform hypergraphs | 15 | 60 | +45 | Complete |
| A309861 | 7-uniform hypergraphs | ~15 | 43 | +28 | Complete |
| A309862 | 8-uniform hypergraphs | ~15 | 32+ | +17+ | Running |
| A309863 | 9-uniform hypergraphs | ~14 | 30+ | +16+ | Running |
| A309864 | 10-uniform hypergraphs | ~14 | 30+ | +16+ | Running |
| A309865 | k-uniform triangle | 15 rows | 25 rows | +10 rows | Running |

### Triangle sequences (new enumerators)

| Sequence | Name | OEIS had | We computed | New entries | Status |
|----------|------|----------|-------------|-------------|--------|
| A008406 | Graphs by edges | rows 1-20 (1350) | rows 1-35+ | +many | Running (to 50) |

## Notes for the formalizer

(none yet)
