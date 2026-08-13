# econ650-replication

Replication package for [PAPER SHORT TITLE] (ECON 650).

## Overview

One paragraph: what paper is being replicated, what the original finds, and what
this repository reproduces (exact replication, extension, robustness, etc.).

| Item | Detail |
|---|---|
| Original paper | [Author (Year), *Journal*](DOI or URL) |
| Replicator(s) | [Your name] |
| Course | ECON 650 |
| Last updated | [YYYY-MM-DD] |
| Software | Stata [version] / R [version] |

## Repository structure

```
econ650-replication/
├── README.md               <- this file
├── AI_USE.md               <- disclosure of AI assistance
├── .gitignore
├── data/
│   ├── README.md           <- data sources, access, and provenance
│   ├── raw/                <- original, never edited (not tracked by git)
│   └── derived/            <- analysis-ready files built by the code (not tracked)
├── code/
│   ├── stata/              <- 00_master.do runs everything
│   └── r/                  <- 00_master.R runs everything
├── output/
│   ├── tables/             <- generated tables (not tracked)
│   └── figures/            <- generated figures (not tracked)
└── documentation/
    ├── paper_citation.md   <- full citation + original replication package info
    └── replication_notes.md<- decisions, deviations, and issues encountered
```

## How to reproduce

1. Clone this repository.
2. Place the raw data files in `data/raw/` (see `data/README.md` for how to obtain them).
3. Run **one** of the following from the repository root:

**Stata**

```stata
do "code/stata/00_master.do"
```

**R**

```r
source("code/r/00_master.R")
```

Both master scripts set the working directory to the repository root and run
`01_import_clean` → `02_analysis` → `03_figures` in order. All outputs are
written to `output/`. Expected runtime: [X minutes].

## Conventions

- Nothing in `data/raw/` is ever modified. All cleaning writes to `data/derived/`.
- All paths in code are relative to the repository root — no absolute paths.
- Data and outputs are not committed to git; the code regenerates them.
- Any deviation from the original paper's methods is recorded in
  `documentation/replication_notes.md`.
