# ============================================================
# Project:  econ650-replication
# File:     00_master.R
# Author:   [Your name]
# Created:  [YYYY-MM-DD]
# Purpose:  Runs the full replication end to end.
#
# HOW TO RUN
#   From the repository root:
#       source("code/r/00_master.R")
#   or from a terminal:
#       Rscript code/r/00_master.R
#   Every path below is relative to the repository root.
# ============================================================

rm(list = ls())
options(stringsAsFactors = FALSE, scipen = 999)
set.seed(20260813)   # any simulation/bootstrap must be reproducible

# --- Project root -------------------------------------------------------
root <- getwd()
if (!file.exists(file.path(root, "code", "r", "00_master.R"))) {
  stop("Working directory is not the repository root. ",
       "setwd() to the folder containing README.md, then rerun.")
}

paths <- list(
  raw     = file.path(root, "data", "raw"),
  derived = file.path(root, "data", "derived"),
  tables  = file.path(root, "output", "tables"),
  figures = file.path(root, "output", "figures"),
  code    = file.path(root, "code", "r")
)

# --- Packages -----------------------------------------------------------
pkgs <- c("data.table", "fixest", "ggplot2", "modelsummary")
missing <- setdiff(pkgs, rownames(installed.packages()))
if (length(missing)) {
  stop("Missing packages: ", paste(missing, collapse = ", "),
       "\nInstall with: install.packages(c(",
       paste(sprintf('"%s"', missing), collapse = ", "), "))")
}
invisible(lapply(pkgs, library, character.only = TRUE))

# --- Log ----------------------------------------------------------------
sink(file.path(root, "output", "replication_log.txt"), split = TRUE)
message("Run started: ", Sys.time())

# --- Pipeline -----------------------------------------------------------
source(file.path(paths$code, "01_import_clean.R"))
source(file.path(paths$code, "02_analysis.R"))
source(file.path(paths$code, "03_figures.R"))

message("Run finished: ", Sys.time())
print(sessionInfo())   # record versions for reproducibility
sink()
