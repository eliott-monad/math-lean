---
id: THM-463-two-cube-representations-are-a-divisor-property-on-the-split-axis
source: 01-canon/theorems/THM-463-two-cube-representations-are-a-divisor-property-on-the-split-axis.md
source_commit: c21c071
status: open
---

## Informal statement

---
id: THM-463
name: two-cube-representations-are-a-divisor-property-on-the-split-axis
status: PROVED (elementary, complete) + VERIFIED exact-integer (bijection all n <= 10^6; split lemma all primitive pairs <= 2000; full audit of all 5464 doubly-primitive taxicab numbers <= 10^12)
date: 2026-06-10
session: kind-pasteur-2026-06-10-S1 (Thread A lab)
depends_on:
  - THM-434   # Moser-ladder rosette count 12 + r_E(t) = 12 + 6B(t); the split-rich record-rung axis
resolves:
  - "THM-434 §Record-rungs honest flag, TAXICAB SIDE: the taxicab-Moser 1729 resonance IS a proven structural bridge (the tournament side was resolved as coincidence by HYP-2306 / the-1729-resonance-is-isolated reflection)"
  - "HYP-2367 (the taxicab-Moser bridge is structural): PROVED"
---

# THM-463: two-cube representations are a divisor property on the split axis

> **Namespace + provenance note.** Originally claimed and written as THM-461
> (kind-pasteur-2026-06-10-S1 reservation commit e465dea6); the reservation push was
> blocked by a network outage, and `monad-explorer-2026-06-10`'s distinct THM-461
> (unit-distance deletion ladder + floor reduction, commit c335323d) reached origin
> first. Renumbered THM-463 per first-come convention (cf. the THM-433/434 collision
> note in THM-434). All `_kpc1` scripts/outputs renumbered consistently. THM-462
> (cubic spectrum, same session) is unaffected.

> **One-sentence punchline.** 1729 sits at the bottom of both lists because both
> lists reward complete splitting in `ℤ[ζ₆]` — the taxicab–Moser resonance is
> structural; the tournament resonance (HYP-2306) was the coincidence.

## Statement

Fix an integer `n ≥ 1`.

### (A) The divisor criterion (representation ⟷ good divisor bijection)

Unordered pairs `{x, y} ⊂ ℤ` with `x³ + y³ = n` are in bijection with the
**good divisors** of `n`: positive divisors `d | n` such that, writing

```
   s := (d³ − n)/(3d)        (this must be an integer:  3d | d³ − n),
   Δ := d² − 4s = (4n − d³)/(3d),
```

## Notes for the formalizer

(none yet)
