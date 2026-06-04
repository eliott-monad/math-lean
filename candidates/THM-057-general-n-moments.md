---
id: THM-057-general-n-moments
source: 01-canon/theorems/THM-057-general-n-moments.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# THM-057: General n Moment Closed Forms

**Type:** Theorem (algebraic derivation + computational verification)
**Certainty:** 5 -- PROVED
**Status:** PROVED for m0-m5 at all n
**Added by:** opus-2026-03-06-S28
**Tags:** #moments #general-n #closed-form #sigma-patterns

---

## Statement

**Theorem.** For a tournament T on n vertices, let f_P = #{forward arcs in permutation P}. The moments m_j = sum_{P in S_n} f_P^j satisfy:

### Universal moments (independent of T)

  m0 = n!
  m1 = n!(n-1)/2

### Moments depending only on t3

  m2 = n!(3n^2 - 5n + 4)/12  +  4(n-2)! * t3
  m3 = n!(n-1)(n^2 - n + 2)/8  +  6(n-1)! * t3

### Moments depending on (t3, t5, bc)

  m4 = n!(15n^4 - 30n^3 + 65n^2 - 82n + 48)/240
       + 2(n-2)!(3n^2 - 5n + 4) * t3
       + 48(n-4)! * t5
       + 96(n-4)! * bc

  m5 = n!(n-1)(3n^4 - 2n^3 + 13n^2 - 14n + 16)/96
       + 5(n-1)(n^2 - n + 2)(n-2)! * t3
       + 120(n-1)(n-4)! * t5
       + 240(n-1)(n-4)! * bc

where:
- t3 = #{directed 3-cycles in T}
- t5 = #{directed 5-cycles in T}
- bc = #{pairs of vertex-disjoint directed 3-cycles in T}

## Notes for the formalizer

(none yet)
