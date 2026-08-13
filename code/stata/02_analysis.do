* ============================================================
* File:     02_analysis.do
* Purpose:  Estimation and tables.
* Inputs:   $derived/analysis_sample.dta
* Outputs:  $tables/*.tex (or .rtf / .csv)
* ============================================================

if "$root" == "" {
    global root    "`c(pwd)'"
    global derived "$root/data/derived"
    global tables  "$root/output/tables"
}

* ssc install estout, replace      // uncomment on first run

* use "$derived/analysis_sample.dta", clear

* --- Table 1: summary statistics ----------------------------------------
* estpost summarize y x1 x2
* esttab using "$tables/table1_summary.tex", replace ///
*     cells("mean(fmt(3)) sd min max") label booktabs nomtitle nonumber

* --- Table 2: main results ----------------------------------------------
* eststo clear
* eststo m1: regress y x1, robust
* eststo m2: regress y x1 x2, robust
* eststo m3: reghdfe y x1 x2, absorb(id year) cluster(id)
* esttab m1 m2 m3 using "$tables/table2_main.tex", replace ///
*     b(3) se(3) star(* 0.10 ** 0.05 *** 0.01) label booktabs ///
*     stats(N r2, labels("Observations" "R-squared"))

* --- Comparison with the original paper ---------------------------------
* Record any coefficient that does not match the published value in
* documentation/replication_notes.md, with your best explanation.
