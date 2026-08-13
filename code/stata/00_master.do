* ============================================================
* Project:  econ650-replication
* File:     00_master.do
* Author:   [Your name]
* Created:  [YYYY-MM-DD]
* Purpose:  Runs the full replication end to end.
*
* HOW TO RUN
*   Open Stata, change directory to the repository root:
*       cd "/path/to/econ650-replication"
*   Then,
*       do "code/stata/00_master.do"
*   Nothing else needs editing: every path below is relative to the root.
* ============================================================

clear all
set more off
version 17                    // set to your Stata version

* --- Project root -------------------------------------------------------
* Globals (not locals) so the child do-files can see these paths.
global root     "`c(pwd)'"
global raw      "$root/data/raw"
global derived  "$root/data/derived"
global tables   "$root/output/tables"
global figures  "$root/output/figures"
global code     "$root/code/stata"

* Fail loudly if Stata is not sitting in the repository root.
capture confirm file "$code/00_master.do"
if _rc {
    display as error "Working directory is not the repository root."
    display as error "cd to the folder containing README.md, then rerun."
    exit 601
}

* --- Log ----------------------------------------------------------------
capture log close
log using "$root/output/replication_log.txt", replace text

display "Run started: $S_DATE $S_TIME"

* --- Pipeline -----------------------------------------------------------
do "$code/01_import_clean.do"
do "$code/02_analysis.do"
do "$code/03_figures.do"

display "Run finished: $S_DATE $S_TIME"
log close
