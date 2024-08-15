//EP1 Analysis Model Driver: 
// Description				This do file is to run the file "EP1 Analysis Models" and to feed it various specifications
//Author: Nathanael Baugus
//Created: 04-08-2019
//Last Modified: 05-09-2019

//Main analysis of EP1 consists of two parts, both operated by the file "EP1 Analysis Models"
//Part 1: regressing income related variables on educaiton and age related variables and a set of individual flags (= 1 for obs with black data) one for each MSA
//			specification 1: inc median on Mincer (edu median, potential exp, potential exp quadradic) 	(choose 1)
//			specification 2: inc bins on Mincer															(choose 2)
//			specification 3: inc bins on edu and age bins (working ages only)							(choose 3)
//Part 2: regressing Becker vars on the coeficients for the flags in whichever previous specification was run (these run automatically based on choice of part 1 specification)
//			specification 1: mean discriminator
//			specification 2: marginal discriminator
//			specification 3: 
//FIXME: need to finish documenting the specifications once I finish editing "EP1 Analysis Models"

//define the global path
global ep1path "/Volumes/Belugas in /Extract from NB Stata 20190224" // path for Nathanael's Mac
//global ep1path "C:/Users/NB/Documents/Stata"  //path for Joshua's Server

//run Models with top model 3
do "$ep1path/EP1 Analysis Models.do" "$ep1path" "3" 	 ".5"
//									 1.path     2.model	 3.ceiling for percent black

//run Models with top model 1
do "$ep1path/EP1 Analysis Models.do" "$ep1path" "1" 	 ".5" // results are not very sensitive to the ceiling for percent black, if anything the results get more pronounced as the ceiling gets higher
