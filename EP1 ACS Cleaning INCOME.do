//EP1 do file for cleaning and preping Income related data for EP1 from ACS
// Author: Nathanael Baugus
//created: 02-26-2019
//last edited: 02-28-2019 (that I remembered to record, lol)

//README: This do file asks for three arguments: `1' is the path, `2' is the file name, `3' is optional and equals "b" if the file it is being run on contains black age data

import delimited "`1'`2'.csv", clear varnames(1) 


//first row exports as value labels, why, just why
drop if geoid=="Id"

// Renaming, dropping, relabeling and destringing for white income table
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
destring	hd01_vd17	, replace
destring	hd02_vd17	, replace
destring	hd01_vd18	, replace
destring	hd02_vd18	, replace
destring	hd01_vd19	, replace
destring	hd02_vd19	, replace
destring	hd01_vd20	, replace
destring	hd02_vd20	, replace
destring	hd01_vd21	, replace
destring	hd02_vd21	, replace
destring	hd01_vd22	, replace
destring	hd02_vd22	, replace
destring	hd01_vd23	, replace
destring	hd02_vd23	, replace
destring	hd01_vd24	, replace
destring	hd02_vd24	, replace
destring	hd01_vd25	, replace
destring	hd02_vd25	, replace
destring	hd01_vd26	, replace
destring	hd02_vd26	, replace
destring	hd01_vd27	, replace
destring	hd02_vd27	, replace
destring	hd01_vd28	, replace
destring	hd02_vd28	, replace
destring	hd01_vd29	, replace
destring	hd02_vd29	, replace
destring	hd01_vd30	, replace
destring	hd02_vd30	, replace
destring	hd01_vd31	, replace
destring	hd02_vd31	, replace
destring	hd01_vd32	, replace
destring	hd02_vd32	, replace
destring	hd01_vd33	, replace
destring	hd02_vd33	, replace
destring	hd01_vd34	, replace
destring	hd02_vd34	, replace
destring	hd01_vd35	, replace
destring	hd02_vd35	, replace
destring	hd01_vd36	, replace
destring	hd02_vd36	, replace
destring	hd01_vd37	, replace
destring	hd02_vd37	, replace
destring	hd01_vd38	, replace
destring	hd02_vd38	, replace
destring	hd01_vd39	, replace
destring	hd02_vd39	, replace
destring	hd01_vd40	, replace
destring	hd02_vd40	, replace
destring	hd01_vd41	, replace
destring	hd02_vd41	, replace
destring	hd01_vd42	, replace
destring	hd02_vd42	, replace
destring	hd01_vd43	, replace
destring	hd02_vd43	, replace
destring	hd01_vd44	, replace
destring	hd02_vd44	, replace
destring	hd01_vd45	, replace
destring	hd02_vd45	, replace
destring	hd01_vd46	, replace
destring	hd02_vd46	, replace
destring	hd01_vd47	, replace
destring	hd02_vd47	, replace
destring	hd01_vd48	, replace
destring	hd02_vd48	, replace

//drop the variables we don't want
		//these are the data about women. While women are certainly interesting in the extreme, their unique qualities make them less straightforward for this project, so we are focusing on men who are simpler

drop	hd01_vd49	
drop	hd02_vd49	
drop	hd01_vd50	
drop	hd02_vd50	
drop	hd01_vd51	
drop	hd02_vd51	
drop	hd01_vd52	
drop	hd02_vd52	
drop	hd01_vd53	
drop	hd02_vd53	
drop	hd01_vd54	
drop	hd02_vd54	
drop	hd01_vd55	
drop	hd02_vd55	
drop	hd01_vd56	
drop	hd02_vd56	
drop	hd01_vd57	
drop	hd02_vd57	
drop	hd01_vd58	
drop	hd02_vd58	
drop	hd01_vd59	
drop	hd02_vd59	
drop	hd01_vd60	
drop	hd02_vd60	
drop	hd01_vd61	
drop	hd02_vd61	
drop	hd01_vd62	
drop	hd02_vd62	
drop	hd01_vd63	
drop	hd02_vd63	
drop	hd01_vd64	
drop	hd02_vd64	
drop	hd01_vd65	
drop	hd02_vd65	
drop	hd01_vd66	
drop	hd02_vd66	
drop	hd01_vd67	
drop	hd02_vd67	
drop	hd01_vd68	
drop	hd02_vd68	
drop	hd01_vd69	
drop	hd02_vd69	
drop	hd01_vd70	
drop	hd02_vd70	
drop	hd01_vd71	
drop	hd02_vd71	
drop	hd01_vd72	
drop	hd02_vd72	
drop	hd01_vd73	
drop	hd02_vd73	
drop	hd01_vd74	
drop	hd02_vd74	
drop	hd01_vd75	
drop	hd02_vd75	
drop	hd01_vd76	
drop	hd02_vd76	
drop	hd01_vd77	
drop	hd02_vd77	
drop	hd01_vd78	
drop	hd02_vd78	
drop	hd01_vd79	
drop	hd02_vd79	
drop	hd01_vd80	
drop	hd02_vd80	
drop	hd01_vd81	
drop	hd02_vd81	
drop	hd01_vd82	
drop	hd02_vd82	
drop	hd01_vd83	
drop	hd02_vd83	
drop	hd01_vd84	
drop	hd02_vd84	
drop	hd01_vd85	
drop	hd02_vd85	
drop	hd01_vd86	
drop	hd02_vd86	
drop	hd01_vd87	
drop	hd02_vd87	
drop	hd01_vd88	
drop	hd02_vd88	
drop	hd01_vd89	
drop	hd02_vd89	
drop	hd01_vd90	
drop	hd02_vd90	
drop	hd01_vd91	
drop	hd02_vd91	
drop	hd01_vd92	
drop	hd02_vd92	
drop	hd01_vd93	
drop	hd02_vd93	
drop	hd01_vd94	
drop	hd02_vd94	
drop	hd01_vd95	
drop	hd02_vd95	

//labeling the variables with something useful
label var	hd01_vd01	"Estimate Total"
label var	hd02_vd01	"ME Total"
label var	hd01_vd02	"Estimate Male"
label var	hd02_vd02	"ME Male"
label var	hd01_vd03	"E-M-fulltime"
label var	hd02_vd03	"ME-M-fulltime"
label var	hd01_vd04	"E-M-fulltime - No earnings"
label var	hd02_vd04	"ME-M-fulltime - No earnings"
label var	hd01_vd05	"E-M-fulltime - With earnings:"
label var	hd02_vd05	"ME-M-fulltime - With earnings:"
label var	hd01_vd06	"E-M-fulltime - With earnings: - $1 to $2,499 or loss"
label var	hd02_vd06	"ME-M-fulltime - With earnings: - $1 to $2,499 or loss"
label var	hd01_vd07	"E-M-fulltime - With earnings: - $2,500 to $4,999"
label var	hd02_vd07	"ME-M-fulltime - With earnings: - $2,500 to $4,999"
label var	hd01_vd08	"E-M-fulltime - With earnings: - $5,000 to $7,499"
label var	hd02_vd08	"ME-M-fulltime - With earnings: - $5,000 to $7,499"
label var	hd01_vd09	"E-M-fulltime - With earnings: - $7,500 to $9,999"
label var	hd02_vd09	"ME-M-fulltime - With earnings: - $7,500 to $9,999"
label var	hd01_vd10	"E-M-fulltime - With earnings: - $10,000 to $12,499"
label var	hd02_vd10	"ME-M-fulltime - With earnings: - $10,000 to $12,499"
label var	hd01_vd11	"E-M-fulltime - With earnings: - $12,500 to $14,999"
label var	hd02_vd11	"ME-M-fulltime - With earnings: - $12,500 to $14,999"
label var	hd01_vd12	"E-M-fulltime - With earnings: - $15,000 to $17,499"
label var	hd02_vd12	"ME-M-fulltime - With earnings: - $15,000 to $17,499"
label var	hd01_vd13	"E-M-fulltime - With earnings: - $17,500 to $19,999"
label var	hd02_vd13	"ME-M-fulltime - With earnings: - $17,500 to $19,999"
label var	hd01_vd14	"E-M-fulltime - With earnings: - $20,000 to $22,499"
label var	hd02_vd14	"ME-M-fulltime - With earnings: - $20,000 to $22,499"
label var	hd01_vd15	"E-M-fulltime - With earnings: - $22,500 to $24,999"
label var	hd02_vd15	"ME-M-fulltime - With earnings: - $22,500 to $24,999"
label var	hd01_vd16	"E-M-fulltime - With earnings: - $25,000 to $29,999"
label var	hd02_vd16	"ME-M-fulltime - With earnings: - $25,000 to $29,999"
label var	hd01_vd17	"E-M-fulltime - With earnings: - $30,000 to $34,999"
label var	hd02_vd17	"ME-M-fulltime - With earnings: - $30,000 to $34,999"
label var	hd01_vd18	"E-M-fulltime - With earnings: - $35,000 to $39,999"
label var	hd02_vd18	"ME-M-fulltime - With earnings: - $35,000 to $39,999"
label var	hd01_vd19	"E-M-fulltime - With earnings: - $40,000 to $44,999"
label var	hd02_vd19	"ME-M-fulltime - With earnings: - $40,000 to $44,999"
label var	hd01_vd20	"E-M-fulltime - With earnings: - $45,000 to $49,999"
label var	hd02_vd20	"ME-M-fulltime - With earnings: - $45,000 to $49,999"
label var	hd01_vd21	"E-M-fulltime - With earnings: - $50,000 to $54,999"
label var	hd02_vd21	"ME-M-fulltime - With earnings: - $50,000 to $54,999"
label var	hd01_vd22	"E-M-fulltime - With earnings: - $55,000 to $64,999"
label var	hd02_vd22	"ME-M-fulltime - With earnings: - $55,000 to $64,999"
label var	hd01_vd23	"E-M-fulltime - With earnings: - $65,000 to $74,999"
label var	hd02_vd23	"ME-M-fulltime - With earnings: - $65,000 to $74,999"
label var	hd01_vd24	"E-M-fulltime - With earnings: - $75,000 to $99,999"
label var	hd02_vd24	"ME-M-fulltime - With earnings: - $75,000 to $99,999"
label var	hd01_vd25	"E-M-fulltime - With earnings: - $100,000 or more"
label var	hd02_vd25	"ME-M-fulltime - With earnings: - $100,000 or more"
label var	hd01_vd26	"Estimate Male Other"
label var	hd02_vd26	"ME Male Other"
label var	hd01_vd27	"Estimate Male Other No earnings"
label var	hd02_vd27	"ME Male other no earnings"
label var	hd01_vd28	"Estimate Male Other With Earnings"
label var	hd02_vd28	"ME Male Other With Earnings"
label var	hd01_vd29	"E-M-Other- With earnings: - $1 to $2,499 or loss"
label var	hd02_vd29	"ME-M-Other- With earnings: - $1 to $2,499 or loss"
label var	hd01_vd30	"E-M-Other- With earnings: - $2,500 to $4,999"
label var	hd02_vd30	"ME-M-Other- With earnings: - $2,500 to $4,999"
label var	hd01_vd31	"E-M-Other- With earnings: - $5,000 to $7,499"
label var	hd02_vd31	"ME-M-Other- With earnings: - $5,000 to $7,499"
label var	hd01_vd32	"E-M-Other- With earnings: - $7,500 to $9,999"
label var	hd02_vd32	"ME-M-Other- With earnings: - $7,500 to $9,999"
label var	hd01_vd33	"E-M-Other- With earnings: - $10,000 to $12,499"
label var	hd02_vd33	"ME-M-Other- With earnings: - $10,000 to $12,499"
label var	hd01_vd34	"E-M-Other- With earnings: - $12,500 to $14,999"
label var	hd02_vd34	"ME-M-Other- With earnings: - $12,500 to $14,999"
label var	hd01_vd35	"E-M-Other- With earnings: - $15,000 to $17,499"
label var	hd02_vd35	"ME-M-Other- With earnings: - $15,000 to $17,499"
label var	hd01_vd36	"E-M-Other- With earnings: - $17,500 to $19,999"
label var	hd02_vd36	"ME-M-Other- With earnings: - $17,500 to $19,999"
label var	hd01_vd37	"E-M-Other- With earnings: - $20,000 to $22,499"
label var	hd02_vd37	"ME-M-Other- With earnings: - $20,000 to $22,499"
label var	hd01_vd38	"E-M-Other- With earnings: - $22,500 to $24,999"
label var	hd02_vd38	"ME-M-Other- With earnings: - $22,500 to $24,999"
label var	hd01_vd39	"E-M-Other- With earnings: - $25,000 to $29,999"
label var	hd02_vd39	"ME-M-Other- With earnings: - $25,000 to $29,999"
label var	hd01_vd40	"E-M-Other- With earnings: - $30,000 to $34,999"
label var	hd02_vd40	"ME-M-Other- With earnings: - $30,000 to $34,999"
label var	hd01_vd41	"E-M-Other- With earnings: - $35,000 to $39,999"
label var	hd02_vd41	"ME-M-Other- With earnings: - $35,000 to $39,999"
label var	hd01_vd42	"E-M-Other- With earnings: - $40,000 to $44,999"
label var	hd02_vd42	"ME-M-Other- With earnings: - $40,000 to $44,999"
label var	hd01_vd43	"E-M-Other- With earnings: - $45,000 to $49,999"
label var	hd02_vd43	"ME-M-Other- With earnings: - $45,000 to $49,999"
label var	hd01_vd44	"E-M-Other- With earnings: - $50,000 to $54,999"
label var	hd02_vd44	"ME-M-Other- With earnings: - $50,000 to $54,999"
label var	hd01_vd45	"E-M-Other- With earnings: - $55,000 to $64,999"
label var	hd02_vd45	"ME-M-Other- With earnings: - $55,000 to $64,999"
label var	hd01_vd46	"E-M-Other- With earnings: - $65,000 to $74,999"
label var	hd02_vd46	"ME-M-Other- With earnings: - $65,000 to $74,999"
label var	hd01_vd47	"E-M-Other- With earnings: - $75,000 to $99,999"
label var	hd02_vd47	"ME-M-Other- With earnings: - $75,000 to $99,999"
label var	hd01_vd48	"E-M-Other- With earnings: - $100,000 or more"
label var	hd02_vd48	"ME-M-Other- With earnings: - $100,000 or more"

//naming the variables something useful
//why doesn't factfinder give more reasonable names?
rename	hd01_vd01	`3'inc_estimate_total
rename	hd02_vd01	`3'inc_me_total
rename	hd01_vd02	`3'inc_estimate_male
rename	hd02_vd02	`3'inc_me_male
rename	hd01_vd03	`3'inc_e_m_fulltime
rename	hd02_vd03	`3'inc_me_m_fulltime
rename	hd01_vd04	`3'inc_e_m_fulltime_no_earnings
rename	hd02_vd04	`3'inc_me_m_fulltime_no_earnings
rename	hd01_vd05	`3'inc_e_m_f_with_earnings
rename	hd02_vd05	`3'inc_me_m_f_with_earnings
rename	hd01_vd06	`3'inc_e_m_f__1_2499_or_loss
rename	hd02_vd06	`3'inc_me_m_f__1_2499_or_loss
rename	hd01_vd07	`3'inc_e_m_f__2500_4999
rename	hd02_vd07	`3'inc_me_m_f__2500_4999
rename	hd01_vd08	`3'inc_e_m_f__5000_7499
rename	hd02_vd08	`3'inc_me_m_f__5000_7499
rename	hd01_vd09	`3'inc_e_m_f__7500_9999
rename	hd02_vd09	`3'inc_me_m_f__7500_9999
rename	hd01_vd10	`3'inc_e_m_f__10000_12499
rename	hd02_vd10	`3'inc_me_m_f__10000_12499
rename	hd01_vd11	`3'inc_e_m_f__12500_14999
rename	hd02_vd11	`3'inc_me_m_f__12500_14999
rename	hd01_vd12	`3'inc_e_m_f__15000_17499
rename	hd02_vd12	`3'inc_me_m_f__15000_17499
rename	hd01_vd13	`3'inc_e_m_f__17500_19999
rename	hd02_vd13	`3'inc_me_m_f__17500_19999
rename	hd01_vd14	`3'inc_e_m_f__20000_22499
rename	hd02_vd14	`3'inc_me_m_f__20000_22499
rename	hd01_vd15	`3'inc_e_m_f__22500_24999
rename	hd02_vd15	`3'inc_me_m_f__22500_24999
rename	hd01_vd16	`3'inc_e_m_f__25000_29999
rename	hd02_vd16	`3'inc_me_m_f__25000_29999
rename	hd01_vd17	`3'inc_e_m_f__30000_34999
rename	hd02_vd17	`3'inc_me_m_f__30000_34999
rename	hd01_vd18	`3'inc_e_m_f__35000_39999
rename	hd02_vd18	`3'inc_me_m_f__35000_39999
rename	hd01_vd19	`3'inc_e_m_f__40000_44999
rename	hd02_vd19	`3'inc_me_m_f__40000_44999
rename	hd01_vd20	`3'inc_e_m_f__45000_49999
rename	hd02_vd20	`3'inc_me_m_f__45000_49999
rename	hd01_vd21	`3'inc_e_m_f__50000_54999
rename	hd02_vd21	`3'inc_me_m_f__50000_54999
rename	hd01_vd22	`3'inc_e_m_f__55000_64999
rename	hd02_vd22	`3'inc_me_m_f__55000_64999
rename	hd01_vd23	`3'inc_e_m_f__65000_74999
rename	hd02_vd23	`3'inc_me_m_f__65000_74999
rename	hd01_vd24	`3'inc_e_m_f__75000_99999
rename	hd02_vd24	`3'inc_me_m_f__75000_99999
rename	hd01_vd25	`3'inc_e_m_f__100000_or_more
rename	hd02_vd25	`3'inc_me_m_f__100000_or_more

//chage from fulltime employment to other types of employment
rename	hd01_vd26	`3'inc_e_m_o
rename	hd02_vd26	`3'inc_me_o
rename	hd01_vd27	`3'inc_e_m_o_no_earnings
rename	hd02_vd27	`3'inc_me_m_o_no_earnings
rename	hd01_vd28	`3'inc_e_m_o_with_earnings
rename	hd02_vd28	`3'inc_me_m_o_with_earnings
rename	hd01_vd29	`3'inc_e_m_o__1_2499_or_loss
rename	hd02_vd29	`3'inc_me_m_o__1_2499_or_loss
rename	hd01_vd30	`3'inc_e_m_o__2500_4999
rename	hd02_vd30	`3'inc_me_m_o__2500_4999
rename	hd01_vd31	`3'inc_e_m_o__5000_7499
rename	hd02_vd31	`3'inc_me_m_o__5000_7499
rename	hd01_vd32	`3'inc_e_m_o__7500_9999
rename	hd02_vd32	`3'inc_me_m_o__7500_9999
rename	hd01_vd33	`3'inc_e_m_o__10000_12499
rename	hd02_vd33	`3'inc_me_m_o__10000_12499
rename	hd01_vd34	`3'inc_e_m_o__12500_14999
rename	hd02_vd34	`3'inc_me_m_o__12500_14999
rename	hd01_vd35	`3'inc_e_m_o__15000_17499
rename	hd02_vd35	`3'inc_me_m_o__15000_17499
rename	hd01_vd36	`3'inc_e_m_o__17500_19999
rename	hd02_vd36	`3'inc_me_m_o__17500_19999
rename	hd01_vd37	`3'inc_e_m_o__20000_22499
rename	hd02_vd37	`3'inc_me_m_o__20000_22499
rename	hd01_vd38	`3'inc_e_m_o__22500_24999
rename	hd02_vd38	`3'inc_me_m_o__22500_24999
rename	hd01_vd39	`3'inc_e_m_o__25000_29999
rename	hd02_vd39	`3'inc_me_m_o__25000_29999
rename	hd01_vd40	`3'inc_e_m_o__30000_34999
rename	hd02_vd40	`3'inc_me_m_o__30000_34999
rename	hd01_vd41	`3'inc_e_m_o__35000_39999
rename	hd02_vd41	`3'inc_me_m_o__35000_39999
rename	hd01_vd42	`3'inc_e_m_o__40000_44999
rename	hd02_vd42	`3'inc_me_m_o__40000_44999
rename	hd01_vd43	`3'inc_e_m_o__45000_49999
rename	hd02_vd43	`3'inc_me_m_o__45000_49999
rename	hd01_vd44	`3'inc_e_m_o__50000_54999
rename	hd02_vd44	`3'inc_me_m_o__50000_54999
rename	hd01_vd45	`3'inc_e_m_o__55000_64999
rename	hd02_vd45	`3'inc_me_m_o__55000_64999
rename	hd01_vd46	`3'inc_e_m_o__65000_74999
rename	hd02_vd46	`3'inc_me_m_o__65000_74999
rename	hd01_vd47	`3'inc_e_m_o__75000_99999
rename	hd02_vd47	`3'inc_me_m_o__75000_99999
rename	hd01_vd48	`3'inc_e_m_o__100000_or_more
rename	hd02_vd48	`3'inc_me_m_o__100000_or_more

//generate vars for combination of all types of employment
gen	`3'inc_e_m_all	=	`3'inc_e_m_fulltime	+	`3'inc_e_m_o
gen	`3'inc_me_all	=	`3'inc_me_m_fulltime	+	`3'inc_me_o
gen	`3'inc_e_m_all_no_earnings	=	`3'inc_e_m_fulltime_no_earnings	+	`3'inc_e_m_o_no_earnings
gen	`3'inc_me_m_all_no_earnings	=	`3'inc_me_m_fulltime_no_earnings	+	`3'inc_me_m_o_no_earnings
gen	`3'inc_e_m_all_with_earnings	=	`3'inc_e_m_f_with_earnings	+	`3'inc_e_m_o_with_earnings
gen	`3'inc_me_m_all_with_earnings	=	`3'inc_me_m_f_with_earnings	+	`3'inc_me_m_o_with_earnings
gen	`3'inc_e_m_all__1_2499_allr_loss	=	`3'inc_e_m_f__1_2499_or_loss	+	`3'inc_e_m_o__1_2499_or_loss
gen	`3'inc_me_m_all__1_2499_allr_loss	=	`3'inc_me_m_f__1_2499_or_loss	+	`3'inc_me_m_o__1_2499_or_loss
gen	`3'inc_e_m_all__2500_4999	=	`3'inc_e_m_f__2500_4999	+	`3'inc_e_m_o__2500_4999
gen	`3'inc_me_m_all__2500_4999	=	`3'inc_me_m_f__2500_4999	+	`3'inc_me_m_o__2500_4999
gen	`3'inc_e_m_all__5000_7499	=	`3'inc_e_m_f__5000_7499	+	`3'inc_e_m_o__5000_7499
gen	`3'inc_me_m_all__5000_7499	=	`3'inc_me_m_f__5000_7499	+	`3'inc_me_m_o__5000_7499
gen	`3'inc_e_m_all__7500_9999	=	`3'inc_e_m_f__7500_9999	+	`3'inc_e_m_o__7500_9999
gen	`3'inc_me_m_all__7500_9999	=	`3'inc_me_m_f__7500_9999	+	`3'inc_me_m_o__7500_9999
gen	`3'inc_e_m_all__10000_12499	=	`3'inc_e_m_f__10000_12499	+	`3'inc_e_m_o__10000_12499
gen	`3'inc_me_m_all__10000_12499	=	`3'inc_me_m_f__10000_12499	+	`3'inc_me_m_o__10000_12499
gen	`3'inc_e_m_all__12500_14999	=	`3'inc_e_m_f__12500_14999	+	`3'inc_e_m_o__12500_14999
gen	`3'inc_me_m_all__12500_14999	=	`3'inc_me_m_f__12500_14999	+	`3'inc_me_m_o__12500_14999
gen	`3'inc_e_m_all__15000_17499	=	`3'inc_e_m_f__15000_17499	+	`3'inc_e_m_o__15000_17499
gen	`3'inc_me_m_all__15000_17499	=	`3'inc_me_m_f__15000_17499	+	`3'inc_me_m_o__15000_17499
gen	`3'inc_e_m_all__17500_19999	=	`3'inc_e_m_f__17500_19999	+	`3'inc_e_m_o__17500_19999
gen	`3'inc_me_m_all__17500_19999	=	`3'inc_me_m_f__17500_19999	+	`3'inc_me_m_o__17500_19999
gen	`3'inc_e_m_all__20000_22499	=	`3'inc_e_m_f__20000_22499	+	`3'inc_e_m_o__20000_22499
gen	`3'inc_me_m_all__20000_22499	=	`3'inc_me_m_f__20000_22499	+	`3'inc_me_m_o__20000_22499
gen	`3'inc_e_m_all__22500_24999	=	`3'inc_e_m_f__22500_24999	+	`3'inc_e_m_o__22500_24999
gen	`3'inc_me_m_all__22500_24999	=	`3'inc_me_m_f__22500_24999	+	`3'inc_me_m_o__22500_24999
gen	`3'inc_e_m_all__25000_29999	=	`3'inc_e_m_f__25000_29999	+	`3'inc_e_m_o__25000_29999
gen	`3'inc_me_m_all__25000_29999	=	`3'inc_me_m_f__25000_29999	+	`3'inc_me_m_o__25000_29999
gen	`3'inc_e_m_all__30000_34999	=	`3'inc_e_m_f__30000_34999	+	`3'inc_e_m_o__30000_34999
gen	`3'inc_me_m_all__30000_34999	=	`3'inc_me_m_f__30000_34999	+	`3'inc_me_m_o__30000_34999
gen	`3'inc_e_m_all__35000_39999	=	`3'inc_e_m_f__35000_39999	+	`3'inc_e_m_o__35000_39999
gen	`3'inc_me_m_all__35000_39999	=	`3'inc_me_m_f__35000_39999	+	`3'inc_me_m_o__35000_39999
gen	`3'inc_e_m_all__40000_44999	=	`3'inc_e_m_f__40000_44999	+	`3'inc_e_m_o__40000_44999
gen	`3'inc_me_m_all__40000_44999	=	`3'inc_me_m_f__40000_44999	+	`3'inc_me_m_o__40000_44999
gen	`3'inc_e_m_all__45000_49999	=	`3'inc_e_m_f__45000_49999	+	`3'inc_e_m_o__45000_49999
gen	`3'inc_me_m_all__45000_49999	=	`3'inc_me_m_f__45000_49999	+	`3'inc_me_m_o__45000_49999
gen	`3'inc_e_m_all__50000_54999	=	`3'inc_e_m_f__50000_54999	+	`3'inc_e_m_o__50000_54999
gen	`3'inc_me_m_all__50000_54999	=	`3'inc_me_m_f__50000_54999	+	`3'inc_me_m_o__50000_54999
gen	`3'inc_e_m_all__55000_64999	=	`3'inc_e_m_f__55000_64999	+	`3'inc_e_m_o__55000_64999
gen	`3'inc_me_m_all__55000_64999	=	`3'inc_me_m_f__55000_64999	+	`3'inc_me_m_o__55000_64999
gen	`3'inc_e_m_all__65000_74999	=	`3'inc_e_m_f__65000_74999	+	`3'inc_e_m_o__65000_74999
gen	`3'inc_me_m_all__65000_74999	=	`3'inc_me_m_f__65000_74999	+	`3'inc_me_m_o__65000_74999
gen	`3'inc_e_m_all__75000_99999	=	`3'inc_e_m_f__75000_99999	+	`3'inc_e_m_o__75000_99999
gen	`3'inc_me_m_all__75000_99999	=	`3'inc_me_m_f__75000_99999	+	`3'inc_me_m_o__75000_99999
gen	`3'inc_e_m_all__100000_allr_more	=	`3'inc_e_m_f__100000_or_more	+	`3'inc_e_m_o__100000_or_more
gen	`3'inc_me_m_all__100000_allr_more	=	`3'inc_me_m_f__100000_or_more	+	`3'inc_me_m_o__100000_or_more

//save "$ep1path\ACS data\Income\ACS_17_5YR_B20005W_with_ann.dta", replace
save "`1'/ACS_17_5YR_Income_`3'.dta", replace
