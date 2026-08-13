* ============================================================
* File:     01_import_clean.do
* Purpose:  Import raw data and build the analysis sample.
* Inputs:   $raw/[raw file]
* Outputs:  $derived/analysis_sample.dta
* Note:     Never write to $raw. Raw files are read-only.
* ============================================================

* Allow this file to run on its own as well as from 00_master.do
if "$root" == "" {
    global root    "`c(pwd)'"
    global raw     "$root/data/raw"
    global derived "$root/data/derived"
}

* --- Import -------------------------------------------------------------
* import delimited "$raw/original_data.csv", clear varnames(1)
* use "$raw/original_data.dta", clear

* --- Clean --------------------------------------------------------------
* Document every non-obvious choice here and in
* documentation/replication_notes.md.

* rename ...
* label variable ...
* drop if ...            // sample restriction: [state the paper's rule]
* generate ...

* --- Checks -------------------------------------------------------------
* Assert what the paper reports, so a broken clean fails immediately.
* assert _N == 12345      // N reported in Table 1 of the paper
* isid id year
* summarize

* --- Save ---------------------------------------------------------------
* compress
* save "$derived/analysis_sample.dta", replace
