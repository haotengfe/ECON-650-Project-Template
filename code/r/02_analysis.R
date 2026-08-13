# ============================================================
# File:     02_analysis.R
# Purpose:  Estimation and tables.
# Inputs:   paths$derived/analysis_sample.rds
# Outputs:  paths$tables/*.tex (or .docx / .csv)
# ============================================================

if (!exists("paths")) {
  root  <- getwd()
  paths <- list(derived = file.path(root, "data", "derived"),
                tables  = file.path(root, "output", "tables"))
  library(data.table); library(fixest); library(modelsummary)
}

# dat <- readRDS(file.path(paths$derived, "analysis_sample.rds"))

# --- Table 1: summary statistics ----------------------------------------
# datasummary_skim(dat[, .(y, x1, x2)],
#                  output = file.path(paths$tables, "table1_summary.tex"))

# --- Table 2: main results ----------------------------------------------
# models <- list(
#   "(1)" = feols(y ~ x1, data = dat, vcov = "hetero"),
#   "(2)" = feols(y ~ x1 + x2, data = dat, vcov = "hetero"),
#   "(3)" = feols(y ~ x1 + x2 | id + year, data = dat, cluster = ~id)
# )
# modelsummary(models,
#              stars = c("*" = .1, "**" = .05, "***" = .01),
#              gof_map = c("nobs", "r.squared"),
#              output = file.path(paths$tables, "table2_main.tex"))

# --- Comparison with the original paper ---------------------------------
# Record any coefficient that does not match the published value in
# documentation/replication_notes.md, with your best explanation.
