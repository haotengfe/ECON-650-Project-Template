# Data

Raw data files are **not** stored in this repository. This file explains what
files are needed, where they come from, and how the derived files are built.

## Directory layout

| Folder | Contents | Tracked by git? |
|---|---|---|
| `raw/` | Original files exactly as downloaded or received. Never edited. | No |
| `derived/` | Analysis-ready files created by `code/*/01_import_clean.*`. | No |

Everything in `derived/` is reproducible from `raw/` by running the code, so it
is safe that neither is committed.

## Required raw files

| File name | Source | Access | Version / vintage | Notes |
|---|---|---|---|---|
| `original_data.csv` | [Dataset name, provider] | [URL, or "restricted — see below"] | [download date or release] | [any manual step] |
|  |  |  |  |  |

### How to obtain

1. [Step-by-step: URL, portal, query used, or the replication package DOI.]
2. Save the file(s) into `data/raw/` with exactly the names in the table above —
   the code refers to them by name.

### Restricted or licensed data

[If any input cannot be redistributed, say so here: who holds it, what the
license allows, and how another researcher would apply for access. If all data
are public, delete this section.]

## Derived files

| File | Created by | Description |
|---|---|---|
| `analysis_sample.dta` / `.rds` | `01_import_clean` | Cleaned estimation sample: [unit of observation], [N], [years]. |

## Key variables

| Variable | Definition | Units | Source variable |
|---|---|---|---|
| `y` | [outcome] | [units] | [original name] |
| `x1` | [treatment] | [units] | [original name] |

## Sample restrictions

List every restriction applied in `01_import_clean`, in order, with the
resulting N — this is the single most common source of failed replications.

1. Start: [N] observations.
2. Drop [rule]: [N] remaining.
3. Drop [rule]: [N] remaining.
