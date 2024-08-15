//EP1 do file for cleaning and preping demographic makeup related data for EP1 from ACS
// Author: Nathanael Baugus
//created: 02-26-2019
//last edited: 02-28-2019 (that I remembered to record, lol)

//README: This do file asks for two arguments: `1' is the path, `2' is the file name

//NOTE:
// for race data of the various years use the following: 
// link: https://factfinder.census.gov/bkmk/table/1.0/en/ACS/16_5YR/B02001/0100000US.31000
// Table #: B02001

import delimited "`1'`2'.csv", clear varnames(1) 

//first row exports as value labels, why, just why
drop if geoid=="Id"

//give usefule labels, why does the ACS export with such unhelpful labels, names and formatting?!
label var	geoid "Id"
label var	geoid2	"Id2"
label var	geodisplaylabel	"Geography"
label var	hd01_vd01	"Total Estimate"
label var	hd02_vd01	"Total Margin of Error"
label var	hd01_vd02	"White Estimate"
label var	hd02_vd02	"White Margin of Error"
label var	hd01_vd03   "Black Estimate"
label var	hd02_vd03	"Black Margin of Error"

//rename with intuitive names
rename	hd01_vd01	totale
rename	hd02_vd01	totalme
rename	hd01_vd02	white_e
rename	hd02_vd02	whiteme
rename	hd01_vd03	blacke
rename  hd02_vd03   blackme
destring blacke, replace
destring blackme, replace
destring whiteme, replace
destring white_e, replace
destring totalme, replace
destring totale, replace
	   
//drop races other than black and white *note: everything isn't black and white but that is what the project is about :) 
drop	hd01_vd04
drop	hd02_vd04
drop	hd01_vd05
drop	hd02_vd05
drop	hd01_vd06
drop	hd02_vd06
drop	hd01_vd07
drop	hd02_vd07
drop	hd01_vd08
drop	hd02_vd08
drop	hd01_vd09
drop	hd02_vd09
drop	hd01_vd10
drop	hd02_vd10

gen percentblk = blacke/totale

//save "C:\Users\NB\Documents\Stata\\$yrvar.dta", replace
save "`1'/ACS_17_5YR_DEMOGRAPHICS.dta", replace
