
<!-- README.md is generated from README.Rmd. Please edit that file -->

# IPEDS <img src="data-raw/Sticker/hex_IPEDSII.png" align="right" height=140/>

<!-- badges: start -->

[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-green.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
[![CRAN
status](https://www.r-pkg.org/badges/version/IPEDS)](https://CRAN.R-project.org/package=IPEDS)
[![R-CMD-check](https://github.com/ajhaller/IPEDS/workflows/R-CMD-check/badge.svg)](https://github.com/ajhaller/IPEDS/actions)
<!-- badges: end -->

`IPEDS` is a package that contains datasets from The Integrated
Postsecondary Education Data System (IPEDS). IPEDS is a system of
interrelated surveys conducted annually by the U.S. Department of
Education’s National Center for Education Statistics (NCES). IPEDS
annually gathers information from about 6,400 colleges, universities,
and technical & vocational institutions that participate in the federal
student aid programs.

## Installation

You can install IPEDS from [CRAN](https://cran.r-project.org/) with:

``` r
install.packages("IPEDS")
```

Or you can install the development version of IPEDS from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("ajhaller/IPEDS")
```

## Load

``` r
library(IPEDS)
```

## Available Tables

- `adm2021`: dataset of Admissions and Test Scores for Fall 2021
- `complete2021`: dataset of Completions in 2021
- `conference`: dataset of Conferences for sports (from `offerings2021`)
- `dir_info2021`: dataset of Directory Information for 2021
- `fall_enroll2021`: dataset of Fall Enrollment for 2021
- `fin_aid1920`: dataset of Financial Aid Statistics for 2019-2020
- `offerings2021`: dataset of Institutional offerings for 2021
- `relig_aff`: dataset of Religious Affiliations (from `offerings2021`)
- `staff2021`: dataset of Fall Staff for 2021
- `staff_cat`: dataset of Staff Categories based on
  `staff2021$staff_cat`

## Example: Admissions and Test Scores for Fall 2021

``` r
head(adm2021)
#>   INSTITUTION_ID   hs_gpa                          hs_rank   hs_record                    cprep_program                             recs                     competencies                 adm_tscores                      test_eng_FL                       other_test APPLCN APPLCNM APPLCNW ADMSSN ADMSSNM ADMSSNW ENRLT ENRLM ENRLW FT_enroll FT_enroll_M FT_enroll_W PT_enroll PT_enroll_M PT_enroll_W SAT_num SAT_pct ACT_num ACT_pct RW_SAT_25 RW_SAT_75 MTH_SAT_25 MTH_SAT_75 ACT_25 ACT_75 eng_ACT_25 eng_ACT_75 MTH_ACT_25 MTH_ACT_75
#> 1         100654 Required                      Recommended    Required                      Recommended Neither_required_nor_recommended                      Recommended Considered_but_not_required                         Required Neither_required_nor_recommended   6560    2209    4345   4697    1599    3092  1534   647   885      1459         623         834        75          24          51     287      19     970      63       430       520        410        510     15     20         14         20         15         18
#> 2         100663 Required Neither_required_nor_recommended    Required                         Required Neither_required_nor_recommended Neither_required_nor_recommended Considered_but_not_required Neither_required_nor_recommended Neither_required_nor_recommended  11906    4139    7767  10541    3501    7040  2415   835  1580      2361         816        1545        54          19          35     166       7    1565      65       593       680        580        708     23     30         23         33         21         28
#> 3         100706 Required                      Recommended    Required Neither_required_nor_recommended Neither_required_nor_recommended                      Recommended                    Required                         Required Neither_required_nor_recommended   5781    2850    2931   4259    2301    1958  1204   778   426      1191         772         419        13           6           7      65       5    1108      92       580       700        590        720     24     31         24         32         23         29
#> 4         100724 Required Neither_required_nor_recommended Recommended Neither_required_nor_recommended Neither_required_nor_recommended Neither_required_nor_recommended Considered_but_not_required                         Required Neither_required_nor_recommended   5974    1745    4142   5854    1695    4072   890   300   590       797         254         543        93          46          47     132      15     313      35       442       534        397        516     15     20         12         22         15         19
#> 5         100751 Required                      Recommended    Required                         Required Neither_required_nor_recommended Neither_required_nor_recommended Considered_but_not_required                         Required Neither_required_nor_recommended  42421   15567   26854  33472   12338   21134  7593  3221  4372      7540        3206        4334        53          15          38    1302      17    4795      63       540       680        530        690     21     31         21         33         19         28
#> 6         100830 Required                      Recommended    Required Neither_required_nor_recommended Neither_required_nor_recommended Neither_required_nor_recommended                    Required                         Required Neither_required_nor_recommended   3405    1128    2277   3296    1080    2216   539   191   348       517         181         336        22          10          12      23       4     429      80       480       595        470        565     17     24         16         24         16         22
```

### Data Visualization

``` r
ggplot(adm2021, mapping = aes(x = adm_tscores, fill = adm_tscores)) +
  geom_bar() +
  labs(title = "Amount of Schools vs. Test Score Requirement",
       x = "Test Score Requirement",
       y = "Amount of Schools") +
  scale_fill_discrete(name = "Test Score Requirement",
                      labels = c("Considered_but_not_required" = "Considered but not Required",
                                 "Neither_required_nor_recommended" = "Neither Required nor Recommended")) +
  theme(axis.text.x=element_blank(),
        axis.ticks.x=element_blank())
```

<img src="man/figures/README-unnamed-chunk-7-1.png" width="100%" />

## Example: Directory Information for 2021

``` r
head(dir_info2021) 
#>   INSTITUTION_ID                         INSTITUTION                        ADDRESS       CITY STATE        ZIP FIPS   BEA_REG AID_ELIG                    WEBSITE                                      ADMIN_WEB                                                                     FINAID_WEB                                                                   APPLICATION                                                                     NPRICE_CALC                                            VET_TUITION                          ATH_GRAD_RATE                                                                 DISABILITY_WEB INT_LEVEL INT_CONTROL UNGRAD_OFFER GRAD_OFFER HD_OFFER HBCU HOSPITAL MEDICAL TRIBAL LOCALE OPENPUBL INT_STATUS CLOSE_DATE POST_SEC RPTMTH CC_U2021 CC_G2021 CC21_U_PROFILE CC21_ENROLL CC21_SIZE_SET C_PROGRAMS INT_SIZE MULT_ORG                    MULT_ORG_NAME MULT_ORG_CODE COUNTYCD          COUNTYNM CONGRESS_DIS_ID  LONGITUD LATITUDE
#> 1         100654            Alabama A & M University           4900 Meridian Street     Normal    AL      35762    1 Southeast        1              www.aamu.edu/ https://www.aamu.edu/admissions-aid/index.html                             https://www.aamu.edu/admissions-aid/financial-aid/ https://www.aamu.edu/admissions-aid/undergraduate-admissions/apply-today.html              www.aamu.edu/admissions-aid/tuition-fees/net-price-calculator.html                                                                                               https://www.aamu.edu/administrativeoffices/VADS/Pages/Disability-Services.aspx         1           1            1          1       12    1        2       2      2     12        1         A          -2        1      1       16       18             10           4            14         16        3        2                               -2            -2     1089    Madison County             105 -86.56850 34.78337
#> 2         100663 University of Alabama at Birmingham Administration Bldg Suite 1070 Birmingham    AL 35294-0110    1 Southeast        1       https://www.uab.edu/                https://www.uab.edu/admissions/                                                  https://www.uab.edu/cost-aid/                                          https://www.uab.edu/admissions/apply https://tcc.ruffalonl.com/University of Alabama at Birmingham/Freshman-Students                  https://www.uab.edu/students/veterans https://www.uab.edu/registrar/students                                       https://www.uab.edu/students/disability/         1           1            1          1       11    2        1       1      2     12        1         A          -2        1      1       14       14              9           5            15         15        5        1 The University of Alabama System        101050     1073  Jefferson County             107 -86.79935 33.50570
#> 3         100690                  Amridge University                 1200 Taylor Rd Montgomery    AL 36117-3553    1 Southeast        1 www.amridgeuniversity.edu/          www.amridgeuniversity.edu/admissions/                                        www.amridgeuniversity.edu/financialaid/                         https://www2.amridgeuniversity.edu/Amridge/Login.aspx                                                www2.amridgeuniversity.edu:9091/         www.amridgeuniversity.edu/admissions/military/                                                                                  www.amridgeuniversity.edu/academics/         1           2            1          1       12    2        2       2      2     12        1         A          -2        1      1       20       18              5           6             6         51        1        2                               -2            -2     1101 Montgomery County             102 -86.17401 32.36261
#> 4         100706 University of Alabama in Huntsville                301 Sparkman Dr Huntsville    AL      35899    1 Southeast        1               www.uah.edu/                 https://www.uah.edu/admissions                                                                finaid.uah.edu/                                                             register.uah.edu/                                                                 finaid.uah.edu/ www.uah.edu/admissions/graduate/financial-aid/veterans                       www.uah.edu/heoa                             www.uah.edu/health-and-wellness/disability-support         1           1            1          1       11    2        2       2      2     12        1         A          -2        1      1       17       17             15           4            13         16        3        1 The University of Alabama System        101050     1089    Madison County             105 -86.64045 34.72456
#> 5         100724            Alabama State University           915 S Jackson Street Montgomery    AL 36104-0271    1 Southeast        1             www.alasu.edu/            www.alasu.edu/admissions/index.aspx www.alasu.edu/undergraduate/expensesandfinancialaid/expenses-and-financial-aid                      www.alasu.edu/admissions/undergrad-admissions/index.aspx                       www.alasu.edu/cost-aid/tuition-costs/net-price-calculator                                                          www.alasu.edu/cost-aid/consumer-info www.alasu.edu/academics/researchcenters/alabama-alliance-students-disabilities         1           1            1          1       11    1        2       2      2     12        1         A          -2        1      1       13       18             10           3            14         21        2        2                               -2            -2     1101 Montgomery County             107 -86.29568 32.36432
#> 6         100733 University of Alabama System Office      500 University Blvd. East Tuscaloosa    AL      35401    1 Southeast        2          www.uasystem.edu/                                                                                                                                                                                                                                                                           www.uasystem.edu/                                                                                                                                                            www.uasystem.edu/         1           1            1          1       11    2       -2      -2      2     13        1         A          -2        1     -2       -2       -2             -2          -2            -2         -2       -2        1 The University of Alabama System        101050     1125 Tuscaloosa County             107 -87.52959 33.20701
```

## Functionality

``` r
admission_reqs # extracts admission requirements for any institution
acceptance_rate # calculates acceptance rate for any institution
school_preferences # provides a dataset of institutions according to your preferences
compare_int # function allows comparison of two institutions and its important qualities 
read_data # function for importing raw data from IPEDS
```

``` r
admission_reqs(167835)
#> # A tibble: 9 × 2
#>   Requirements                            Priority                        
#>   <chr>                                   <chr>                           
#> 1 High School Record                      Required                        
#> 2 Recommendations                         Required                        
#> 3 High School GPA                         Recommended                     
#> 4 High School Rank                        Recommended                     
#> 5 Completion of College-Prepatory Program Recommended                     
#> 6 Test of English as a Foreign Language   Recommended                     
#> 7 Formal Demonstration of Competencies    Neither_required_nor_recommended
#> 8 Other Tests                             Neither_required_nor_recommended
#> 9 Admission Test Scores                   Considered_but_not_required
```

``` r
school_preferences(financial_aid = 70, size = 2, region = "New England", diversity_staff = 27)
#>                               Institution Institution ID % of Students Recieved Aid Institution Size Student Diversity Staff Diversity % of Students Disabled      Region Type of Institution Religious Affiliation Calendar System Open Admissions Policy Years Required For Entering       Vet Programs     Alternative Credit   Alternative Tuition Payment                         Distance Education        Counseling Services        Employment Services           Daycare Services Live On-Campus Room Price Board Price Undergraduate Application Fee Graduate Application Fee
#> 1    Eastern Connecticut State University         129215                         79                2                31              33                      2 New England                   1                    -2               1                      2                          -2 Programs Available Takes alternate credit Takes alternate tuition plans    Offers distance education opportunities Offers counseling services Offers employment services Offers no daycare services              2       8270        6164                            50                       50
#> 2                        Clark University         165334                         91                2                42              34                      2 New England                   3                    -2               1                      2                          -2 Programs Available Takes alternate credit Takes alternate tuition plans    Offers distance education opportunities Offers counseling services Offers employment services Offers no daycare services              2       6000        4150                            60                      100
#> 3 Massachusetts College of Art and Design         166674                         82                2                37              30                      2 New England                   1                    -2               1                      2                          -2 Programs Available Takes alternate credit Takes alternate tuition plans    Offers distance education opportunities Offers counseling services Offers employment services Offers no daycare services              2          .           .                            70                       90
#> 4                   Mount Holyoke College         166939                         76                2                55              39                      2 New England                   3                    -2               1                      2                          -2 Programs Available Takes alternate credit Takes alternate tuition plans    Offers distance education opportunities Offers counseling services Offers employment services Offers no daycare services              2       8320        8260                            60                       50
#> 5                           Smith College         167835                         71                2                51              31                      2 New England                   3                    -2               1                      2                          -2 Programs Available Takes alternate credit Takes alternate tuition plans Offers no distance education opportunities Offers counseling services Offers employment services Offers no daycare services              2       9700        9720                             0                       60
#> 6       Wentworth Institute of Technology         168227                         84                2                36              28                      2 New England                   3                    -2               1                      2                          -2 Programs Available Takes alternate credit Takes alternate tuition plans    Offers distance education opportunities Offers counseling services Offers employment services Offers no daycare services              2      12120        3300                            50                       50
```

``` r
acceptance_rate(167835)
#> # A tibble: 1 × 2
#>   Institution   Acceptance_Rate
#>   <chr>                   <dbl>
#> 1 Smith College              30
```

For further examples and capabilities, please see the
[vignette](https://github.com/ajhaller/IPEDS/blob/main/vignettes/IPEDS-vignette.Rmd)

## Contributors

- [Aushanae Haller](https://github.com/ajhaller)
- [Alejandra Munoz Garcia](https://github.com/alejanmg)
