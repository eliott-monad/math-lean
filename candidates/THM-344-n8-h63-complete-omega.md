---
id: THM-344-n8-h63-complete-omega
source: 01-canon/theorems/THM-344-n8-h63-complete-omega.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-344
name: n8-h63-complete-omega
status: PROVED (finite exhaustive isomorphism-class census)
date: 2026-05-29
session: opus-2026-05-29-S10
scripts:
  - 04-computation/h63_n8_isoclass_census_s10.py
  - 04-computation/h63_complete_omega_s10.py
results:
  - 05-knowledge/results/h63_n8_isoclass_census_s10.out
  - 05-knowledge/results/h63_complete_omega_s10.out
---

# THM-344: At n=8, H=63 Occurs in Exactly Two Classes, Both with Complete Ω

## Statement

Among tournaments on 8 vertices, exactly two isomorphism classes have
Hamiltonian path count H(T) = 63.

For both classes:

- |Aut(T)| = 1.
- Ω(T) is complete.
- Ω(T) has 31 vertices, with directed odd-cycle length distribution
  `{3: 8, 5: 17, 7: 6}`.
- Hence `I(Ω(T), 2) = I(K31, 2) = 1 + 2·31 = 63`.

Therefore every labeled n=8 tournament with H(T)=63 realizes 63 by the
complete-conflict mechanism, not by a disconnected K3 factor or by any
higher α-vector.

## Exact Census

Using nauty `gentourng 8`, there are 6880 non-isomorphic tournaments on
8 vertices. The S10 census computes H(T) for each representative.

Results:

## Notes for the formalizer

(none yet)
