# ============================================================
# File:     01_import_clean.R
# Purpose:  Import raw data and build the analysis sample.
# Inputs:   paths$raw/[raw file]
# Outputs:  paths$derived/analysis_sample.rds
# Note:     Never write to data/raw. Raw files are read-only.
# ============================================================

# Allow this file to run on its own as well as from 00_master.R
if (!exists("paths")) {
  root  <- getwd()
  paths <- list(raw     = file.path(root, "data", "raw"),
                derived = file.path(root, "data", "derived"))
  library(data.table)
}

# --- Import -------------------------------------------------------------
# dat <- fread(file.path(paths$raw, "original_data.csv"))
# dat <- haven::read_dta(file.path(paths$raw, "original_data.dta"))

# --- Clean --------------------------------------------------------------
# Document every non-obvious choice here and in
# documentation/replication_notes.md.

# setnames(dat, old = c(), new = c())
# dat <- dat[!is.na(y)]                 # sample restriction: [paper's rule]
# dat[, log_y := log(y)]

# --- Checks -------------------------------------------------------------
# Assert what the paper reports, so a broken clean fails immediately.
# stopifnot(nrow(dat) == 12345)         # N reported in Table 1
# stopifnot(!anyDuplicated(dat[, .(id, year)]))
# summary(dat)

# --- Save ---------------------------------------------------------------
# saveRDS(dat, file.path(paths$derived, "analysis_sample.rds"))
