---
id: THM-357-lonely-runner-endpoint-protection-trichotomy
source: 01-canon/theorems/THM-357-lonely-runner-endpoint-protection-trichotomy.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

---
id: THM-357
name: lonely-runner-endpoint-protection-trichotomy
status: PROVED
date: 2026-05-30
session: codex-2026-05-30-S360
depends_on:
  - THM-355
  - HYP-1794
  - HYP-1802
results:
  - 05-knowledge/results/lonely_runner_endpoint_protection_s360.out
---

# THM-357: Lonely Runner Endpoint-Protection Trichotomy

## Statement

Let

```text
V = {v_1, ..., v_k}
```

be a finite set of distinct positive integer speeds, let `n=k+1`, and set
`delta=1/n`.  Define the open forbidden set on the time circle:

```text
F(V) = union_{v in V} { t in R/Z : ||v t|| < delta }.
```

Every forbidden endpoint lies in the finite quotient

```text
Q(V) = n * lcm(V),
```

and has the form

```text

## Notes for the formalizer

(none yet)
