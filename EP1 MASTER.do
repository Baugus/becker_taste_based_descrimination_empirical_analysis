//EP1 MASTER do file
//This do file is for calling all the other do files in the correct order, in the final iteration of the project the whole project should be able to be run from this file
//Author: Nathanael Baugus
//created: 02-26-2019
//Last updated: 04-08-2019

//define the global path
global ep1path "/Volumes/Belugas in /Extract from NB Stata 20190224" // path for Nathanael's Mac
//global ep1path "C:/Users/NB/Documents/Stata"  //path for Joshua's Server


//gather, clean, and create variables with the ACS data (and only with the ACS data)
run "$ep1path/EP1 ACS Cleaning MASTER.do"

//use ACS data to create the marginal discriminator 
run "$ep1path/EP1 VarCreate MarDiscrim.do"

//run the key instrument creating do file to prep for analysisdo 
run "$ep1path/EP1 VarCreate KeyInstruments&Restructuring.do" 

//run the analysis models
do "$ep1path/EP1 Analysis Model Driver.do"
