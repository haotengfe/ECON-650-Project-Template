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

Every file that must be present in `raw/` before the code will run. One row per
file, named exactly as the code expects to find it.

| File name | Source (dataset, provider) | Access | Version / vintage | Notes |
|---|---|---|---|---|
| | | | | |
| | | | | |
| | | | | |

### How to obtain

Write this so that someone with your repository but none of your files can
follow it and end up with the same inputs. If the data come from a portal where
you select variables yourself, record enough that your exact selection can be
rebuilt.

| Item | Value |
|---|---|
| Portal or archive | |
| URL | |
| Account required? | |
| Study / cohort / collection selected | |
| Saved selection or query name | |
| Output options requested | |
| Date downloaded | |
| Downloaded by | |

Then the steps:

1. [Where to go and what to select.]
2. [What to request on the way out: file formats, codebook, anything else.]
3. Unzip or save the files into `data/raw/` under exactly the names in the table
   above. Do not rename them and do not edit them.

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

Every restriction applied in `01_import_clean`, in the order it is applied, with
the number of observations remaining after each one. This is the single most
common source of failed replications: if your count diverges from the paper's at
some step, that step is where the problem is.

| # | Rule | Reason (given or inferred) | N remaining | Source in paper |
|---|---|---|---|---|
| 0 | Start: full extract as downloaded | | | |
| 1 | | | | |
| 2 | | | | |
| 3 | | | | |
| 4 | | | | |
| 5 | | | | |
| 6 | | | | |

**Final N reported in the paper:**

**Final N obtained here:**

**If these differ, explain where and why:**
