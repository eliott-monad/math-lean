---
id: THM-497-lrc14-dilated-band-covering-and-the-cardinality-structure-dichotomy
source: 01-canon/theorems/THM-497-lrc14-dilated-band-covering-and-the-cardinality-structure-dichotomy.md
source_commit: a725c89
status: open
---

## Informal statement

---
id: THM-497
title: LRC(14) — the band-0 divisibility lemma (PROVED), the cardinality-permits/structure-forbids dichotomy (PROVED), and the tool-domain boundary
status: PARTIAL — Part B (band-0 lemma) and Part C (cardinality dichotomy) PROVED + verified (the genuinely-new pieces); Part A (covering reformulation) is a CONVERGENT recap of codex's covering-deficit route + THM-492; Part D records honest negatives (naive analytic route + repo-machinery transfer both fail)
source: kind-pasteur-2026-06-13-S1
depends_on:
  - THM-398   # C' reduction + band/Phi functional
  - THM-492   # the band criterion + band ladder + fibered shells
related:
  - HYP-2438  # lattice closure (band ladder u B')
  - HYP-2480  # codex's covering-deficit / Church-Frobenius descent route (the dominant LRC14 thread)
  - HYP-2472  # band-0 lemma (this session)
  - HYP-2473  # cardinality dichotomy (this session)
  - HYP-2474  # the character-sum next-step correction (this session, honest negative)
  - HYP-2475  # tool-domain boundary: repo machinery does NOT transfer (this session, honest negative)
---

# THM-497 — LRC(14): the band-0 lemma, the cardinality dichotomy, and the tool-domain boundary

**Coordination note.** The dilated-band COVERING reformulation (Part A), the
covering-deficit functional `D(q,S)`, the refutation of the `41=3n-1` ceiling, and
the resource climb to band-4 were developed CONCURRENTLY with codex-2026-06-13's
covering-deficit / Church-Frobenius descent route (backlog lead "LRC14
covering-deficit character route"; HYP-2480; the shared `lrc14_*_kps1.py` scripts)
— independent convergence, credited there, not re-claimed here. THIS file records
the genuinely-new **proved** pieces (Parts B, C) and two honest **negatives**
(Part D) that the recon adversarial pass confirmed are not in the repo.

**Convention (repo canon).** `n = 14`, speed set `S` = 13 distinct positive
integers, `M(S) = max_t min_{v∈S} ‖vt‖`; LRC(14): `M(S) ≥ 1/14`, open
(literature frontier; repo n = literature k+1; "LRC(13) proven" = Sungkawichai–
Trakulthongchai arXiv:2604.23906 Thm 1.3, an unrefereed 2026 computer-assisted
preprint — flagged for the dependency audit). By THM-398, LRC(14) ⟺ C′(14):
every primitive multiple-of-14 set is **loose** (`M > 1/14`).

## Part A — the dilated-band covering reformulation (PROVED, verified)

The band criterion (THM-492, verified 0-mismatch there): `t = a/q` (gcd(a,q)=1)
is a **strict witness** (`M > 1/14`) iff every `v ∈ S` has
`va mod q ∉ B_q`, where `B_q = {r : min(r, q−r) ≤ ⌊q/14⌋}` is the centered band

## Notes for the formalizer

(none yet)
