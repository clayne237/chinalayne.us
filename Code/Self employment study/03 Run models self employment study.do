*Run and test model of regional occupational concentration on likelihood of self-employment and output results.
set more off
set logtype text
log using "C:\Users\china.layne\Documents\Model results for effect of regional industry on self-employment 5.17.17.txt", replace

use "C:\Users\china.layne\Documents\Bigger CPS 2006 and 2014 to 2016 for retirement and self employment.dta"


/*MODEL TO GET VARIANCE OF SELF-EMPLOYMENT IN THREE CATEGORIES ACROSS METRO AREAS*/
***Multilevel model with three level mulitnomial outcome including unemployed and separate variances for the outcome categories
gsem (1.self_employed3R <- M1[metfips])(3.self_employed3R <- M2[metfips]), cov(M1[metfips]*M2[metfips]) mlogit

putexcel set "C:\Users\china.layne\Documents\Unweighted multilevel multinomial results 5.17.17.xlsx", sheet("Multilevel multinomial results")
putexcel C1 = "Coefficient"
putexcel D1 = "Std Error"
putexcel E1 = "P-value"
putexcel A11 = "BIC Basic"
putexcel A12 = "AIC Basic"
putexcel A13 = "BIC Multilevel"
putexcel A14 = "AIC Multilevel"

matrix table1 = r(table)
matrix list table1
matrix coef = table1[1,1..8]'
matrix stderr = table1[2,1..8]'
matrix pval = table1[4,1..8]'

putexcel A2 = matrix(coef), rownames
putexcel D2 = matrix(stderr)
putexcel E2 = matrix(pval)

estat ic
matrix a = r(S)
putexcel C13 = a[1,6]
putexcel C14 = a[1,5]


/*MODELS TO GET FIXED EFFECTS FOR SELF-EMPLOYMENT FOUR CATEGORIES USING CLUSTERED STD ERRORS*/
***Basic multinomial model with three level outcome including unemployed to get comparison BIC score
mlogit self_employed3R, base(2)
estat ic

matrix a = r(S)
putexcel C11 = a[1,6]
putexcel C12 = a[1,5]


***Multinomial model for four level outcome including unemployed
putexcel set "C:\Users\china.layne\Documents\Unweighted multinomial results 5.17.17.xlsx", sheet("Multinomial results")
putexcel C1 = "Coefficient"
putexcel D1 = "Std Error"
putexcel E1 = "P-value"
putexcel B315 = "BIC Basic"
putexcel B316 = "AIC Basic"
putexcel B317 = "BIC Full"
putexcel B318 = "AIC Full"
putexcel B319 = "R2 Full"
putexcel B320 = "N Full"

mlogit self_employed4R, base(2) vce(cluster metfips)
estat ic

matrix a = r(S)
putexcel C315 = a[1,6]
putexcel C316 = a[1,5]

mlogit self_employed4R i.sex2 ib1.race2 ib1.age2 ib1.educ2 i.citizen2 i.any_disable i.veteran i.migrate_1yr ///
i.ftfy_ly ib1.num_employers_ly3 ib12.occly_2 ib3.sector_ly i.groupown_ly ann_earnC ///
percent_unemployedC percent_nonwhiteC percent_BAmoreC percent_citizen2C percent_migrationC percent_govworkerC median_ann_earnC median_ageC ///
ib12.highest_occLQname_group ib0.count_occLQ150v2 i.count_occdissim_LQ125D, base(2) vce(cluster metfips)

matrix table1 = r(table)
matrix list table1
matrix coef = table1[1,1..312]'
matrix stderr = table1[2,1..312]'
matrix pval = table1[4,1..312]'

putexcel A2 = matrix(coef), rownames
putexcel D2 = matrix(stderr)
putexcel E2 = matrix(pval)
putexcel C319 = matrix(e(r2_p))
putexcel C320 = matrix(e(N))

estat ic
matrix b = r(S)
putexcel C317 = b[1,6]
putexcel C318 = b[1,5]

***Predicted probabilities for self-employed non-incorporated for each value of each IV holding all other IVs at their mean value
mlogit self_employed4R i.sex2 ib1.race2 ib1.age2 ib1.educ2 i.citizen2 i.any_disable i.veteran i.migrate_1yr ///
i.ftfy_ly ib1.num_employers_ly3 ib12.occly_2 ib3.sector_ly i.groupown_ly ann_earnC ///
percent_unemployedC percent_nonwhiteC percent_BAmoreC percent_citizen2C percent_migrationC percent_govworkerC median_ann_earnC median_ageC ///
ib12.highest_occLQname_group ib0.count_occLQ150v2 i.count_occdissim_LQ125D, base(2) vce(cluster metfips)

local preds "i.sex2 ib1.race2 ib1.age2 ib1.educ2 i.citizen2 i.any_disable i.veteran i.migrate_1yr i.ftfy_ly ib1.num_employers_ly3 ib12.occly_2 ib3.sector_ly i.groupown_ly ib12.highest_occLQname_group ib0.count_occLQ150v2 i.count_occdissim_LQ125D"
foreach x of local preds {
margins `x', atmeans predict(outcome(3))
}

***Predicted probabilities for self-employed incorporated for each value of each IV holding all other IVs at their mean value
local preds "i.sex2 ib1.race2 ib1.age2 ib1.educ2 i.citizen2 i.any_disable i.veteran i.migrate_1yr i.ftfy_ly ib1.num_employers_ly3 ib12.occly_2 ib3.sector_ly i.groupown_ly ib12.highest_occLQname_group ib0.count_occLQ150v2 i.count_occdissim_LQ125D"
foreach x of local preds {
margins `x', atmeans predict(outcome(4))
}

***Multinomial model for four level outcome including unemployed with relative risk ratios
mlogit self_employed4R i.sex2 ib1.race2 ib1.age2 ib1.educ2 i.citizen2 i.any_disable i.veteran i.migrate_1yr ///
i.ftfy_ly ib1.num_employers_ly3 ib12.occly_2 ib3.sector_ly i.groupown_ly ann_earnC ///
percent_unemployedC percent_nonwhiteC percent_BAmoreC percent_citizen2C percent_migrationC percent_govworkerC median_ann_earnC median_ageC ///
ib12.highest_occLQname_group ib0.count_occLQ150v2 i.count_occdissim_LQ125D, base(2) vce(cluster metfips) rrr


/*MODELS TO GET FIXED EFFECTS FOR SELF-EMPLOYMENT FOUR CATEGORIES USING CLUSTERED STD ERRORS*/
***Weighted multinomial model for four level outcome including unemployed
putexcel set "C:\Users\china.layne\Documents\Weighted multinomial results 5.17.17.xlsx", sheet("Multinomial results")
putexcel C1 = "Coefficient"
putexcel D1 = "Std Error"
putexcel E1 = "P-value"
putexcel B315 = "BIC Basic"
putexcel B316 = "AIC Basic"
putexcel B317 = "BIC Full"
putexcel B318 = "AIC Full"
putexcel B319 = "R2 Full"
putexcel B320 = "N Full"

mlogit self_employed4R [pw=wtsupp], base(2) vce(cluster metfips)
estat ic

matrix a = r(S)
putexcel C315 = a[1,6]
putexcel C316 = a[1,5]

mlogit self_employed4R i.sex2 ib1.race2 ib1.age2 ib1.educ2 i.citizen2 i.any_disable i.veteran i.migrate_1yr ///
i.ftfy_ly ib1.num_employers_ly3 ib12.occly_2 ib3.sector_ly i.groupown_ly ann_earnC ///
percent_unemployedC percent_nonwhiteC percent_BAmoreC percent_citizen2C percent_migrationC percent_govworkerC median_ann_earnC median_ageC ///
ib12.highest_occLQname_group ib0.count_occLQ150v2 i.count_occdissim_LQ125D [pw=wtsupp], base(2) vce(cluster metfips)

matrix table1 = r(table)
matrix list table1
matrix coef = table1[1,1..312]'
matrix stderr = table1[2,1..312]'
matrix pval = table1[4,1..312]'

putexcel A2 = matrix(coef), rownames
putexcel D2 = matrix(stderr)
putexcel E2 = matrix(pval)
putexcel C319 = matrix(e(r2_p))
putexcel C320 = matrix(e(N))

estat ic
matrix b = r(S)
putexcel C317 = b[1,6]
putexcel C318 = b[1,5]

***Predicted probabilities for self-employed non-incorporated for each value of each IV holding all other IVs at their mean value
mlogit self_employed4R i.sex2 ib1.race2 ib1.age2 ib1.educ2 i.citizen2 i.any_disable i.veteran i.migrate_1yr ///
i.ftfy_ly ib1.num_employers_ly3 ib12.occly_2 ib3.sector_ly i.groupown_ly ann_earnC ///
percent_unemployedC percent_nonwhiteC percent_BAmoreC percent_citizen2C percent_migrationC percent_govworkerC median_ann_earnC median_ageC ///
ib12.highest_occLQname_group ib0.count_occLQ150v2 i.count_occdissim_LQ125D [pw=wtsupp], base(2) vce(cluster metfips)

local preds "i.sex2 ib1.race2 ib1.age2 ib1.educ2 i.citizen2 i.any_disable i.veteran i.migrate_1yr i.ftfy_ly ib1.num_employers_ly3 ib12.occly_2 ib3.sector_ly i.groupown_ly ib12.highest_occLQname_group ib0.count_occLQ150v2 i.count_occdissim_LQ125D"
foreach x of local preds {
margins `x', atmeans predict(outcome(3))
}

***Predicted probabilities for self-employed incorporated for each value of each IV holding all other IVs at their mean value
local preds "i.sex2 ib1.race2 ib1.age2 ib1.educ2 i.citizen2 i.any_disable i.veteran i.migrate_1yr i.ftfy_ly ib1.num_employers_ly3 ib12.occly_2 ib3.sector_ly i.groupown_ly ib12.highest_occLQname_group ib0.count_occLQ150v2 i.count_occdissim_LQ125D"
foreach x of local preds {
margins `x', atmeans predict(outcome(4))
}

***Weighted multinomial model for four level outcome including unemployed with relative risk ratios
mlogit self_employed4R i.sex2 ib1.race2 ib1.age2 ib1.educ2 i.citizen2 i.any_disable i.veteran i.migrate_1yr ///
i.ftfy_ly ib1.num_employers_ly3 ib12.occly_2 ib3.sector_ly i.groupown_ly ann_earnC ///
percent_unemployedC percent_nonwhiteC percent_BAmoreC percent_citizen2C percent_migrationC percent_govworkerC median_ann_earnC median_ageC ///
ib12.highest_occLQname_group ib0.count_occLQ150v2 i.count_occdissim_LQ125D [pw=wtsupp], base(2) vce(cluster metfips) rrr

