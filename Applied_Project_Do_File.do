

clear all
set more off
capture log close

cd "C:\Users\R.Patel036\Downloads\project\project"

dir 

log using "Aplied_Project", replace smcl

import excel using "MBA_AF_636_Applied_Econometric_Analysis.xlsx", firstrow clear

count
browse

summarize SPIndex GDPGrowthRate CPI Unemployment FDI
regress SPIndex GDPGrowthRate CPI Unemployment FDI, level(99)

generate Log_SPIndex = log(SPIndex)
generate Log_GDP = log(GDPGrowthRate)
generate Log_CPI = log(CPI)
generate Log_FDI = log(FDI)

summarize Log_GDP Log_SPIndex Unemployment Log_CPI Log_FDI 
regress Log_GDP Log_SPIndex Unemployment Log_FDI, level(99)

graph box Log_SPIndex Log_GDP Unemployment Log_FDI, yscale(range(-5 15)) ylabel(-5 (1) 15)

save MBA_AF_636_Applied_Dataset.dta, replace
export excel using "MBA_AF_636_Applied_Dataset.xlsx", firstrow(variables) replace

log close

