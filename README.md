# Sector Research

Investment research output from recursive sector analysis. Each sector is a top-level directory containing structured deliverables — base reality documents, comparables matrices, debate frameworks, source maps, and per-company deep dives.

## Directory Structure

```
sector-research/
├── {Sector_Slug}/
│   ├── _sector_config.json          # Sector metadata, company list, file registry
│   ├── _sector_checkpoint.json      # Phase completion tracking
│   ├── S1_sector_base_reality.md    # Industry structure, economics, dynamics
│   ├── S2_sector_comps_matrix.md    # Comparable company framework
│   ├── S3_sector_debates.md         # Key sector debates and bear/bull cases
│   ├── S4_sector_consensus_tracker.md # Consensus vs variant views
│   ├── S5_sector_source_map.md      # Categorized source taxonomy
│   ├── S5_sector_source_register.md # Numbered source citations
│   ├── _summaries/                  # Condensed summaries of sector files
│   │   ├── S1_summary.txt
│   │   ├── S2_summary.txt
│   │   └── S5_summary.txt
│   └── companies/
│       └── {Company_Slug}/
│           ├── 00_company_config.json
│           ├── 01_source_discovery.md
│           ├── 02_evidence_base.md
│           ├── 03_base_reality.md
│           ├── 04_debates.md
│           ├── 05_valuation.md
│           ├── 06_archetypes.md
│           ├── 07_council_output.md
│           └── 08_synthesis.md
```

## Sector Files (S1–S5)

| File | Purpose |
|------|---------|
| **S1** — Base Reality | Industry structure, value chain, unit economics, regulatory landscape |
| **S2** — Comps Matrix | Comparable company framework with financial and operating metrics |
| **S3** — Debates | Key sector debates with bear/bull evidence and variant perceptions |
| **S4** — Consensus Tracker | Market consensus positions vs differentiated views |
| **S5** — Source Map & Register | Categorized source taxonomy and numbered citation registry |

## Company Deliverables (00–08)

| File | Phase | Purpose |
|------|-------|---------|
| **00** — Config | Setup | Company metadata and tracking |
| **01** — Source Discovery | Intake | Identify and catalog primary/secondary sources |
| **02** — Evidence Base | Research | Extract and organize factual evidence with citations |
| **03** — Base Reality | Analysis | Company-specific structure, economics, competitive position |
| **04** — Debates | Debate | Company-specific bull/bear debates with evidence |
| **05** — Valuation | Analysis | Bottom-up valuation framework and assumptions |
| **06** — Archetypes | Analysis | Historical analog and pattern matching |
| **07** — Council Output | Synthesis | Multi-perspective advisory council deliberation |
| **08** — Synthesis | Synthesis | Final integrated investment thesis |

## Phase Pipeline

```
sector-init → sector-add → sector-intake → sector-research → sector-analyze → sector-debate → sector-delta
```

| Phase | Sector Output | Company Output |
|-------|--------------|----------------|
| Bootstrap | S1, S5 | — |
| Comps Seed | S2 | — |
| Intake | — | 01 Source Discovery |
| Research | — | 02 Evidence Base |
| Analysis | — | 03 Base Reality, 05 Valuation, 06 Archetypes |
| Debate | S3 | 04 Debates, 07 Council |
| Synthesis | — | 08 Synthesis |
| Delta | S4 updated | Incremental updates |

## Epistemic Tags

All claims in research documents are tagged with epistemic status:

| Tag | Meaning |
|-----|---------|
| `[VERIFIED]` | Cross-referenced across multiple independent sources |
| `[REPORTED]` | Single credible source, not independently verified |
| `[ESTIMATED]` | Derived via calculation or model from verified inputs |
| `[INFERRED]` | Logical inference from verified/reported facts |
| `[SPECULATIVE]` | Hypothesis or forward-looking without strong evidence |
| `[DISPUTED]` | Conflicting information across sources |

## Citation Format

- Sector sources: `[S5-###]` referencing the source register
- Evidence log entries: `[EL-###]` referencing company evidence base
- Cross-file references: `[S1]`, `[S2]`, etc.

## Current Sectors

| Sector | Status | Companies |
|--------|--------|-----------|
| India_Telecom | Bootstrap complete, pending review | Reliance Jio, Bharti Airtel, Vodafone Idea, BSNL, Indus Towers, Tata Communications |
