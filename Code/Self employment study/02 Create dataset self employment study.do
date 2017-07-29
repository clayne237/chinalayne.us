*Recoding main predictors, control variables, and outcomes for use in model of regional occupational concentration on likelihood of self-employment.
set more off
set logtype text
log using "C:\Users\china.layne\Documents\Recode variables for ESS paper.txt", replace

use "C:\Users\china.layne\Documents\Bigger CPS 2006 and 2014 to 2016 for retirement and self employment.dta"

***IMPORTANT: DELETE 2006 CASES FIRST OFF SO REGIONAL VARIABLES ARE CALCULATED ONLY ON 2014-2016 DATA.
***2006 DATA USES DIFFERENT INDUSTRY AND OCCUPATION CODES AND WOULD REQUIRE HARMONIZING THE CODES ACROSS YEARS IN THE DATA. 
drop if year == 2006

*REGIONAL UNWEIGHTED POP NUMBERS - USE COUNTY OR METRO AREA?
by county year, sort: egen county_unw_pop = count(pernum)
	label variable county_unw_pop "Total unweighted pop in county"

by metfips year, sort: egen metro_unw_pop = count(pernum)
	label variable metro_unw_pop "Total unweighted pop in metro area"

preserve
by county year, sort: keep if _n == 1 & year == 2016
summarize county_unw_pop if county ~= 0, detail
/*2016 county unweighted pop ranges from 24 to 5,093 with median value of 152, covers 77,602 (42%) of 2016 unweighted total obs*/
restore

preserve
by metfips year, sort: keep if _n == 1 & year == 2016
summarize metro_unw_pop if metfips < 99997, detail	/*99998 is for unidentified or non-metro areas and 99999 is missing. There are no 99999 cases.*/
/*2016 metro area unweighted pop ranges from 46 to 8,112 with median value of 219, covers 139,118 (75%) of 2016 unweighted total obs*/
restore

egen county_group = group(county)
	label variable county_group "Counties groups turned into list of integers"
	summarize county_group

egen metarea_group = group(metfips)
	label variable metarea_group "Metropolitan area groups turned into list of integers"
	summarize metarea_group

*HOW MANY OF THE 3,143 COUNTIES AND 382 METROPOLITAN / 551 MICROPOLITAN AREAS ARE COVERED BY THE COUNTY AND METFIPS DATA IN CPS? 
*LOOKS LIKE 369 COUNTIES (12%) AND 325 METRO AREAS (85%).

*DECISION: USE METFIPS (METRO AREA) FOR LEVEL TWO OF MODEL

egen tag_metfips = tag(metfips)

gen metfips2 = metfips
replace metfips2 = . if metfips == 99998
codebook metfips metfips2


*OUTCOME - Self-Employed Or Not
**Option 1: Self-employment in three groups (employee, self-employed non-incorporated, self-employed incorporated)
	gen self_employed = .
		replace self_employed = 1 if inlist(empstat, 10, 12) & classwkr == 14 /*self-employed incorporated*/
		replace self_employed = 2 if inlist(empstat, 10, 12) & classwkr == 13 /*self-employed not incorporated*/
		replace self_employed = 3 if inlist(empstat, 10, 12) & inlist(classwkr, 21, 25, 27, 28) /*employee*/

	tab classwkr self_employed, mi
		tab empstat self_employed, mi

	label variable self_employed "Self-employed or not in three groups"
	label define self_employed 1 "Self-employed incorporated business" 2 "Self-employed, non-incorporated business" 3 "Employee"
		label values self_employed self_employed
		
**Option 1 Reversed: Self-employment in three groups (employee, self-employed non-incorporated, self-employed incorporated)
	gen self_employedR = .
		replace self_employedR = 3 if inlist(empstat, 10, 12) & classwkr == 14 /*self-employed incorporated*/
		replace self_employedR = 2 if inlist(empstat, 10, 12) & classwkr == 13 /*self-employed not incorporated*/
		replace self_employedR = 1 if inlist(empstat, 10, 12) & inlist(classwkr, 21, 25, 27, 28) /*employee*/

	tab classwkr self_employedR, mi
		tab empstat self_employedR, mi

	label variable self_employedR "Reversed Self-employed or not in three groups"
	label define self_employedR 3 "Self-employed incorporated business" 2 "Self-employed, non-incorporated business" 1 "Employee"
		label values self_employedR self_employedR		

**Option 1b: Self-employment in three dummies
	gen se_incorporated = 0 if self_employed ~=.
		replace se_incorporated = 1 if self_employed == 1
	label variable se_incorporated "Self-employed incorporated business"

	gen se_non_incorporated = 0 if self_employed ~=.
		replace se_non_incorporated = 1 if self_employed == 2
	label variable se_non_incorporated "Self-employed, non-incorporated business"

	gen se_employee = 0 if self_employed ~=.
		replace se_employee = 1 if self_employed == 3
	label variable se_employee "Employee"

	tab self_employed se_incorporated, mi
		tab self_employed se_non_incorporated, mi
		tab self_employed se_employee, mi

**Option 1c: Self-employment in two categories
	gen self_employed2 = 0 if self_employed ~= .
		replace self_employed2 = 1 if self_employed < 3

	label variable self_employed2 "Self-employed or not in two categories"
	label define self_employed2 0 "Employee" 1 "Self-employed"
		label values self_employed2 self_employed2

	tab self_employed self_employed2, mi
	
**Option 2: Self-employment in four groups (unemployed, employee, self-employed non-incorporated, self-employed incorporated)
	gen self_employed4 = .
		replace self_employed4 = 4 if inlist(empstat, 21, 22) /*unemployed*/
		replace self_employed4 = 1 if inlist(empstat, 10, 12) & classwkr == 14 /*self-employed incorporated*/
		replace self_employed4 = 2 if inlist(empstat, 10, 12) & classwkr == 13 /*self-employed not incorporated*/
		replace self_employed4 = 3 if inlist(empstat, 10, 12) & inlist(classwkr, 21, 25, 27, 28) /*employee*/

	tab classwkr self_employed4, mi
		tab empstat self_employed4, mi

	label variable self_employed4 "Self-employed or not in four groups including unemployed"
	label define self_employed4 4 "Unemployed" 1 "Self-employed incorporated business" 2 "Self-employed, non-incorporated business" 3 "Employee"
		label values self_employed4 self_employed4
		
**Option 2 Reversed: SE in four groups
gen self_employed4R = .
		replace self_employed4R = 1 if inlist(empstat, 21, 22) /*unemployed*/
		replace self_employed4R = 4 if inlist(empstat, 10, 12) & classwkr == 14 /*self-employed incorporated*/
		replace self_employed4R = 3 if inlist(empstat, 10, 12) & classwkr == 13 /*self-employed not incorporated*/
		replace self_employed4R = 2 if inlist(empstat, 10, 12) & inlist(classwkr, 21, 25, 27, 28) /*employee*/

	tab classwkr self_employed4R, mi
		tab empstat self_employed4R, mi

	label variable self_employed4R "Reversed categories, Self-employed or not in four groups including unemployed"
	label define self_employed4R 1 "Unemployed" 4 "Self-employed incorporated business" 3 "Self-employed, non-incorporated business" 2 "Employee"
		label values self_employed4R self_employed4R		

**Option 2b: Self-employment in four dummies
	gen se_incorporated4 = 0 if self_employed4 ~=.
		replace se_incorporated4 = 1 if self_employed4 == 1
	label variable se_incorporated4 "Self-employed incorporated business"

	gen se_non_incorporated4 = 0 if self_employed4 ~=.
		replace se_non_incorporated4 = 1 if self_employed4 == 2
	label variable se_non_incorporated4 "Self-employed, non-incorporated business"

	gen se_employee4 = 0 if self_employed4 ~=.
		replace se_employee4 = 1 if self_employed4 == 3
	label variable se_employee4 "Employee"
	
	gen se_unemployed4 = 0 if self_employed4 ~=.
		replace se_unemployed4 = 1 if self_employed4 == 4
	label variable se_unemployed4 "Unemployed"

	tab self_employed4 se_incorporated4, mi
		tab self_employed4 se_non_incorporated4, mi
		tab self_employed4 se_employee4, mi
		tab self_employed4 se_unemployed4, mi

**Option 2c: Self-employment in three categories including unemployed
	gen self_employed3 = 1 if self_employed4 < 3
		replace self_employed3 = 2 if self_employed4 == 3
		replace self_employed3 = 3 if self_employed4 == 4

	label variable self_employed3 "Self-employed or not in three categories including unemployed"
	label define self_employed3 1 "Self-employed" 2 "Employee" 3 "Unemployed"
		label values self_employed3 self_employed3

	tab self_employed4 self_employed3, mi	

**Option 2c Reversed: SE in three categories
gen self_employed3R = 3 if self_employed4R == 3 | self_employed4R == 4
		replace self_employed3R = 2 if self_employed4R == 2
		replace self_employed3R = 1 if self_employed4R == 1

	label variable self_employed3R "Self-employed or not in three categories including unemployed"
	label define self_employed3R 3 "Self-employed" 2 "Employee" 1 "Unemployed"
		label values self_employed3R self_employed3R

	tab self_employed4R self_employed3R, mi	
	

*CONTROL VARIABLES - Worker and Regional Characteristics
**Worker Characteristics

***Age
	gen age2 = .
		replace age2 = 1 if age < 25
		replace age2 = 2 if age >= 25 & age < 35
		replace age2 = 3 if age >= 35 & age < 45
		replace age2 = 4 if age >= 45 & age < 55
		replace age2 = 5 if age >= 55 & age < 65
		replace age2 = 6 if age >= 65

	label variable age2 "Age recoded into six groups"
	label define age2 1 "Under 25 years" 2 "25 to 34 years" 3 "35 to 44 years" 4 "45 to 54 years" 5 "55 to 64 years" 6 "65 years and older"
		label values age2 age2

	tab age age2, mi

***Race and Ethnicity
	gen race2 = .
		replace race2 = 1 if race == 100 & hispan == 0
		replace race2 = 2 if race == 200 & hispan == 0
		replace race2 = 3 if hispan >= 100
		replace race2 = 4 if race == 651 & hispan == 0
		replace race2 = 5 if (race == 300 & hispan == 0) | (race == 652 & hispan == 0) | (race >= 801 & hispan == 0)

		label define race2 1 "White, non-Hispanic" 2 "Black, non-Hispanic" 3 "Hispanic" 4 "Asian, non-Hispanic" 5 "Other race or mixed race, Non-Hispanic"
			label values race2 race2

		tab race race2, mi
		tab hispan race2, mi

***Gender
	gen sex2 = .
		replace sex2 = 0 if sex == 1
		replace sex2 = 1 if sex == 2

	label define sex2 0 "Male" 1 "Female"
		label values sex2 sex2

	tab sex sex2, mi

***Education
	gen educ2 = .
		replace educ2 = 1 if educ < 73
		replace educ2 = 2 if educ == 73
		replace educ2 = 3 if educ >= 81 & educ < 111
		replace educ2 = 4 if educ >= 111

	label define educ2 1 "Less than HS diploma" 2 "HS diploma" 3 "Some college, no BA degree" 4 "BA degree or higher"
		label values educ2 educ2

	tab educ educ2, mi

***Citizenship (question is asked only of foreign born people; NIU respondents are citizens)
	gen citizen2 = .
		replace citizen2 = 1 if citizen ~= 3
		replace citizen2 = 0 if citizen == 3

	label variable citizen2 "Citizenship status recode"
	label define citizen2 1 "Is a citizen" 0 "Is not a citizen"
		label values citizen2 citizen2

	tab citizen citizen2, mi

***Disability status
	gen any_disable = . /*all missing in 2006*/
		replace any_disable = 0 if diffany < 2
		replace any_disable = 1 if diffany == 2

	label variable any_disable "Has any kind of disability"
	label define any_disable 0 "No disability" 1 "Has a disability"
		label values any_disable any_disable

	tab diffany any_disable, mi
		tab year if any_disable == .

***Veteran status	
	gen veteran = .
		replace veteran = 0 if vetstat ~= 2
		replace veteran = 1 if vetstat == 2

	label variable veteran "Veteran status"
	label define veteran 0 "Not a veteran" 1 "Veteran"
		label values veteran veteran

	tab vetstat veteran, mi

***Migration status
	gen migrate_1yr = .
		replace migrate_1yr = 0
		replace migrate_1yr = 1 if migrate1 >= 4

	label variable migrate_1yr "Migration over last year"
	label define migrate_1yr 0 "No move or moved within county" 1 "Moved across counties, states, or abroad"
		label values migrate_1yr migrate_1yr

	tab migrate1 migrate_1yr, mi
	
***Industry current - Recodes ind to missing for unemployed people
	gen ind2 = 0 if ind == 0 | ind > 9590
		replace ind2 = 1 if ind >= 0170 & ind <=0490
		replace ind2 = 2 if ind == 0770
		replace ind2 = 3 if ind >= 1070 & ind <=3990
		replace ind2 = 4 if (ind >= 4070 & ind <=4590) | (ind >= 6070 & ind <=6390) | (ind >= 0570 & ind <= 0690)
		replace ind2 = 5 if ind >= 4670 & ind <=5790
		replace ind2 = 6 if ind >= 6470 & ind <=6780
		replace ind2 = 7 if ind >= 6870 & ind <=7190
		replace ind2 = 8 if ind >= 7270 & ind <=7790
		replace ind2 = 9 if ind >= 7860 & ind <=8470
		replace ind2 = 10 if ind >= 8560 & ind <=8690
		replace ind2 = 11 if ind >= 8770 & ind <=9290
		replace ind2 = 12 if ind >= 9370 & ind <=9590
		replace ind2 = 0 if inlist(empstat, 00, 21, 22, 32, 43, 36)

	label define ind2 0 "No industry or Armed Forces" 1 "Agriculture and Mining" 2 "Construction" 3 "Manufacturing" 4 "Wholesale Trade, Transportation, and Utilities" 5 "Retail Trade"
		label define ind2 6 "Information" 7 "FIRE" 8 "Professional and Business Services" 9 "Education, Healthcare, and Social Assistance" 10 "Arts, Recreation, Food Services, Accommodation", add
		label define ind2 11 "Other Services" 12 "Public Administration", add
		label values ind2 ind2

	codebook ind ind2
		tab ind2, mi
		tab ind if ind2 == 0, mi
		tab ind if ind2 == 4, mi
		tab empstat if ind2 == 0, mi

***Occupation current - Recodes occ to missing for unemployed people
	gen occ_2 = 0 if occ == 0000 | occ > 9750
		replace occ_2 = 1 if occ >= 0010 & occ <= 0950
		replace occ_2 = 2 if occ >= 1000 & occ <= 1965
		replace occ_2 = 3 if occ >= 2000 & occ <= 2960
		replace occ_2 = 4 if occ >= 3000 & occ <= 3540
		replace occ_2 = 5 if occ >= 3600 & occ <= 3655
		replace occ_2 = 6 if occ >= 3700 & occ <= 3955
		replace occ_2 = 7 if occ >= 4000 & occ <= 4250
		replace occ_2 = 8 if occ >= 4300 & occ <= 4650
		replace occ_2 = 9 if occ >= 4700 & occ <= 4965
		replace occ_2 = 10 if occ >= 5000 & occ <= 5940
		replace occ_2 = 11 if occ >= 6005 & occ <= 7630
		replace occ_2 = 12 if occ >= 7700 & occ <= 9750
		replace occ_2 = 0 if inlist(empstat, 00, 21, 22, 32, 43, 36)

label define occ_2 0 "No occupation or Armed Forces" 1 "Management, Business, and Financial" 2 "Physical and Social Sciences" 3 "Social Services, Education, Legal, and Arts" 4 "Healthcare Professions" 5 "Healthcare Support Services" 6 "Protective Services" 7 "Food Preparation, Janitorial, and Housekeeping Services" 
	label define occ_2 8 "Personal Care and Services" 9 "Sales" 10 "Office Administration" 11 "Natural Resources, Construction, Maintenance" 12 "Production, Transportation, Materials Moving", add
	label values occ_2 occ_2

codebook occ occ_2
	tab occ_2, mi
	tab occ_2 if occ > 9750, mi
	tab occ if occ_2 == 0, mi
	tab empstat if occ_2 == 0, mi
	

**Employment Experience in Previous Year
***Number of weeks worked last year
	gen wkswork_ly = .
		replace wkswork_ly = 1 if wkswork1 == 0 /*includes NILF last year*/
		replace wkswork_ly = 2 if wkswork1 > 0 & wkswork1 < 4
		replace wkswork_ly = 3 if wkswork1 >= 4 & wkswork1 < 13
		replace wkswork_ly = 4 if wkswork1 >= 13 & wkswork1 < 26
		replace wkswork_ly = 5 if wkswork1 >= 26 & wkswork1 < 39
		replace wkswork_ly = 6 if wkswork1 >= 39 /*worked 3/4 of year or more*/
		replace wkswork_ly = 1 if workly == 1 /*includes unemployed last year*/

	label variable wkswork_ly "Number weeks worked last year"
	label define wkswork_ly 1 "Zero weeks" 2 "1 to 3 weeks" 3 "4 to 12 weeks" 4 "13 to 25 weeks" 5 "26 to 38 weeks" 6 "39 weeks or more" 
		label values wkswork_ly wkswork_ly

	tab wkswork1 wkswork_ly, mi
	tab wkswork_ly if workly == 0, mi /*NILF*/
	tab wkswork_ly if workly == 1, mi /*Did not work in last year*/
	
***Condensed Number of weeks worked last year
	gen wkswork_ly2 = .
		replace wkswork_ly2 = 1 if wkswork1 == 0 /*includes NILF last year*/
		replace wkswork_ly2 = 2 if wkswork1 > 0 & wkswork1 < 13
		replace wkswork_ly2 = 3 if wkswork1 >= 13 & wkswork1 < 26
		replace wkswork_ly2 = 4 if wkswork1 >= 26 /*worked half the year or more*/
		replace wkswork_ly2 = 1 if workly == 1 /*includes unemployed last year*/

	label variable wkswork_ly2 "Condensed Number weeks worked last year"
	label define wkswork_ly2 1 "Zero weeks" 2 "1 to 12 weeks" 3 "13 to 25 weeks" 4 "26 weeks or more" 
		label values wkswork_ly2 wkswork_ly2

	tab wkswork1 wkswork_ly2, mi
	tab wkswork_ly2 if workly == 0, mi /*NILF*/
	tab wkswork_ly2 if workly == 1, mi /*Did not work in last year*/

***Number of hours worked per week last year
	gen uhrsworkly2 = .
		replace uhrsworkly2 = 1 if uhrsworkly == 999 /*includes NILF last year*/
		replace uhrsworkly2 = 2 if uhrsworkly < 10
		replace uhrsworkly2 = 3 if uhrsworkly >= 10 & uhrsworkly < 20
		replace uhrsworkly2 = 4 if uhrsworkly >= 20 & uhrsworkly < 30
		replace uhrsworkly2 = 5 if uhrsworkly >= 30 & uhrsworkly < 40
		replace uhrsworkly2 = 6 if uhrsworkly >= 40 & uhrsworkly < 999
		replace uhrsworkly2 = 1 if workly == 1 /*includes unemployed last year*/

	label variable uhrsworkly2 "Usual weekly hours worked last year"
	label define uhrsworkly2 1 "Zero hours a week" 2 "1 to 9 hours a week" 3 "10 to 19 hours a week" 4 "20 to 29 hours a week" 5 "30 to 39 hours a week" 6 "40 hours or more a week"
		label values uhrsworkly2 uhrsworkly2

	codebook uhrsworkly uhrsworkly2
		tab uhrsworkly if uhrsworkly2 == . , mi
		tab uhrsworkly2 if workly == 0, mi
		tab uhrsworkly2 if workly ==1, mi
		
***Condensed Number of hours worked per week last year
	gen uhrsworkly3 = .
		replace uhrsworkly3 = 1 if uhrsworkly == 999 /*includes NILF last year*/
		replace uhrsworkly3 = 2 if uhrsworkly < 20
		replace uhrsworkly3 = 3 if uhrsworkly >= 20 & uhrsworkly < 35
		replace uhrsworkly3 = 4 if uhrsworkly >= 35 & uhrsworkly < 999
		replace uhrsworkly3 = 1 if workly == 1 /*includes unemployed last year*/

	label variable uhrsworkly3 "Condensed Usual weekly hours worked last year"
	label define uhrsworkly3 1 "Zero hours a week" 2 "1 to 19 hours a week" 3 "20 to 34 hours a week" 4 "35 hours or more a week"
		label values uhrsworkly3 uhrsworkly3

	codebook uhrsworkly uhrsworkly3
		tab uhrsworkly if uhrsworkly3 == . , mi
		tab uhrsworkly3 if workly == 0, mi
		tab uhrsworkly3 if workly ==1, mi		

***Worked full-time/full-year last year
	gen ftfy_ly = .
	replace ftfy_ly = 0
	replace ftfy_ly = 1 if wkswork1 >= 50 & uhrsworkly >= 35 & uhrsworkly < 999 & workly == 2
	
	label variable ftfy_ly "Worked full-time full-year last year"
	label define ftfy_ly 0 "Did not work full time full year last year" 1 "Worked full time full year last year"
	label values ftfy_ly ftfy_ly
	
	tab ftfy_ly, mi
	tab ftfy_ly if uhrsworkly < 35, mi
	tab ftfy_ly if wkswork1 < 50, mi
	tab ftfy_ly if workly == 0, mi
	tab ftfy_ly if workly ==1, mi
		
***Number of employers last year
	gen num_employers_ly = .
		replace num_employers_ly = 0 if numemps == 0 /*includes NILF last year*/
		replace num_employers_ly = 1 if numemps == 1
		replace num_employers_ly = 2 if numemps == 2
		replace num_employers_ly = 3 if numemps == 3 /*3 or more employers*/
		replace num_employers_ly = 0 if workly == 1 /*includes unemployed last year*/

	label variable num_employers_ly "Number of employers last year"
	tab numemps num_employers_ly, mi
	tab num_employers_ly if workly == 0, mi
	tab num_employers_ly if workly == 1, mi
	
***Condensed Number of workers last year
	gen num_employers_ly3 = .
		replace num_employers_ly3 = 0 if numemps == 0 /*includes NILF last year*/
		replace num_employers_ly3 = 1 if numemps == 1
		replace num_employers_ly3 = 2 if numemps > 1 /*2 or more employers*/
		replace num_employers_ly3 = 0 if workly == 1 /*includes unemployed last year*/
		
	label variable num_employers_ly3 "Condensed Number of employers last year"
	tab numemps num_employers_ly3, mi
	tab num_employers_ly3 if workly == 0, mi
	tab num_employers_ly3 if workly == 1, mi	

***Occupation last year
	gen occly_2 = 0 if occly == 0000 | occly > 9750 /*Gives no occupation in last year for NILF and Armed Forces*/
		replace occly_2 = 1 if occly >= 0010 & occly <= 0950
		replace occly_2 = 2 if occly >= 1000 & occly <= 1965
		replace occly_2 = 3 if occly >= 2000 & occly <= 2960
		replace occly_2 = 4 if occly >= 3000 & occly <= 3540
		replace occly_2 = 5 if occly >= 3600 & occly <= 3655
		replace occly_2 = 6 if occly >= 3700 & occly <= 3955
		replace occly_2 = 7 if occly >= 4000 & occly <= 4250
		replace occly_2 = 8 if occly >= 4300 & occly <= 4650
		replace occly_2 = 9 if occly >= 4700 & occly <= 4965
		replace occly_2 = 10 if occly >= 5000 & occly <= 5940
		replace occly_2 = 11 if occly >= 6005 & occly <= 7630
		replace occly_2 = 12 if occly >= 7700 & occly <= 9750
		replace occly_2 = 0 if workly == 1 /*Gives no occupation in last year for unemployed*/

label variable occly_2 "Ocupation last year, civilian only"
label define occly_2 0 "No Occupation or Armed Forces" 1 "Management, Business, and Financial" 2 "Physical and Social Sciences" 3 "Social Services, Education, Legal, and Arts" 4 "Healthcare Professions" 5 "Healthcare Support Services" 6 "Protective Services" 7 "Food Preparation, Janitorial, and Housekeeping Services" 
	label define occly_2 8 "Personal Care and Services" 9 "Sales" 10 "Office Administration" 11 "Natural Resources, Construction, Maintenance" 12 "Production, Transportation, Materials Moving", add
	label values occly_2 occly_2

codebook occly occly_2
	tab occly_2 if occly > 9750, mi
	tab occly if occly_2 == 0, mi
	tab occly_2 if workly == 0, mi
	tab occly_2 if workly == 1, mi

***Class of worker last year
	gen sector_ly = .
		replace sector_ly = 1 if classwly == 14 /*se incorporated*/
		replace sector_ly = 2 if classwly == 13 /*se not incorporated*/
		replace sector_ly = 3 if classwly == 22
		replace sector_ly = 4 if inlist(classwly, 25, 27, 28)
		replace sector_ly = 5 if classwly == 29 | classwly == 00 | workly == 1 /*includes unemployed, unpaid family worker, and NILF last year*/

	label variable sector_ly "Class of worker last year, civilian only"
	label define sector_ly 1 "Self-employed incorporated business" 2 "Self-employed non-incorporated business" 3 "Private wage and salary" 4 "Government" 5 "Unpaid family worker or unemployed"
		label values sector_ly sector_ly

	tab classwly sector_ly, mi
	tab sector_ly if workly == 1, mi

***Industry last year
gen indly2 = 0 if indly == 0 | indly > 9590 | workly == 1 /*Gives no industry in last year for NILF and Armed Forces*/
		replace indly2 = 1 if indly >= 0170 & indly <=0490
		replace indly2 = 2 if indly == 0770
		replace indly2 = 3 if indly >= 1070 & indly <=3990
		replace indly2 = 4 if (indly >= 4070 & indly <=4590) | (indly >= 6070 & indly <=6390) | (indly >= 0570 & indly <= 0690)
		replace indly2 = 5 if indly >= 4670 & indly <=5790
		replace indly2 = 6 if indly >= 6470 & indly <=6780
		replace indly2 = 7 if indly >= 6870 & indly <=7190
		replace indly2 = 8 if indly >= 7270 & indly <=7790
		replace indly2 = 9 if indly >= 7860 & indly <=8470
		replace indly2 = 10 if indly >= 8560 & indly <=8690
		replace indly2 = 11 if indly >= 8770 & indly <=9290
		replace indly2 = 12 if indly >= 9370 & indly <=9590
		replace indly2 = 0 if workly == 1 /*Gives no industry in last year for unemployed*/

	label variable indly2 "Industry in last year, civilian only"
	label define indly2 0 "No industry or Armed Forces" 1 "Agriculture and Mining" 2 "Construction" 3 "Manufacturing" 4 "Wholesale Trade, Transportation, and Utilities" 5 "Retail Trade"
		label define indly2 6 "Information" 7 "FIRE" 8 "Professional and Business Services" 9 "Education, Healthcare, and Social Assistance" 10 "Arts, Recreation, Food Services, Accommodation", add
		label define indly2 11 "Other Services" 12 "Public Administration", add
		label values indly2 indly2

	codebook indly indly2
		tab indly2, mi
		tab indly if indly2 == 0, mi
		tab indly if indly2 == 4, mi
		tab indly2 if workly == 0, mi
		tab indly2 if workly == 1, mi
	
***Covered by private health insurance in last year	
	gen groupown_ly = .
		replace groupown_ly = 0 if groupown < 2
		replace groupown_ly = 1 if groupown == 2
		replace groupown_ly = 0 if workly == 1

	label variable groupown_ly "Had employer based insurance in last year"
	label define groupown_ly 0 "No employer based insurance last year, including unemployed" 1 "Had employer based health insurance last year"
		label values groupown_ly groupown_ly

	tab groupown groupown_ly
	tab groupown_ly if workly ==0, mi
	tab groupown_ly if workly == 1, mi

*Annual total earnings in last year (wage and salary and self-employed only for persons worked last year, negative self-employed earnings set to 0)
	gen ann_earn = .
		replace ann_earn = incwage if inlist(sector_ly, 3, 4)
		replace ann_earn = incbus if inlist(sector_ly, 1, 2)
		replace ann_earn = 0 if ann_earn < 0
		replace ann_earn = 0 if sector_ly == 5 /*includes unemployed, unpaid family workers, and NILF*/
		
	label variable ann_earn "Annual earnings for employees and self-employed"
	tab ann_earn if workly == 0, mi /*workly - worked last year - NIU*/
		tab ann_earn if workly == 1, mi /*Did not work in last year*/
		tab ann_earn if incbus < 0, mi
		tab ann_earn if incwage == . & incbus == ., mi
		tab ann_earn if sector_ly == 5, mi
		codebook ann_earn

	summarize ann_earn, meanonly
	gen ann_earnC = round(ann_earn - `r(mean)', 1)
	label variable ann_earnC "Mean centered Annual earnings for employees and self-employed"
	
	codebook ann_earn ann_earnC
	
**Regional Characteristics - All in most recent year

***IMPORTANT: SORT DATA BY METFIPS BEFFORE THIS SECTION SO THE SECTION RUNS QUICKER
sort metarea_group

***Unemployment rate
	gen unemployed = . if empstat == 00 /*Excludes people not in universe for this question*/
		replace unemployed = 1 if inlist(empstat, 21, 22)
		replace unemployed = 0 if inlist(empstat, 10, 12)

	label variable unemployed "Civilian unemployment status"
	label define unemployed 0 "Employed civilian" 1 "Unemployed civilian"
	label values unemployed unemployed

	tab empstat unemployed, mi

	gen tot_unemployed = .
	gen prop_unemployed = .
	gen percent_unemployed = .
	gen percent_unemployedR = .

	summarize metarea_group, meanonly
	forvalues i = 1/`r(max)' {
		quietly total unemployed [pw=wtsupp] if metarea_group == `i'
			matrix x = e(b)
			replace tot_unemployed = x[1,1] if metarea_group == `i'
		quietly proportion unemployed [pw=wtsupp] if metarea_group == `i'
			matrix y = e(b)
			replace prop_unemployed = y[1,2] if metarea_group == `i' /*1,2 is the 1 value of a 0/1 variable*/
			replace percent_unemployed = (prop_unemployed *100) if metarea_group == `i'
}
	replace prop_unemployed = 0.00 if prop_unemployed == . & (metfips == 23580 | metfips == 28740)
	replace percent_unemployed = 0.00 if percent_unemployed == . &(metfips == 23580 | metfips == 28740)
	replace percent_unemployedR = round(percent_unemployed, 0.1)
	
	summarize percent_unemployed if tag_metfips == 1, meanonly
	gen percent_unemployedC = round(percent_unemployed - `r(mean)', 0.1)
	label variable percent_unemployedC "Mean centered metro unemployment rate"
	
	codebook tot_unemployed prop_unemployed percent_unemployedR 
	codebook percent_unemployedR if tag_metfips == 1
	codebook percent_unemployedC
	list metfips tot_unemployed percent_unemployedR if tot_unemployed ~= . & prop_unemployed == . /*Number, metfips, and tot unemployed of metros with 1 or 0 for prop or 100% or 0% of value*/
	
***Percent minority
	gen race2_dummy = .
		replace race2_dummy = 0 if race2 ~=.
		replace race2_dummy = 1 if race2 > 1 & race2 < .
		label variable race2_dummy "Race in two categories, 1 equals nonwhite"
	
	tab race2 race2_dummy, mi
	
	gen tot_nonwhite = .
	gen prop_nonwhite = .
	gen percent_nonwhite = .
	gen percent_nonwhiteR = .

	summarize metarea_group, meanonly
	forvalues i = 1/`r(max)' {
		quietly total race2_dummy [pw=wtsupp] if metarea_group == `i'
			matrix x = e(b)
			replace tot_nonwhite = x[1,1] if metarea_group == `i'
		quietly proportion race2_dummy [pw=wtsupp] if metarea_group == `i'
			matrix y = e(b)
			replace prop_nonwhite = y[1,2] if metarea_group == `i' /*1,2 is the 1 value of a 0/1 variable*/
			replace percent_nonwhite = (prop_nonwhite *100) if metarea_group == `i'
}
	replace prop_nonwhite = 0.00 if prop_nonwhite == . & metfips == 36140
	replace percent_nonwhite = 0.00 if percent_nonwhite == . & metfips == 36140
	replace percent_nonwhiteR = round(percent_nonwhite, 0.1)
	
	summarize percent_nonwhite if tag_metfips == 1, meanonly
	gen percent_nonwhiteC = round(percent_nonwhite - `r(mean)', 0.1)
	label variable percent_nonwhiteC "Mean centered metro nonwhite percent"

	codebook tot_nonwhite prop_nonwhite percent_nonwhiteR
	codebook percent_nonwhiteR if tag_metfips == 1
	codebook percent_nonwhiteC
	list metfips tot_nonwhite percent_nonwhiteR if tot_nonwhite ~= . & prop_nonwhite == . /*Metros with 1 or 0 for prop*/

***Percent BA or more
	gen educ2_dummy = . if age < 25 /*Excludes people under 25 years*/
		replace educ2_dummy = 0 if age >= 25 & educ2 ~=.
		replace educ2_dummy = 1 if age >= 25 & educ2 == 4
		label variable educ2_dummy "Education in two categories, 1 equals BA or more"
	
	tab educ2 educ2_dummy if age >= 25, mi
	
	gen tot_BAmore = .
	gen prop_BAmore = .
	gen percent_BAmore = .
	gen percent_BAmoreR = .

	summarize metarea_group, meanonly
	forvalues i = 1/`r(max)' {
		quietly total educ2_dummy [pw=wtsupp] if metarea_group == `i'
			matrix x = e(b)
			replace tot_BAmore = x[1,1] if metarea_group == `i'
		quietly proportion educ2_dummy [pw=wtsupp] if metarea_group == `i'
			matrix y = e(b)
			replace prop_BAmore = y[1,2] if metarea_group == `i' /*1,2 is the 1 value of a 0/1 variable*/
			replace percent_BAmore = (prop_BAmore *100) if metarea_group == `i'
		replace percent_BAmoreR = round(percent_BAmore, 0.1) if metarea_group == `i'
}
	summarize percent_BAmore if tag_metfips == 1, meanonly
	gen percent_BAmoreC = round(percent_BAmore - `r(mean)', 0.1)
	label variable percent_BAmoreC "Mean centered metro college educated percent"

	codebook tot_BAmore prop_BAmore percent_BAmoreR
	codebook percent_BAmoreR if tag_metfips == 1
	codebook percent_BAmoreC
	list metfips tot_BAmore percent_BAmoreR if tot_BAmore ~= . & prop_BAmore == . /*Metros with 1 or 0 for prop*/

***Percent citizen
	gen tot_citizen2 = .
	gen prop_citizen2 = .
	gen percent_citizen2 = .
	gen percent_citizen2R = .

	summarize metarea_group, meanonly
	forvalues i = 1/`r(max)' {
		quietly total citizen2 [pw=wtsupp] if metarea_group == `i'
			matrix x = e(b)
			replace tot_citizen2 = x[1,1] if metarea_group == `i'
		quietly proportion citizen2 [pw=wtsupp] if metarea_group == `i'
			matrix y = e(b)
			replace prop_citizen2 = y[1,2] if metarea_group == `i' /*1,2 is the 1 value of a 0/1 variable*/
			replace percent_citizen2 = (prop_citizen2 *100) if metarea_group == `i'
}
	replace prop_citizen2 = 1.00 if prop_citizen2 == . & (metfips == 10500 | metfips == 11020 | metfips == 11300 | metfips == 11340 | metfips == 12620 | metfips == 20740 | metfips == 24020 | metfips == 27780 | metfips == 30340 | metfips == 33140 | metfips == 36140 | metfips == 45460 | metfips == 44220 | metfips == 44100 | metfips == 40980 | metfips == 39820)
	replace percent_citizen2 = 100.00 if percent_citizen2 == . & (metfips == 10500 | metfips == 11020 | metfips == 11300 | metfips == 11340 | metfips == 12620 | metfips == 20740 | metfips == 24020 | metfips == 27780 | metfips == 30340 | metfips == 33140 | metfips == 36140 | metfips == 45460 | metfips == 44220 | metfips == 44100 | metfips == 40980 | metfips == 39820)
	replace percent_citizen2R = round(percent_citizen2, 0.1)
	
	summarize percent_citizen2 if tag_metfips == 1, meanonly
	gen percent_citizen2C = round(percent_citizen2 - `r(mean)', 0.1)
	label variable percent_citizen2C "Mean centered metro citizen percent"
	
	codebook tot_citizen2 prop_citizen2 percent_citizen2R
	codebook percent_citizen2R if tag_metfips == 1
	codebook percent_citizen2C
	list metfips tot_citizen2 percent_citizen2R if tot_citizen2 ~= . & prop_citizen2 == . /*Metros with 1 or 0 for prop*/

***Median income 	/*Only includes income for people who worked in the last year. With this restriction median income for metarea 1 is $25,000. Without the restriction, median income for metarea 1 is $0*/
	gen median_ann_earn = .
	gen median_ann_earnR = .
	summarize metarea_group, meanonly
	forvalues i = 1/`r(max)' {
	quietly _pctile ann_earn [pw=wtsupp] if metarea_group == `i' & sector_ly ~= 5, nq(2)
	replace median_ann_earn = `r(r1)' if metarea_group == `i'
	replace median_ann_earnR = round(median_ann_earn, 0.01) if metarea_group == `i'
	}
	summarize median_ann_earn if tag_metfips == 1, meanonly
	gen median_ann_earnC = round(median_ann_earn - `r(mean)', 1)
	label variable median_ann_earnC "Mean centered metro median annual earn"
	
	codebook median_ann_earnR
	codebook median_ann_earn if tag_metfips == 1
	codebook median_ann_earnC
	list metfips metarea median_ann_earnR if inlist(metfips, 17660, 19300, 24020, 27500, 36220) & tag_metfips == 1
	
***Median age 	/*Includes all people in the median*/
	gen median_age = .
	gen median_ageR = .
	summarize metarea_group, meanonly
	forvalues i = 1/`r(max)' {
	quietly _pctile age [pw=wtsupp] if metarea_group == `i', nq(2)
	replace median_age = `r(r1)' if metarea_group == `i'
	replace median_ageR = round(median_age, 1) if metarea_group == `i'
	}
	summarize median_age if tag_metfips == 1, meanonly
	gen median_ageC = round(median_age - `r(mean)', 1)
	label variable median_ageC "Mean centered metro median age"
	
	codebook median_ageR
	codebook median_ageR if tag_metfips == 1
	codebook median_ageC
	list metfips metarea median_ageR if inlist(metfips, 17660, 19300, 24020, 27500, 36220) & tag_metfips == 1

***Migration level	
	gen tot_migration = .
	gen prop_migration = .
	gen percent_migration = .
	gen percent_migrationR = .

	summarize metarea_group, meanonly
	forvalues i = 1/`r(max)' {
		quietly total migrate_1yr [pw=wtsupp] if metarea_group == `i'
			matrix x = e(b)
			replace tot_migration = x[1,1] if metarea_group == `i'
		quietly proportion migrate_1yr [pw=wtsupp] if metarea_group == `i'
			matrix y = e(b)
			replace prop_migration = y[1,2] if metarea_group == `i' /*1,2 is the 1 value of a 0/1 variable*/
			replace percent_migration = (prop_migration *100) if metarea_group == `i'
}
	replace prop_migration = 0.00 if prop_migration == . & (metfips == 11020 | metfips == 12020 | metfips == 20740 | metfips == 31340 | metfips == 34900 | metfips == 36140 | metfips == 46220 | metfips == 46660 | metfips == 47220 | metfips == 74500)
	replace percent_migration = 0.00 if percent_migration == . & (metfips == 11020 | metfips == 12020 | metfips == 20740 | metfips == 31340 | metfips == 34900 | metfips == 36140 | metfips == 46220 | metfips == 46660 | metfips == 47220 | metfips == 74500)
	replace percent_migrationR = round(percent_migration, 0.1)
	
	summarize percent_migration if tag_metfips == 1, meanonly
	gen percent_migrationC = round(percent_migration - `r(mean)', 0.1)
	label variable percent_migrationC "Mean centered metro migration percent"
	
	codebook tot_migration prop_migration percent_migrationR
	codebook percent_migrationR if tag_metfips == 1
	codebook percent_migrationC
	list metfips tot_migration percent_migrationR if tot_migration ~= . & prop_migration == . /*Metros with 1 or 0 for prop*/	
	
***Government workforce
	gen classwkr_dummy = .
	replace classwkr_dummy = 0 if inlist(empstat, 10, 12)
	replace classwkr_dummy = 1 if inlist(empstat, 10, 12) & inlist(classwkr, 25, 27, 28)
	label variable classwkr_dummy "Class of worker in two categories, 1 equals government workers"
	
	tab classwkr classwkr_dummy, mi
	
	gen tot_govworker = .
	gen prop_govworker = .
	gen percent_govworker = .
	gen percent_govworkerR = .

	summarize metarea_group, meanonly
	forvalues i = 1/`r(max)' {
		quietly total classwkr_dummy [pw=wtsupp] if metarea_group == `i'
			matrix x = e(b)
			replace tot_govworker = x[1,1] if metarea_group == `i'
		quietly proportion classwkr_dummy [pw=wtsupp] if metarea_group == `i'
			matrix y = e(b)
			replace prop_govworker = y[1,2] if metarea_group == `i' /*1,2 is the 1 value of a 0/1 variable*/
			replace percent_govworker = (prop_govworker *100) if metarea_group == `i'
		replace percent_govworkerR = round(percent_govworker, 0.1) if metarea_group == `i'	
}
	summarize percent_govworker if tag_metfips == 1, meanonly
	gen percent_govworkerC = round(percent_govworker - `r(mean)', 0.1)
	label variable percent_govworkerC "Mean centered metro government worker percent"

	codebook tot_govworker prop_govworker percent_govworkerR
	codebook percent_govworkerR if tag_metfips == 1
	codebook percent_govworkerC
	list metfips tot_govworker percent_govworkerR if tot_govworker ~= . & prop_govworker == . /*Metros with 1 or 0 for prop*/
	

*PRIMARY PREDICTORS - Regional Industrial Concentration and Diversity
**Regional Industry Percents

***Generate dummies based on industry variable
	tabulate ind2, gen(ind2_d)
	
	foreach x of varlist ind2_d1 - ind2_d13 {
	tab ind2 `x', mi
	}
	
***Generate regional industry percents
	foreach x of varlist ind2_d2 - ind2_d13 {
	gen tot_`x' = .
	gen prop_`x' = .
	gen percent_`x' = .
	gen percent_`x'R = .

	summarize metarea_group, meanonly
	forvalues i = 1/`r(max)' {
		quietly total `x' [pw=wtsupp] if inlist(empstat, 10, 12) & metarea_group == `i'
			matrix y = e(b)
			replace tot_`x' = y[1,1] if metarea_group == `i'
		quietly proportion `x' [pw=wtsupp] if inlist(empstat, 10, 12) & metarea_group == `i'
			matrix z = e(b)
			replace prop_`x' = z[1,2] if metarea_group == `i' /*1,2 is the 1 value of a 0/1 variable*/
			replace percent_`x' = (prop_`x' *100) if metarea_group == `i'
		replace prop_`x' = 0.00 if prop_`x' == . & metarea_group == `i'
		replace percent_`x' = 0.00 if percent_`x' == .  & metarea_group == `i'
		replace percent_`x'R = round(percent_`x', 0.1) if metarea_group == `i'
			}
	codebook tot_`x' prop_`x' percent_`x'R
	list metfips tot_`x' percent_`x'R if tot_`x' ~= . & prop_`x' == . /*Metros with 1 or 0 for prop*/
	}
	
	*label variable percent_ind2_d1 "Percent employed in No industry (unemployed) or Armed Forces"
	label variable percent_ind2_d2 "Percent employed in Agriculture and Mining"
	label variable percent_ind2_d3 "Percent employed in Construction"
	label variable percent_ind2_d4 "Percent employed in Manufacturing"
	label variable percent_ind2_d5 "Percent employed in Wholesale Trade, Transportation, and Utilities"
	label variable percent_ind2_d6 "Percent employed in Retail Trade"
	label variable percent_ind2_d7 "Percent employed in Information"
	label variable percent_ind2_d8 "Percent employed in FIRE"
	label variable percent_ind2_d9 "Percent employed in Professional and Business Services"
	label variable percent_ind2_d10 "Percent employed in Education, Healthcare, and Social Assistance"
	label variable percent_ind2_d11 "Percent employed in Arts, Recreation, Food Services, Accommodation"
	label variable percent_ind2_d12 "Percent employed in Other Services"
	label variable percent_ind2_d13 "Percent employed in Public Administration"
	
***Generate national industry percents
	foreach x of varlist ind2_d2 - ind2_d13 {
	gen tot_nat_`x' = .
	gen prop_nat_`x' = .
	gen percent_nat_`x' = .
	gen percent_nat_`x'R = .

	quietly total `x' [pw=wtsupp] if inlist(empstat, 10, 12)
		matrix y = e(b)
		replace tot_nat_`x' = y[1,1] 
	quietly proportion `x' [pw=wtsupp] if inlist(empstat, 10, 12)
		matrix z = e(b)
		replace prop_nat_`x' = z[1,2] /*1,2 is the 1 value of a 0/1 variable*/
		replace percent_nat_`x' = (prop_nat_`x' *100) 
	replace percent_nat_`x'R = round(percent_nat_`x', 0.1)
	codebook tot_nat_`x' prop_nat_`x' percent_nat_`x'R
	
	}
	
	*label variable percent_nat_ind2_d1 "National percent employed in No industry (unemployed) or Armed Forces"
	label variable percent_nat_ind2_d2 "National percent employed in Agriculture and Mining"
	label variable percent_nat_ind2_d3 "National percent employed in Construction"
	label variable percent_nat_ind2_d4 "National percent employed in Manufacturing"
	label variable percent_nat_ind2_d5 "National percent employed in Wholesale Trade, Transportation, and Utilities"
	label variable percent_nat_ind2_d6 "National percent employed in Retail Trade"
	label variable percent_nat_ind2_d7 "National percent employed in Information"
	label variable percent_nat_ind2_d8 "National percent employed in FIRE"
	label variable percent_nat_ind2_d9 "National percent employed in Professional and Business Services"
	label variable percent_nat_ind2_d10 "National percent employed in Education, Healthcare, and Social Assistance"
	label variable percent_nat_ind2_d11 "National percent employed in Arts, Recreation, Food Services, Accommodation"
	label variable percent_nat_ind2_d12 "National percent employed in Other Services"
	label variable percent_nat_ind2_d13 "National percent employed in Public Administration"

***Generate regional industry location quotients
	foreach x of varlist ind2_d2 - ind2_d13 {
		gen LQ_`x' = percent_`x' / percent_nat_`x'
		gen LQ_`x'R = round(LQ_`x', 0.01)
		codebook LQ_`x'R	
	}
	
	*label variable LQ_ind2_d1 "Location Quotient for No industry (unemployed) or Armed Forces"
	label variable LQ_ind2_d2R "Location Quotient for Agriculture and Mining"
	label variable LQ_ind2_d3R "Location Quotient for Construction"
	label variable LQ_ind2_d4R "Location Quotient for Manufacturing"
	label variable LQ_ind2_d5R "Location Quotient for Wholesale Trade, Transportation, and Utilities"
	label variable LQ_ind2_d6R "Location Quotient for Retail Trade"
	label variable LQ_ind2_d7R "Location Quotient for Information"
	label variable LQ_ind2_d8R "Location Quotient for FIRE"
	label variable LQ_ind2_d9R "Location Quotient for Professional and Business Services"
	label variable LQ_ind2_d10R "Location Quotient for Education, Healthcare, and Social Assistance"
	label variable LQ_ind2_d11R "Location Quotient for Arts, Recreation, Food Services, Accommodation"
	label variable LQ_ind2_d12R "Location Quotient for Other Services"
	label variable LQ_ind2_d13R "Location Quotient for Public Administration"
	
***Generate industrial diversity variable (number of LQs above 1.25 or 1.50)
gen count_LQ125 = 0
foreach x of varlist LQ_ind2_d2 LQ_ind2_d3 LQ_ind2_d4 LQ_ind2_d5 LQ_ind2_d6 LQ_ind2_d7 LQ_ind2_d8 LQ_ind2_d9 LQ_ind2_d10 LQ_ind2_d11 LQ_ind2_d12 LQ_ind2_d13 {
replace count_LQ125 = count_LQ125 + (`x' >= 1.25)
}
codebook count_LQ125
list metfips metarea count_LQ125 if inlist(metfips, 17660, 19300, 24020, 27500, 36220) & tag_metfips == 1

gen count_LQ125v2 = count_LQ125
replace count_LQ125v2 = 3 if count_LQ125 > 2
codebook count_LQ125v2
tab count_LQ125 count_LQ125v2, mi

gen count_LQ150 = 0
foreach x of varlist LQ_ind2_d2 LQ_ind2_d3 LQ_ind2_d4 LQ_ind2_d5 LQ_ind2_d6 LQ_ind2_d7 LQ_ind2_d8 LQ_ind2_d9 LQ_ind2_d10 LQ_ind2_d11 LQ_ind2_d12 LQ_ind2_d13 {
replace count_LQ150 = count_LQ150 + (`x' >= 1.50)
}
codebook count_LQ150
list metfips metarea count_LQ150 if inlist(metfips, 17660, 19300, 24020, 27500, 36220) & tag_metfips == 1

gen count_LQ150v2 = count_LQ150
replace count_LQ150v2 = 3 if count_LQ150 > 2
codebook count_LQ150v2
tab count_LQ150 count_LQ150v2, mi

***Generate industrial dissimilarity (number of LQs above 1.25 or 1.50 from the four major groups)
gen LQ_goods125 = 0
replace LQ_goods125 = 1 if LQ_ind2_d2 >= 1.25 | LQ_ind2_d3 >= 1.25 | LQ_ind2_d4 >= 1.25
tab LQ_goods125, mi

gen LQ_trade125 = 0
replace LQ_trade125 = 1 if LQ_ind2_d5 >= 1.25 | LQ_ind2_d6 >= 1.25
tab LQ_trade125, mi

gen LQ_highservices125 = 0
replace LQ_highservices125 = 1 if LQ_ind2_d7 >= 1.25 | LQ_ind2_d8 >= 1.25 | LQ_ind2_d9 >= 1.25 | LQ_ind2_d10 >= 1.25 | LQ_ind2_d13 >= 1.25
tab LQ_highservices125, mi

gen LQ_lowservices125 = 0
replace LQ_lowservices125 = 1 if LQ_ind2_d11 >= 1.25 | LQ_ind2_d12 >= 1.25
tab LQ_lowservices125, mi

gen count_dissim_LQ125 = 0
foreach x of varlist LQ_goods125-LQ_lowservices125 {
replace count_dissim_LQ125 = count_dissim_LQ125 + (`x' == 1)
}

gen count_dissim_LQ125D = .
replace count_dissim_LQ125D = 0 if count_dissim_LQ125 ~= .
replace count_dissim_LQ125D = 1 if count_dissim_LQ125 > 1 & count_dissim_LQ125 ~= .

codebook count_dissim_LQ125
tab count_dissim_LQ125 count_dissim_LQ125D, mi
list metfips metarea count_dissim_LQ125 if inlist(metfips, 17660, 19300, 24020, 27500, 36220) & tag_metfips == 1


gen LQ_goods150 = 0
replace LQ_goods150 = 1 if LQ_ind2_d2 >= 1.50 | LQ_ind2_d3 >= 1.50 | LQ_ind2_d4 >= 1.50
tab LQ_goods150, mi

gen LQ_trade150 = 0
replace LQ_trade150 = 1 if LQ_ind2_d5 >= 1.50 | LQ_ind2_d6 >= 1.50
tab LQ_trade150, mi

gen LQ_highservices150 = 0
replace LQ_highservices150 = 1 if LQ_ind2_d7 >= 1.50 | LQ_ind2_d8 >= 1.50 | LQ_ind2_d9 >= 1.50 | LQ_ind2_d10 >= 1.50 | LQ_ind2_d13 >= 1.50
tab LQ_highservices150, mi

gen LQ_lowservices150 = 0
replace LQ_lowservices150 = 1 if LQ_ind2_d11 >= 1.50 | LQ_ind2_d12 >= 1.50
tab LQ_lowservices150, mi

gen count_dissim_LQ150 = 0
foreach x of varlist LQ_goods150-LQ_lowservices150 {
replace count_dissim_LQ150 = count_dissim_LQ150 + (`x' == 1)
}

gen count_dissim_LQ150D = .
replace count_dissim_LQ150D = 0 if count_dissim_LQ150 ~= .
replace count_dissim_LQ150D = 1 if count_dissim_LQ150 > 1 & count_dissim_LQ150 ~= .

codebook count_dissim_LQ150
tab count_dissim_LQ150 count_dissim_LQ150D, mi
list metfips metarea count_dissim_LQ150 if inlist(metfips, 17660, 19300, 24020, 27500, 36220) & tag_metfips == 1

***Generate primary industry concentration variable (highest LQ)	
egen highest_LQvalue = rowmax(LQ_ind2_d2 LQ_ind2_d3 LQ_ind2_d4 LQ_ind2_d5 LQ_ind2_d6 LQ_ind2_d7 LQ_ind2_d8 LQ_ind2_d9 LQ_ind2_d10 LQ_ind2_d11 LQ_ind2_d12 LQ_ind2_d13)
label variable highest_LQvalue "Value of the largest industry LQ"
codebook highest_LQvalue
list metfips metarea highest_LQvalue if inlist(metfips, 17660, 19300, 24020, 27500, 36220) & tag_metfips == 1

gen str20 highest_LQname="" // create string variable to store matched results
label variable highest_LQname "Name of highest industry LQ"

// find variables with the same value as maxval and add them to maxvar
foreach var of varlist LQ_ind2_d2 LQ_ind2_d3 LQ_ind2_d4 LQ_ind2_d5 LQ_ind2_d6 LQ_ind2_d7 LQ_ind2_d8 LQ_ind2_d9 LQ_ind2_d10 LQ_ind2_d11 LQ_ind2_d12 LQ_ind2_d13   {
    replace highest_LQname = highest_LQname + " " + "`var'" if highest_LQvalue == `var'
}
codebook highest_LQname
list metfips metarea highest_LQname highest_LQvalue if inlist(metfips, 17660, 19300, 24020, 27500, 36220) & tag_metfips == 1

tempvar highest_LQname_trim
gen `highest_LQname_trim' = strltrim(highest_LQname)	
gen highest_LQname2 = " "
replace highest_LQname2 = "Agriculture and Mining" if `highest_LQname_trim' == "LQ_ind2_d2"
replace highest_LQname2 = "Construction" if `highest_LQname_trim' == "LQ_ind2_d3"  
replace highest_LQname2 = "Manufacturing" if `highest_LQname_trim' == "LQ_ind2_d4"  
replace highest_LQname2 = "Wholesale Trade, Transportation, and Utilities"  if `highest_LQname_trim' == "LQ_ind2_d5"  
replace highest_LQname2 = "Retail Trade" if `highest_LQname_trim' == "LQ_ind2_d6"  
replace highest_LQname2 = "Information" if `highest_LQname_trim' == "LQ_ind2_d7" 
replace highest_LQname2 = "FIRE" if `highest_LQname_trim' == "LQ_ind2_d8" 
replace highest_LQname2 = "Professional and Business Services" if `highest_LQname_trim' == "LQ_ind2_d9" 
replace highest_LQname2 = "Education, Healthcare, and Social Assistance" if `highest_LQname_trim' == "LQ_ind2_d10" 
replace highest_LQname2 = "Arts, Recreation, Food Services, Accommodation" if `highest_LQname_trim' == "LQ_ind2_d11" 
replace highest_LQname2 = "Other Services" if `highest_LQname_trim' == "LQ_ind2_d12" 
replace highest_LQname2 = "Public Administration" if `highest_LQname_trim' == "LQ_ind2_d13" 

gen highest_LQname_group = .
replace highest_LQname_group = 1 if `highest_LQname_trim' == "LQ_ind2_d2"
replace highest_LQname_group = 2 if `highest_LQname_trim' == "LQ_ind2_d3"  
replace highest_LQname_group = 3 if `highest_LQname_trim' == "LQ_ind2_d4"  
replace highest_LQname_group = 4  if `highest_LQname_trim' == "LQ_ind2_d5"  
replace highest_LQname_group = 5 if `highest_LQname_trim' == "LQ_ind2_d6"  
replace highest_LQname_group = 6 if `highest_LQname_trim' == "LQ_ind2_d7" 
replace highest_LQname_group = 7 if `highest_LQname_trim' == "LQ_ind2_d8" 
replace highest_LQname_group = 8 if `highest_LQname_trim' == "LQ_ind2_d9" 
replace highest_LQname_group = 9 if `highest_LQname_trim' == "LQ_ind2_d10" 
replace highest_LQname_group = 10 if `highest_LQname_trim' == "LQ_ind2_d11" 
replace highest_LQname_group = 11 if `highest_LQname_trim' == "LQ_ind2_d12" 
replace highest_LQname_group = 12 if `highest_LQname_trim' == "LQ_ind2_d13" 

codebook highest_LQname highest_LQname2 highest_LQname_group
tab highest_LQname, mi
tab highest_LQname2, mi
tab highest_LQname_group, mi



*PRIMARY PREDICTORS - Regional Occupational Concentration and Diversity
**Regional Occupation Percents
set more off
sort metarea_group

***Generate dummies based on occupation variable
	tabulate occ_2, gen(occ_2_d)
	
	foreach x of varlist occ_2_d1 - occ_2_d13 {
	tab occ_2 `x', mi
	}
	
***Generate regional occupation percents
	foreach x of varlist occ_2_d2 - occ_2_d13 {
	gen tot_`x' = .
	gen prop_`x' = .
	gen percent_`x' = .
	gen percent_`x'R = .

	summarize metarea_group, meanonly
	forvalues i = 1/`r(max)' {
		quietly total `x' [pw=wtsupp] if inlist(empstat, 10, 12) & metarea_group == `i'
			matrix y = e(b)
			replace tot_`x' = y[1,1] if metarea_group == `i'
		quietly proportion `x' [pw=wtsupp] if inlist(empstat, 10, 12) & metarea_group == `i'
			matrix z = e(b)
			replace prop_`x' = z[1,2] if metarea_group == `i' /*1,2 is the 1 value of a 0/1 variable*/
			replace percent_`x' = (prop_`x' *100) if metarea_group == `i'
		replace prop_`x' = 0.00 if prop_`x' == . & metarea_group == `i'
		replace percent_`x' = 0.00 if percent_`x' == .  & metarea_group == `i'
		replace percent_`x'R = round(percent_`x', 0.1) if metarea_group == `i'
			}
	codebook tot_`x' prop_`x' percent_`x'R
	list metfips tot_`x' percent_`x'R if tot_`x' ~= . & prop_`x' == . /*Metros with 1 or 0 for prop*/
	}
	
	*label variable percent_occ_2_d1 "Percent employed in No occupation (unemployed) or Armed Forces"
	label variable percent_occ_2_d2 "Percent employed in Management, Business, and Financial"
	label variable percent_occ_2_d3 "Percent employed in Physical and Social Sciences"
	label variable percent_occ_2_d4 "Percent employed in Social Services, Education, Legal, and Arts"
	label variable percent_occ_2_d5 "Percent employed in Healthcare Professions"
	label variable percent_occ_2_d6 "Percent employed in Healthcare Support Services"
	label variable percent_occ_2_d7 "Percent employed in Protective Services"
	label variable percent_occ_2_d8 "Percent employed in Food Preparation, Janitorial, and Housekeeping Services"
	label variable percent_occ_2_d9 "Percent employed in Personal Care and Services"
	label variable percent_occ_2_d10 "Percent employed in Sales"
	label variable percent_occ_2_d11 "Percent employed in Office Administration"
	label variable percent_occ_2_d12 "Percent employed in Natural Resources, Construction, Maintenance"
	label variable percent_occ_2_d13 "Percent employed in Production, Transportation, Materials Moving"

	
***Generate national occupation percents
	foreach x of varlist occ_2_d2 - occ_2_d13 {
	gen tot_nat_`x' = .
	gen prop_nat_`x' = .
	gen percent_nat_`x' = .
	gen percent_nat_`x'R = .

	quietly total `x' [pw=wtsupp] if inlist(empstat, 10, 12)
		matrix y = e(b)
		replace tot_nat_`x' = y[1,1] 
	quietly proportion `x' [pw=wtsupp] if inlist(empstat, 10, 12)
		matrix z = e(b)
		replace prop_nat_`x' = z[1,2] /*1,2 is the 1 value of a 0/1 variable*/
		replace percent_nat_`x' = (prop_nat_`x' *100) 
	replace percent_nat_`x'R = round(percent_nat_`x', 0.1)
	codebook tot_nat_`x' prop_nat_`x' percent_nat_`x'R
	
	}
	
	*label variable percent_nat_occ_2_d1 "National percent employed in No occupation (unemployed) or Armed Forces"
	label variable percent_nat_occ_2_d2 "National percent employed in Management, Business, and Financial"
	label variable percent_nat_occ_2_d3 "National percent employed in Physical and Social Sciences"
	label variable percent_nat_occ_2_d4 "National percent employed in Social Services, Education, Legal, and Arts"
	label variable percent_nat_occ_2_d5 "National percent employed in Healthcare Professions"
	label variable percent_nat_occ_2_d6 "National percent employed in Healthcare Support Services"
	label variable percent_nat_occ_2_d7 "National percent employed in Protective Services"
	label variable percent_nat_occ_2_d8 "National percent employed in Food Preparation, Janitorial, and Housekeeping Services"
	label variable percent_nat_occ_2_d9 "National percent employed in Personal Care and Services"
	label variable percent_nat_occ_2_d10 "National percent employed in Sales"
	label variable percent_nat_occ_2_d11 "National percent employed in Office Administration"
	label variable percent_nat_occ_2_d12 "National percent employed in Natural Resources, Construction, Maintenance"
	label variable percent_nat_occ_2_d13 "National percent employed in Production, Transportation, Materials Moving"

***Generate regional occupation location quotients
	foreach x of varlist occ_2_d2 - occ_2_d13 {
		gen LQ_`x' = percent_`x' / percent_nat_`x'
		gen LQ_`x'R = round(LQ_`x', 0.01)
		codebook LQ_`x'R	
	}
	
	*label variable LQ_occ_2_d1 "Location Quotient for No occupation (unemployed) or Armed Forces"
	label variable LQ_occ_2_d2R "Location Quotient for Management, Business, and Financial"
	label variable LQ_occ_2_d3R "Location Quotient for Physical and Social Sciences"
	label variable LQ_occ_2_d4R "Location Quotient for Social Services, Education, Legal, and Arts"
	label variable LQ_occ_2_d5R "Location Quotient for Healthcare Professions"
	label variable LQ_occ_2_d6R "Location Quotient for Healthcare Support Services"
	label variable LQ_occ_2_d7R "Location Quotient for Protective Services"
	label variable LQ_occ_2_d8R "Location Quotient for Food Preparation, Janitorial, and Housekeeping Services"
	label variable LQ_occ_2_d9R "Location Quotient for Personal Care and Services"
	label variable LQ_occ_2_d10R "Location Quotient for Sales"
	label variable LQ_occ_2_d11R "Location Quotient for Office Administration"
	label variable LQ_occ_2_d12R "Location Quotient for Natural Resources, Construction, Maintenance"
	label variable LQ_occ_2_d13R "Location Quotient for Production, Transportation, Materials Moving"
	
***Generate occupational diversity variable (number of LQs above 1.25 or 1.50)
gen count_occLQ125 = 0
foreach x of varlist LQ_occ_2_d2 LQ_occ_2_d3 LQ_occ_2_d4 LQ_occ_2_d5 LQ_occ_2_d6 LQ_occ_2_d7 LQ_occ_2_d8 LQ_occ_2_d9 LQ_occ_2_d10 LQ_occ_2_d11 LQ_occ_2_d12 LQ_occ_2_d13 {
replace count_occLQ125 = count_occLQ125 + (`x' >= 1.25)
}
codebook count_occLQ125
list metfips metarea count_occLQ125 if inlist(metfips, 17660, 19300, 24020, 27500, 36220) & tag_metfips == 1

gen count_occLQ125v2 = count_occLQ125
replace count_occLQ125v2 = 3 if count_occLQ125 > 2
codebook count_occLQ125v2
tab count_occLQ125 count_occLQ125v2, mi

gen count_occLQ150 = 0
foreach x of varlist LQ_occ_2_d2 LQ_occ_2_d3 LQ_occ_2_d4 LQ_occ_2_d5 LQ_occ_2_d6 LQ_occ_2_d7 LQ_occ_2_d8 LQ_occ_2_d9 LQ_occ_2_d10 LQ_occ_2_d11 LQ_occ_2_d12 LQ_occ_2_d13 {
replace count_occLQ150 = count_occLQ150 + (`x' >= 1.50)
}
codebook count_occLQ150
list metfips metarea count_occLQ150 if inlist(metfips, 17660, 19300, 24020, 27500, 36220) & tag_metfips == 1

gen count_occLQ150v2 = count_occLQ150
replace count_occLQ150v2 = 3 if count_occLQ150 > 2
codebook count_occLQ150v2
tab count_occLQ150 count_occLQ150v2, mi

***Generate occupational dissimilarity (number of LQs above 1.25 or 1.50 from the four major groups)
gen LQ_occ_goods125 = 0	/*includes production and natural resources groups*/
replace LQ_occ_goods125 = 1 if LQ_occ_2_d12 >= 1.25 | LQ_occ_2_d13 >= 1.25
tab LQ_occ_goods125, mi

gen LQ_occ_trade125 = 0 /*includes sales and office*/
replace LQ_occ_trade125 = 1 if LQ_occ_2_d10 >= 1.25 | LQ_occ_2_d11 >= 1.25
tab LQ_occ_trade125, mi

gen LQ_occ_highservices125 = 0
replace LQ_occ_highservices125 = 1 if LQ_occ_2_d2 >= 1.25 | LQ_occ_2_d3 >= 1.25 | LQ_occ_2_d4 >= 1.25 | LQ_occ_2_d5 >= 1.25 
tab LQ_occ_highservices125, mi

gen LQ_occ_lowservices125 = 0
replace LQ_occ_lowservices125 = 1 if LQ_occ_2_d6 >= 1.25 | LQ_occ_2_d7 >= 1.25 | LQ_occ_2_d8 >= 1.25 | LQ_occ_2_d9 >= 1.25
tab LQ_occ_lowservices125, mi

gen count_occdissim_LQ125 = 0
foreach x of varlist LQ_occ_goods125-LQ_occ_lowservices125 {
replace count_occdissim_LQ125 = count_occdissim_LQ125 + (`x' == 1)
}

gen count_occdissim_LQ125D = .
replace count_occdissim_LQ125D = 0 if count_occdissim_LQ125 ~= .
replace count_occdissim_LQ125D = 1 if count_occdissim_LQ125 > 1 & count_occdissim_LQ125 ~= .

codebook count_occdissim_LQ125
tab count_occdissim_LQ125 count_occdissim_LQ125D, mi
list metfips metarea count_occdissim_LQ125 if inlist(metfips, 17660, 19300, 24020, 27500, 36220) & tag_metfips == 1


gen LQ_occ_goods150 = 0
replace LQ_occ_goods150 = 1 if LQ_occ_2_d12 >= 1.50 | LQ_occ_2_d13 >= 1.50 
tab LQ_occ_goods150, mi

gen LQ_occ_trade150 = 0
replace LQ_occ_trade150 = 1 if LQ_occ_2_d10 >= 1.50 | LQ_occ_2_d11 >= 1.50
tab LQ_occ_trade150, mi

gen LQ_occ_highservices150 = 0
replace LQ_occ_highservices150 = 1 if LQ_occ_2_d2 >= 1.50 | LQ_occ_2_d3 >= 1.50 | LQ_occ_2_d4 >= 1.50 | LQ_occ_2_d5 >= 1.50 
tab LQ_occ_highservices150, mi

gen LQ_occ_lowservices150 = 0
replace LQ_occ_lowservices150 = 1 if LQ_occ_2_d6 >= 1.50 | LQ_occ_2_d7 >= 1.50 | LQ_occ_2_d8 >= 1.50 | LQ_occ_2_d9 >= 1.50
tab LQ_occ_lowservices150, mi

gen count_occdissim_LQ150 = 0
foreach x of varlist LQ_occ_goods150-LQ_occ_lowservices150 {
replace count_occdissim_LQ150 = count_occdissim_LQ150 + (`x' == 1)
}

gen count_occdissim_LQ150D = .
replace count_occdissim_LQ150D = 0 if count_occdissim_LQ150 ~= .
replace count_occdissim_LQ150D = 1 if count_occdissim_LQ150 > 1 & count_occdissim_LQ150 ~= .

codebook count_occdissim_LQ150
tab count_occdissim_LQ150 count_occdissim_LQ150D, mi
list metfips metarea count_occdissim_LQ150 if inlist(metfips, 17660, 19300, 24020, 27500, 36220) & tag_metfips == 1

***Generate primary occupation concentration variable (highest LQ)	
egen highest_occLQvalue = rowmax(LQ_occ_2_d2 LQ_occ_2_d3 LQ_occ_2_d4 LQ_occ_2_d5 LQ_occ_2_d6 LQ_occ_2_d7 LQ_occ_2_d8 LQ_occ_2_d9 LQ_occ_2_d10 LQ_occ_2_d11 LQ_occ_2_d12 LQ_occ_2_d13)
label variable highest_occLQvalue "Value of the largest occupation LQ"
codebook highest_occLQvalue
list metfips metarea highest_occLQvalue if inlist(metfips, 17660, 19300, 24020, 27500, 36220) & tag_metfips == 1
set more off
gen str20 highest_occLQname="" // create string variable to store matched results
label variable highest_occLQname "Name of highest occupation LQ"

// find variables with the same value as maxval and add them to maxvar
foreach var of varlist LQ_occ_2_d2 LQ_occ_2_d3 LQ_occ_2_d4 LQ_occ_2_d5 LQ_occ_2_d6 LQ_occ_2_d7 LQ_occ_2_d8 LQ_occ_2_d9 LQ_occ_2_d10 LQ_occ_2_d11 LQ_occ_2_d12 LQ_occ_2_d13   {
    replace highest_occLQname = highest_occLQname + " " + "`var'" if highest_occLQvalue == `var'
}
codebook highest_occLQname
list metfips metarea highest_occLQname highest_occLQvalue if inlist(metfips, 17660, 19300, 24020, 27500, 36220) & tag_metfips == 1


tempvar highest_occLQname_trim
gen `highest_occLQname_trim' = strltrim(highest_occLQname)	
gen highest_occLQname2 = " "
replace highest_occLQname2 = "Management, Business, and Financial" if `highest_occLQname_trim' == "LQ_occ_2_d2"
replace highest_occLQname2 = "Physical and Social Sciences" if `highest_occLQname_trim' == "LQ_occ_2_d3"  
replace highest_occLQname2 = "Social Services, Education, Legal, and Arts" if `highest_occLQname_trim' == "LQ_occ_2_d4"  
replace highest_occLQname2 = "Healthcare Professions"  if `highest_occLQname_trim' == "LQ_occ_2_d5"  
replace highest_occLQname2 = "Healthcare Support Services" if `highest_occLQname_trim' == "LQ_occ_2_d6"  
replace highest_occLQname2 = "Protective Services" if `highest_occLQname_trim' == "LQ_occ_2_d7" 
replace highest_occLQname2 = "Food Preparation, Janitorial, and Housekeeping Services" if `highest_occLQname_trim' == "LQ_occ_2_d8" 
replace highest_occLQname2 = "Personal Care and Services" if `highest_occLQname_trim' == "LQ_occ_2_d9" 
replace highest_occLQname2 = "Sales" if `highest_occLQname_trim' == "LQ_occ_2_d10" 
replace highest_occLQname2 = "Office Administration" if `highest_occLQname_trim' == "LQ_occ_2_d11" 
replace highest_occLQname2 = "Natural Resources, Construction, Maintenance" if `highest_occLQname_trim' == "LQ_occ_2_d12" 
replace highest_occLQname2 = "Production, Transportation, Materials Moving" if `highest_occLQname_trim' == "LQ_occ_2_d13" 

gen highest_occLQname_group = .
replace highest_occLQname_group = 1 if `highest_occLQname_trim' == "LQ_occ_2_d2"
replace highest_occLQname_group = 2 if `highest_occLQname_trim' == "LQ_occ_2_d3"  
replace highest_occLQname_group = 3 if `highest_occLQname_trim' == "LQ_occ_2_d4"  
replace highest_occLQname_group = 4  if `highest_occLQname_trim' == "LQ_occ_2_d5"  
replace highest_occLQname_group = 5 if `highest_occLQname_trim' == "LQ_occ_2_d6"  
replace highest_occLQname_group = 6 if `highest_occLQname_trim' == "LQ_occ_2_d7" 
replace highest_occLQname_group = 7 if `highest_occLQname_trim' == "LQ_occ_2_d8" 
replace highest_occLQname_group = 8 if `highest_occLQname_trim' == "LQ_occ_2_d9" 
replace highest_occLQname_group = 9 if `highest_occLQname_trim' == "LQ_occ_2_d10" 
replace highest_occLQname_group = 10 if `highest_occLQname_trim' == "LQ_occ_2_d11" 
replace highest_occLQname_group = 11 if `highest_occLQname_trim' == "LQ_occ_2_d12" 
replace highest_occLQname_group = 12 if `highest_occLQname_trim' == "LQ_occ_2_d13"

codebook highest_occLQname highest_occLQname2 highest_occLQname_group
tab highest_occLQname, mi
tab highest_occLQname2, mi
tab highest_occLQname_group, mi

	
save "C:\Users\china.layne\Documents\Bigger CPS 2006 and 2014 to 2016 for retirement and self employment.dta", replace	

	