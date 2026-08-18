
clear all
set more off
capture log close

cd "C:\Users\R.Patel036\OneDrive - University of Massachusetts Boston\Desktop\project"

dir 

log using "aplied_project", replace smcl

import excel using "Historical Data.xlsx", firstrow clear

count
summarize
browse

summarize SPIndex GDPGrowthRate Unemployment FDI CPI
regress SPIndex GDPGrowthRate CPI Unemployment FDI

generate Log_SPIndex = log(SPIndex)
generate Log_GDP = log(GDPGrowthRate)
generate Log_CPI = log(CPI)
generate Log_FDI = log(FDI)

summarize  Log_SPIndex Log_GDP Unemployment Log_FDI Log_CPI
regress  Log_SPIndex Log_GDP Unemployment Log_FDI Log_CPI

graph box  Log_SPIndex Log_GDP Unemployment Log_FDI Log_CPI



save "applied_dataset (final).dta", replace
export excel using "applied_dataset (final).xlsx", firstrow(variables) replace

log close

twoway (scatter Log_SPIndex Log_GDP), by(Period)
twoway (scatter Log_SPIndex Log_GDP), title("regression line with scatter plot") legend(off)
generate date(dmy) == Period
Unemployment FDI CPI
