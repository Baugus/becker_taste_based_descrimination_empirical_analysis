//EP1 this file is to calculate the marginal descriminator
//author: nathanael baugus 
//created: 2/12/2019
//last updated: 03/07/2019

//______________________
//define the global path
//global ep1path "/Volumes/Belugas in /Extract from NB Stata 20190224" // path for Nathanael's Mac
//global ep1path "C:/Users/NB/Documents/Stata"  //path for Joshua's Server
//======================
use "$ep1path/ACS_17_5YR_ALL.dta", clear

duplicates report geoid2
duplicates list geoid2

//there are roughly 200,000 obs which have a geoid2 but that nontheless fail to match. If I have the time I need to find and resolve them.
merge 1:m geoid2 using "$ep1path/IAT_all_columns_dropped.dta"

/* 2019-02-22
    Result                           # of obs.
    -----------------------------------------
    not matched                     2,502,798
        from master                       586  (_merge==1)
        from using                  2,502,212  (_merge==2)

    matched                         1,402,499  (_merge==3)
    -----------------------------------------
*/

//FIXME: should probably use a replace and the strtrim function to clean up geoid2s, that may need to be here or it may be in an ealier document

//find the percentiles of each value according to the Hazen method
by geoid2, sort: egen n = count(d_biepwhite_good_all)
by geoid2: egen i = rank(d_biepwhite_good_all)
gen hazen = (i - 0.5) / n 

/*
//tests: these numbers should make sense with the following observations kept, deleted, or generated
count if d_biepwhite_good_all ==.
count if _merge==1
count if _merge==2
count if _merge==3
count if geoid2==""
count if geoid2==" "
count if msano==""
*/


// record the 10th, 25th, 50th, 75th, and 90th percentiles of d_biepwhite_good_all, by geoid2
by geoid2, sort: egen p25 = pctile( d_biepwhite_good_all ), p(25)
by geoid2, sort: egen p10 = pctile( d_biepwhite_good_all ), p(10)
by geoid2, sort: egen p75 = pctile( d_biepwhite_good_all ), p(75)
by geoid2, sort: egen p50 = pctile( d_biepwhite_good_all ), p(50)
by geoid2, sort: egen p90 = pctile( d_biepwhite_good_all ), p(90)

//record mean of d_biepwhite_good_all by geoid2 
//gen avgpart = d_biepwhite_good_all/n
by geoid2: egen sum1 = total( d_biepwhite_good_all )
gen meandiscrim = sum1/n

//if obs percentile is less than or equal to percent black in its geoid2 then flag it
gen islower = 1 if hazen<=percentblk

//Drop obs with higher percentile than percent black. Now the highest percentile is the marginal discriminator. 
keep if islower == 1

//number observations in reverse order from the marginal discriminator 
by geoid2, sort: egen rank2 = rank(-d_biepwhite_good_all)

//keep only the marginal discriminator
keep if rank2 == 1

drop n
drop i
drop sum1
drop islower
drop rank2

//use "$ep1path\IAT_all_columns_dropped.dta", clear

save "$ep1path\EP1_ACS_plus_MarDiscrim.dta", replace

