//EP1 do file for cleaning and preping age related data for EP1 from ACS
// Author: Nathanael Baugus
//created: 02-26-2019
//last edited: 02-28-2019 (that I remembered to record, lol)

//README: This do file asks for three arguments: `1' is the path, `2' is the file name, `3' is optional and equals "b" if the file it is being run on contains black age data

import delimited "`1'`2'.csv", clear varnames(1) 

//first row exports as value labels, why, just why
drop if geoid=="Id"

//destring the string variables we want
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
destring	hd01_vd07	, replace
destring	hd02_vd07	, replace
destring	hd01_vd08	, replace
destring	hd02_vd08	, replace
destring	hd01_vd09	, replace
destring	hd02_vd09	, replace
destring	hd01_vd10	, replace
destring	hd02_vd10	, replace
destring	hd01_vd11	, replace
destring	hd02_vd11	, replace
destring	hd01_vd12	, replace
destring	hd02_vd12	, replace
destring	hd01_vd13	, replace
destring	hd02_vd13	, replace
destring	hd01_vd14	, replace
destring	hd02_vd14	, replace
destring	hd01_vd15	, replace
destring	hd02_vd15	, replace
destring	hd01_vd16	, replace
destring	hd02_vd16	, replace

//drop the variables we don't want
		//these are the data about women. While women are certainly interesting in the extreme, their unique qualities make them less straightforward for this project, so we are focusing on men who are simpler
drop	hd01_vd17	
drop	hd02_vd17	
drop	hd01_vd18	
drop	hd02_vd18	
drop	hd01_vd19	
drop	hd02_vd19	
drop	hd01_vd20	
drop	hd02_vd20	
drop	hd01_vd21	
drop	hd02_vd21	
drop	hd01_vd22	
drop	hd02_vd22	
drop	hd01_vd23	
drop	hd02_vd23	
drop	hd01_vd24	
drop	hd02_vd24	
drop	hd01_vd25	
drop	hd02_vd25	
drop	hd01_vd26	
drop	hd02_vd26	
drop	hd01_vd27	
drop	hd02_vd27	
drop	hd01_vd28	
drop	hd02_vd28	
drop	hd01_vd29	
drop	hd02_vd29	
drop	hd01_vd30	
drop	hd02_vd30	
drop	hd01_vd31	
drop	hd02_vd31	

//labeling the variables something useful
label var	hd01_vd01	"Estimate; Total:"
label var	hd02_vd01	"Margin of Error; Total:"
label var	hd01_vd02	"Estimate; Male:"
label var	hd02_vd02	"Margin of Error; Male:"
label var	hd01_vd03	"Estimate; Male: - Under 5 years"
label var	hd02_vd03	"Margin of Error; Male: - Under 5 years"
label var	hd01_vd04	"Estimate; Male: - 5 to 9 years"
label var	hd02_vd04	"Margin of Error; Male: - 5 to 9 years"
label var	hd01_vd05	"Estimate; Male: - 10 to 14 years"
label var	hd02_vd05	"Margin of Error; Male: - 10 to 14 years"
label var	hd01_vd06	"Estimate; Male: - 15 to 17 years"
label var	hd02_vd06	"Margin of Error; Male: - 15 to 17 years"
label var	hd01_vd07	"Estimate; Male: - 18 and 19 years"
label var	hd02_vd07	"Margin of Error; Male: - 18 and 19 years"
label var	hd01_vd08	"Estimate; Male: - 20 to 24 years"
label var	hd02_vd08	"Margin of Error; Male: - 20 to 24 years"
label var	hd01_vd09	"Estimate; Male: - 25 to 29 years"
label var	hd02_vd09	"Margin of Error; Male: - 25 to 29 years"
label var	hd01_vd10	"Estimate; Male: - 30 to 34 years"
label var	hd02_vd10	"Margin of Error; Male: - 30 to 34 years"
label var	hd01_vd11	"Estimate; Male: - 35 to 44 years"
label var	hd02_vd11	"Margin of Error; Male: - 35 to 44 years"
label var	hd01_vd12	"Estimate; Male: - 45 to 54 years"
label var	hd02_vd12	"Margin of Error; Male: - 45 to 54 years"
label var	hd01_vd13	"Estimate; Male: - 55 to 64 years"
label var	hd02_vd13	"Margin of Error; Male: - 55 to 64 years"
label var	hd01_vd14	"Estimate; Male: - 65 to 74 years"
label var	hd02_vd14	"Margin of Error; Male: - 65 to 74 years"
label var	hd01_vd15	"Estimate; Male: - 75 to 84 years"
label var	hd02_vd15	"Margin of Error; Male: - 75 to 84 years"
label var	hd01_vd16	"Estimate; Male: - 85 years and over"
label var	hd02_vd16	"Margin of Error; Male: - 85 years and over"

//renaming the variables something useful
//NOTE: this asks for an argument "`3'" which should be passed as "b" if this file is being used for black ages, this will prefix "b" to the variable names for when they are all appended together
rename	hd01_vd01	`3'age_e_total
rename	hd02_vd01	`3'age_me_total
rename	hd01_vd02	`3'age_e_m
rename	hd02_vd02	`3'age_me_m
rename	hd01_vd03	`3'age_e_m_under_5
rename	hd02_vd03	`3'age_me_m_under_5
rename	hd01_vd04	`3'age_e_m_5_to_9
rename	hd02_vd04	`3'age_me_m_5_to_9
rename	hd01_vd05	`3'age_e_m_10_to_14
rename	hd02_vd05	`3'age_me_m_10_to_14
rename	hd01_vd06	`3'age_e_m_15_to_17
rename	hd02_vd06	`3'age_me_m_15_to_17
rename	hd01_vd07	`3'age_e_m_18_and_19
rename	hd02_vd07	`3'age_me_m_18_and_19
rename	hd01_vd08	`3'age_e_m_20_to_24
rename	hd02_vd08	`3'age_me_m_20_to_24
rename	hd01_vd09	`3'age_e_m_25_to_29
rename	hd02_vd09	`3'age_me_m_25_to_29
rename	hd01_vd10	`3'age_e_m_30_to_34
rename	hd02_vd10	`3'age_me_m_30_to_34
rename	hd01_vd11	`3'age_e_m_35_to_44
rename	hd02_vd11	`3'age_me_m_35_to_44
rename	hd01_vd12	`3'age_e_m_45_to_54
rename	hd02_vd12	`3'age_me_m_45_to_54
rename	hd01_vd13	`3'age_e_m_55_to_64
rename	hd02_vd13	`3'age_me_m_55_to_64
rename	hd01_vd14	`3'age_e_m_65_to_74
rename	hd02_vd14	`3'age_me_m_65_to_74
rename	hd01_vd15	`3'age_e_m_75_to_84
rename	hd02_vd15	`3'age_me_m_75_to_84
rename	hd01_vd16	`3'age_e_m_85_and_over
rename	hd02_vd16	`3'age_me_m_85_and_over

save "`1'/ACS_17_5YR_AGE_`3'.dta", replace
