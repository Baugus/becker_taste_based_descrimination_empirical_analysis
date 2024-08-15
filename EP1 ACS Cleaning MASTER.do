//EP1: Meta do file for compiling all the ACS data
//Author: Nathanael Baugus
//Created 02-26-2019
//Last modified: 03-20-2019

//NOTE: Demographics includes all blacks and whites, all other data sorts by sex and drops females

//NOTE: These paths are for MAC, to modify for WINDOWS copy, paste, find/replace "/" with "\"
//define the global path
global ep1path "/Volumes/Belugas in /Extract from NB Stata 20190224" 

//load, clean, and save age data for blacks
run  "$ep1path/EP1 ACS Cleaning AGE.do"  "$ep1path" "/ACS data/Age/ACS_17_5YR_B01001B/ACS_17_5YR_B01001B_with_ann" "b"

//load, clean, and save age data for whites
run  "$ep1path/EP1 ACS Cleaning AGE.do"  "$ep1path" "/ACS data/Age/ACS_17_5YR_B01001W/ACS_17_5YR_B01001W_with_ann" "w"

//load, clean, and save educ data for whites
run  "$ep1path/EP1 ACS Cleaning EDUC.do"  "$ep1path" "/ACS data/Education/ACS_17_5YR_C15002W/ACS_17_5YR_C15002W_with_ann" "w"

//load, clean, and save educ data for blacks
run  "$ep1path/EP1 ACS Cleaning EDUC.do"  "$ep1path" "/ACS data/Education/ACS_17_5YR_C15002B/ACS_17_5YR_C15002B_with_ann" "b"

// load, clean, and save demographic data for both whites and blacks, and calculate the percentage black in the MSAs
run "$ep1path/EP1 ACS Cleaning DEMOGRAPHICS.do" "$ep1path" "/ACS data/ACS_17_5YR_B02001_with_ann"

//load, clean, and save income related data for whites
run "$ep1path/EP1 ACS Cleaning INCOME.do" "$ep1path" "/ACS data/Income/ACS_17_5YR_B20005W_with_ann" "w"

//load, clean, and save income related data for blacks
run "$ep1path/EP1 ACS Cleaning INCOME.do" "$ep1path" "/ACS data/Income/ACS_17_5YR_B20005B_with_ann" "b"

use "$ep1path/ACS_17_5YR_Income_b.dta", clear
//merge b/w incomes
merge 1:1 geoid2 using "$ep1path/ACS_17_5YR_Income_w.dta" , generate(_merge_W2Bincome)
//merge to demographics
merge 1:1 geoid2 using "$ep1path/ACS_17_5YR_DEMOGRAPHICS.dta" , generate(_merge_income2dem)
//merge to w educ
merge 1:1 geoid2 using "$ep1path/ACS_17_5YR_EDUC_w.dta" , generate(_merge_all2wEDUC)
//merge to b educ
merge 1:1 geoid2 using "$ep1path/ACS_17_5YR_EDUC_b.dta" , generate(_merge_all2bEDUC)
//merge to b age
merge 1:1 geoid2 using "$ep1path/ACS_17_5YR_AGE_b.dta" , generate(_merge_all2bAGE)
//merge to w age
merge 1:1 geoid2 using "$ep1path/ACS_17_5YR_AGE_w.dta" , generate(_merge_all2wAGE)

save "$ep1path/ACS_17_5YR_ALL.dta", replace 

do "$ep1path/EP1 ACS VarCreate.do" "$ep1path" "/ACS_17_5YR_ALL" "b"
do "$ep1path/EP1 ACS VarCreate.do" "$ep1path" "/ACS_17_5YR_ALL" "w"

save "$ep1path/ACS_17_5YR_ALL.dta", replace 
//import delimited "/Volumes/Belugas in /Extract from NB Stata 20190224/ACS data/Education/ACS_17_5YR_C15002W/ACS_17_5YR_C15002W_with_ann.csv", clear varnames(1) 
