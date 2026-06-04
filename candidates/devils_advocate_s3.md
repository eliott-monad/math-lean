---
id: devils_advocate_s3
source: 05-knowledge/results/devils_advocate_s3.md
source_commit: 9f7fc6e
status: open
---

## Informal statement

# Devil's Advocate Session S3: Honest Assessment

**kind-pasteur-2026-03-25-S3**

## Compression: What's Real vs What's Inflated

### The "100% beats PNG" claim is MISLEADING because:
1. **Synthetic test images only** — no Kodak, Silesia, Canterbury, no real camera photos
2. **Unfair backend** — brotli/zstd vs PNG's Deflate. With same backend (zlib-9): 90% win rate
3. **Header trick** — 4 bytes vs PNG's 57. Significant for tiny images, negligible for real images
4. **No novel algorithms** — MED (1998), GAP (1996), Paeth (1996). Every component is 25+ years old
5. **Python zlib is 7% worse** than libpng's C zlib on identical data

### What IS real:
- **Lossless roundtrip VERIFIED**: 10/10 images pass compress→decompress (newly verified S3)
- **Fair comparison (zlib-only): 90% win rate** — genuinely better prediction than PNG's 5 filters
- **Transpose trick** is a modest but real innovation for vertical patterns
- **Ring codec** (from prior session) is genuinely novel scan order — never properly benchmarked

### What should be done:
1. Test on Kodak 24-image corpus (the standard)
2. Compare against JPEG-LS, WebP, JPEG-XL — the real competition
3. Implement in C for honest speed comparison
4. Properly benchmark the ring codec (the one genuinely new idea)

## Math: What's Real vs What's Inflated

### THM-260 (band-limitedness): Repackaged existing results
- THM-076 (Walsh-OCF factorization) already proved the Walsh degree bound
- THM-259 already stated the formula with proof sketch
- THM-260's only genuinely new content: correcting MISTAKE-034 (n=5 not band-limited)
- The "one-line inequality" n-1 < (n-1)(n-2)/4 for n≥6 is freshman math

### THM-261 (SC orbit pairing): Straightforward observation
- Z₂ action from anti-automorphism is a direct consequence of definitions
- Does NOT prove SC Maximizer conjecture (only describes mechanism)
- OPEN-Q-016 remains fully open

### Seesaw: NOW statistically significant at n=8
- **3000 samples: 0 violations, expected 6.4 under independence, p=0.0017**

## Notes for the formalizer

(none yet)
