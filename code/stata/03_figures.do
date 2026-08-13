* ============================================================
* File:     03_figures.do
* Purpose:  Figures.
* Inputs:   $derived/analysis_sample.dta
* Outputs:  $figures/*.png (and .gph)
* ============================================================

if "$root" == "" {
    global root    "`c(pwd)'"
    global derived "$root/data/derived"
    global figures "$root/output/figures"
}

* use "$derived/analysis_sample.dta", clear

* graph set window fontface "Helvetica"

* --- Figure 1 -----------------------------------------------------------
* twoway (scatter y x, mcolor(%40)) (lfit y x), ///
*     xtitle("X label") ytitle("Y label") ///
*     legend(off) scheme(s1color)
* graph export "$figures/figure1.png", replace width(2000)

* --- Figure 2 -----------------------------------------------------------
* binscatter y x, controls(x2)
* graph export "$figures/figure2.png", replace width(2000)
