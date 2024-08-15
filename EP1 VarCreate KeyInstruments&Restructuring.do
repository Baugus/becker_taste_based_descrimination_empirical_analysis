//EP1 This file is for reshaping the data from 1 per MSA to 1 per RACE per MSA
//Author: Nathanael Baugus
//Created: 03-06-2019
//Last updated: 05-09-2019

//______________________
//define the global path
global ep1path "/Volumes/Belugas in /Extract from NB Stata 20190224" // path for Nathanael's Mac
//global ep1path "C:/Users/NB/Documents/Stata"  //path for Joshua's Server
//______________________


use "$ep1path/EP1_ACS_plus_MarDiscrim.dta", clear

expand 2 , gen(isblack)
//______________________________
//make vars for the final analysis
//inc
gen s_tinc__1_2499_or_loss = 0
gen s_tinc__2500_4999 = 0
gen s_tinc__5000_7499 = 0
gen s_tinc__7500_9999 = 0
gen s_tinc__10000_12499 = 0
gen s_tinc__12500_14999 = 0
gen s_tinc__15000_17499 = 0
gen s_tinc__17500_19999 = 0
gen s_tinc__20000_22499 = 0
gen s_tinc__22500_24999 = 0
gen s_tinc__25000_29999 = 0
gen s_tinc__30000_34999 = 0
gen s_tinc__35000_39999 = 0
gen s_tinc__40000_44999 = 0
gen s_tinc__45000_49999 = 0
gen s_tinc__50000_54999 = 0
gen s_tinc__55000_64999 = 0
gen s_tinc__65000_74999 = 0
gen s_tinc__75000_99999 = 0
gen s_tinc__100000_or_more = 0

//edu
gen s_tedu_e_m_lessthan_HS = 0
gen s_tedu_e_m_HS = 0
gen s_tedu_e_m_some_college = 0
gen s_tedu_e_m_atleast_bachelor = 0

//age
gen s_tage_e_total = 0
gen s_tage_e_m = 0
gen s_tage_e_m_under_5 = 0
gen s_tage_e_m_5_to_9 = 0
gen s_tage_e_m_10_to_14 = 0
gen s_tage_e_m_15_to_17 = 0
gen s_tage_e_m_18_and_19 = 0
gen s_tage_e_m_20_to_24 = 0
gen s_tage_e_m_25_to_29 = 0
gen s_tage_e_m_30_to_34 = 0
gen s_tage_e_m_35_to_44 = 0
gen s_tage_e_m_45_to_54 = 0
gen s_tage_e_m_55_to_64 = 0
gen s_tage_e_m_65_to_74 = 0
gen s_tage_e_m_75_to_84 = 0
gen s_tage_e_m_85_and_over = 0


//give white values to those variables for half the observations
//inc
replace s_tinc__1_2499_or_loss = s_winc_e_m_all__1_2499_or_loss if isblack == 0
replace s_tinc__2500_4999 = s_winc_e_m_all__2500_4999 if isblack == 0
replace s_tinc__5000_7499 = s_winc_e_m_all__5000_7499 if isblack == 0
replace s_tinc__7500_9999 = s_winc_e_m_all__7500_9999 if isblack == 0
replace s_tinc__10000_12499 = s_winc_e_m_all__10000_12499 if isblack == 0
replace s_tinc__12500_14999 = s_winc_e_m_all__12500_14999 if isblack == 0
replace s_tinc__15000_17499 = s_winc_e_m_all__15000_17499 if isblack == 0
replace s_tinc__17500_19999 = s_winc_e_m_all__17500_19999 if isblack == 0
replace s_tinc__20000_22499 = s_winc_e_m_all__20000_22499 if isblack == 0
replace s_tinc__22500_24999 = s_winc_e_m_all__22500_24999 if isblack == 0
replace s_tinc__25000_29999 = s_winc_e_m_all__25000_29999 if isblack == 0
replace s_tinc__30000_34999 = s_winc_e_m_all__30000_34999 if isblack == 0
replace s_tinc__35000_39999 = s_winc_e_m_all__35000_39999 if isblack == 0
replace s_tinc__40000_44999 = s_winc_e_m_all__40000_44999 if isblack == 0
replace s_tinc__45000_49999 = s_winc_e_m_all__45000_49999 if isblack == 0
replace s_tinc__50000_54999 = s_winc_e_m_all__50000_54999 if isblack == 0
replace s_tinc__55000_64999 = s_winc_e_m_all__55000_64999 if isblack == 0
replace s_tinc__65000_74999 = s_winc_e_m_all__65000_74999 if isblack == 0
replace s_tinc__75000_99999 = s_winc_e_m_all__75000_99999 if isblack == 0
replace s_tinc__100000_or_more = s_winc_e_m_all__100000_or_more if isblack == 0
//edu
replace s_tedu_e_m_lessthan_HS = s_wedu_e_m_lessthan_HS if isblack == 0
replace s_tedu_e_m_HS = s_wedu_e_m_HS if isblack == 0
replace s_tedu_e_m_some_college = s_wedu_e_m_some_college if isblack == 0
replace s_tedu_e_m_atleast_bachelor = s_wedu_e_m_atleast_bachelor if isblack == 0
//age
replace s_tage_e_m_under_5 = s_wage_e_m_under_5 if isblack == 0
replace s_tage_e_m_5_to_9 = s_wage_e_m_5_to_9 if isblack == 0
replace s_tage_e_m_10_to_14 = s_wage_e_m_10_to_14 if isblack == 0
replace s_tage_e_m_15_to_17 = s_wage_e_m_15_to_17 if isblack == 0
replace s_tage_e_m_18_and_19 = s_wage_e_m_18_and_19 if isblack == 0
replace s_tage_e_m_20_to_24 = s_wage_e_m_20_to_24 if isblack == 0
replace s_tage_e_m_25_to_29 = s_wage_e_m_25_to_29 if isblack == 0
replace s_tage_e_m_30_to_34 = s_wage_e_m_30_to_34 if isblack == 0
replace s_tage_e_m_35_to_44 = s_wage_e_m_35_to_44 if isblack == 0
replace s_tage_e_m_45_to_54 = s_wage_e_m_45_to_54 if isblack == 0
replace s_tage_e_m_55_to_64 = s_wage_e_m_55_to_64 if isblack == 0
replace s_tage_e_m_65_to_74 = s_wage_e_m_65_to_74 if isblack == 0
replace s_tage_e_m_75_to_84 = s_wage_e_m_75_to_84 if isblack == 0
replace s_tage_e_m_85_and_over = s_wage_e_m_85_and_over if isblack == 0

//and give the other half black values
//inc
replace s_tinc__1_2499_or_loss = s_binc_e_m_all__1_2499_or_loss if isblack == 1
replace s_tinc__2500_4999 = s_binc_e_m_all__2500_4999 if isblack == 1
replace s_tinc__5000_7499 = s_binc_e_m_all__5000_7499 if isblack == 1
replace s_tinc__7500_9999 = s_binc_e_m_all__7500_9999 if isblack == 1
replace s_tinc__10000_12499 = s_binc_e_m_all__10000_12499 if isblack == 1
replace s_tinc__12500_14999 = s_binc_e_m_all__12500_14999 if isblack == 1
replace s_tinc__15000_17499 = s_binc_e_m_all__15000_17499 if isblack == 1
replace s_tinc__17500_19999 = s_binc_e_m_all__17500_19999 if isblack == 1
replace s_tinc__20000_22499 = s_binc_e_m_all__20000_22499 if isblack == 1
replace s_tinc__22500_24999 = s_binc_e_m_all__22500_24999 if isblack == 1
replace s_tinc__25000_29999 = s_binc_e_m_all__25000_29999 if isblack == 1
replace s_tinc__30000_34999 = s_binc_e_m_all__30000_34999 if isblack == 1
replace s_tinc__35000_39999 = s_binc_e_m_all__35000_39999 if isblack == 1
replace s_tinc__40000_44999 = s_binc_e_m_all__40000_44999 if isblack == 1
replace s_tinc__45000_49999 = s_binc_e_m_all__45000_49999 if isblack == 1
replace s_tinc__50000_54999 = s_binc_e_m_all__50000_54999 if isblack == 1
replace s_tinc__55000_64999 = s_binc_e_m_all__55000_64999 if isblack == 1
replace s_tinc__65000_74999 = s_binc_e_m_all__65000_74999 if isblack == 1
replace s_tinc__75000_99999 = s_binc_e_m_all__75000_99999 if isblack == 1
replace s_tinc__100000_or_more = s_binc_e_m_all__100000_or_more if isblack == 1
//edu
replace s_tedu_e_m_lessthan_HS = s_bedu_e_m_lessthan_HS if isblack == 1
replace s_tedu_e_m_HS = s_bedu_e_m_HS if isblack == 1
replace s_tedu_e_m_some_college = s_bedu_e_m_some_college if isblack == 1
replace s_tedu_e_m_atleast_bachelor = s_bedu_e_m_atleast_bachelor if isblack == 1
//age
replace s_tage_e_m_under_5 = s_bage_e_m_under_5 if isblack == 1
replace s_tage_e_m_5_to_9 = s_bage_e_m_5_to_9 if isblack == 1
replace s_tage_e_m_10_to_14 = s_bage_e_m_10_to_14 if isblack == 1
replace s_tage_e_m_15_to_17 = s_bage_e_m_15_to_17 if isblack == 1
replace s_tage_e_m_18_and_19 = s_bage_e_m_18_and_19 if isblack == 1
replace s_tage_e_m_20_to_24 = s_bage_e_m_20_to_24 if isblack == 1
replace s_tage_e_m_25_to_29 = s_bage_e_m_25_to_29 if isblack == 1
replace s_tage_e_m_30_to_34 = s_bage_e_m_30_to_34 if isblack == 1
replace s_tage_e_m_35_to_44 = s_bage_e_m_35_to_44 if isblack == 1
replace s_tage_e_m_45_to_54 = s_bage_e_m_45_to_54 if isblack == 1
replace s_tage_e_m_55_to_64 = s_bage_e_m_55_to_64 if isblack == 1
replace s_tage_e_m_65_to_74 = s_bage_e_m_65_to_74 if isblack == 1
replace s_tage_e_m_75_to_84 = s_bage_e_m_75_to_84 if isblack == 1
replace s_tage_e_m_85_and_over = s_bage_e_m_85_and_over if isblack == 1

//gen variables for median & Mincer
gen tage_median = bage_median1 if isblack==1
gen tedu_median = bedu_median1 if isblack==1

replace tage_median = wage_median1 if isblack==0
replace tedu_median = wedu_median1 if isblack==0

gen potentialexp = tage_median - tedu_median - 6
gen potentialexpquad = potentialexp * potentialexp

//gen median income
gen tinc_median = binc_median1 if isblack ==1
replace tinc_median = winc_median1 if isblack ==0

//gen alternate percent black by laborforce/income data
gen totalLF = binc_e_m_all + winc_e_m_all
gen pctblk_real = binc_e_m_all/totalLF
label var pctblk_real "percent black by income data"

//egen pctblk = std(pctblk_real)

//Save without the flags as a csv for mapping
export delimited using  "$ep1path/EP1_ACS_plus_MarDiscrim_Restructured.csv", replace

/*
//__________________________
//Prep for flags
drop winc_*
drop wage_*
drop wedu_*
drop bage_*
drop bedu_*
drop binc_*
drop session_id-ethnicityomb
drop politicalid_7-religion2009
drop if strmatch(geoid2, "99*") //for now drop these observations since I am missing full data on them
*/

//drop if strmatch(geoid2, "99*") //for now drop these observations since I am missing full data on them
//drop if geoid2 == ""    	
//drop if geoid2 == "00000"


//gen binary flag vars for earch geoid2
levelsof geoid2, local(levels) 
foreach geoid2 of local levels {
	gen flag`geoid2'0 = 0
	replace flag`geoid2'0 = 1 if geoid2=="`geoid2'" & isblack==1
}



save "$ep1path/EP1_ACS_plus_MarDiscrim_Restructured_wflag.dta", replace

