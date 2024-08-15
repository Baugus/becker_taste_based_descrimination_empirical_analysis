//EP1 do file for cleaning and preping education related data for EP1 from ACS
// Author: Nathanael Baugus
//created: 02-26-2019
//last edited: 02-28-2019 (that I remembered to record, lol)

//README: This do file asks for three arguments: `1' is the path, `2' is the file name, `3' is optional and equals "b" if the file it is being run on contains black age data

import delimited "`1'`2'.csv", clear varnames(1) 

//first row exports as value labels, why, just why
drop if geoid=="Id"

//destring data to use
destring	hd01_vd01	, replace
destring	hd02_vd01	, replace
destring	hd01_vd02	, replace
destring	hd02_vd02	, replace
destring	hd01_vd03	, replace
destring	hd02_vd03	, replace
destring	hd01_vd04	, replace
destring	hd02_vd04	, replace
destring	hd01_vd05	, replace
destring	hd02_vd05	, replace
destring	hd01_vd06	, replace
destring	hd02_vd06	, replace

//drop the variables we don't want
		//these are the data about women. While women are certainly interesting in the extreme, their unique qualities make them less straightforward for this project, so we are focusing on men who are simpler
drop 	hd01_vd07	
drop 	hd02_vd07	
drop 	hd01_vd08	
drop 	hd02_vd08	
drop 	hd01_vd09	
drop 	hd02_vd09	
drop 	hd01_vd10	
drop 	hd02_vd10	
drop 	hd01_vd11	
drop 	hd02_vd11	

//labeling the variables something useful
label var	hd01_vd01	"Estimate; Total:"
label var	hd02_vd01	"Margin of Error; Total:"
label var	hd01_vd02	"Estimate; Male:"
label var	hd02_vd02	"Margin of Error; Male:"
label var	hd01_vd03	"Estimate; Male: - Less than high school diploma"
label var	hd02_vd03	"Margin of Error; Male: - Less than high school diploma"
label var	hd01_vd04	"Estimate; Male: - High school graduate (includes equivalency)"
label var	hd02_vd04	"Margin of Error; Male: - High school graduate (includes equivalency)"
label var	hd01_vd05	"Estimate; Male: - Some college or associate's degree"
label var	hd02_vd05	"Margin of Error; Male: - Some college or associate's degree"
label var	hd01_vd06	"Estimate; Male: - Bachelor's degree or higher"
label var	hd02_vd06	"Margin of Error; Male: - Bachelor's degree or higher"

//renaming the variables something useful
//NOTE: this asks for an argument "`3'" which should be passed as "b" if this file is being used for black ages, this will prefix "b" to the variable names for when they are all appended together
rename	hd01_vd01	`3'edu_e_total
rename	hd02_vd01	`3'edu_me_total
rename	hd01_vd02	`3'edu_e_m
rename	hd02_vd02	`3'edu_me_m
rename	hd01_vd03	`3'edu_e_m_lessthan_HS
rename	hd02_vd03	`3'edu_me_m_lessthan_HS
rename	hd01_vd04	`3'edu_e_m_HS
rename	hd02_vd04	`3'edu_me_m_HS
rename	hd01_vd05	`3'edu_e_m_some_college
rename	hd02_vd05	`3'edu_me_m_some_college
rename	hd01_vd06	`3'edu_e_m_atleast_bachelor
rename	hd02_vd06	`3'edu_me_m_atleast_bachelor

save "`1'/ACS_17_5YR_EDUC_`3'.dta", replace
