
<!-- README.md is generated from README.Rmd. Please edit that file -->

# IPEDS <img src="data-raw/Sticker/hex_IPEDS.png" align="right" height=140/>

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/IPEDS)](https://CRAN.R-project.org/package=IPEDS)
<!-- badges: end -->

`IPEDS` is a package that contains datasets from The Integrated
Postsecondary Education Data System (IPEDS). IPEDS is a system of
interrelated surveys conducted annually by the U.S. Department of
Education’s National Center for Education Statistics (NCES). IPEDS
annually gathers information from about 6,400 colleges, universities,
and technical and vocational institutions that participate in the
federal student aid programs.

## Installation

You can install the development version of IPEDS from
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

-   `adm2020`: dataset of Admissions and Test Scores for Fall 2020
-   `admin2020`: dataset of Administration for 2020
-   `complete2020`: dataset of Completions in 2020
-   `conference`: dataset of Conferences for sports (from
    `offerings2020`)
-   `dir_info2020`: dataset of Directory Information for 2020
-   `fall_enroll2020`: dataset of Fall Enrollment for 2020
-   `fin_aid1920`: dataset of Financial Aid Statistics for 2019-2020
-   `offerings2020`: dataset of Institutional Offerings for 2020
-   `relig_aff`: dataset of Religious Affiliations (from
    `offerings2020`)
-   `staff_cat`: dataset of Staff Categories based on
    `admin2020$staff_cat`

## Example: Admissions and Test Scores for Fall 2020

``` r
head(adm2020[,c(1:2, 11, 17, 30, 31, 34, 35)], 5)
#>   INSTITUTION_ID   hs_gpa APPLCN ENRLT RW_SAT_25 RW_SAT_75 ACT_25 ACT_75
#> 1         100654 Required   9855  1664       430       520     15     20
#> 2         100663 Required  10391  2154       560       668     22     30
#> 3         100706 Required   5793  1345       590       700     24     31
#> 4         100724 Required   7027   975       438       531     14     20
#> 5         100751 Required  39560  6507       540       660     23     31
```

## Example: Directory Information for 2020

``` r
head(dir_info2020[,c(1:2,4:5)],5) 
#>   INSTITUTION_ID                         INSTITUTION       CITY STATE
#> 1         100654            Alabama A & M University     Normal    AL
#> 2         100663 University of Alabama at Birmingham Birmingham    AL
#> 3         100690                  Amridge University Montgomery    AL
#> 4         100706 University of Alabama in Huntsville Huntsville    AL
#> 5         100724            Alabama State University Montgomery    AL
```

## Functionality

``` r
admission_reqs # extracts admission requirements for any institution
acceptance_rate # calcuates acceptance rate for any institution
school_preferences # provides a dataset of institution according to your preferences
```

``` r
admission_reqs("Smith College")
#> The Requirements for Smith College are: 
#> # A tibble: 9 × 2
#>   Requirements                            Priority                        
#>   <chr>                                   <chr>                           
#> 1 High School Record                      Required                        
#> 2 Completion of College-Prepatory Program Required                        
#> 3 Recommendations                         Required                        
#> 4 High School GPA                         Recommended                     
#> 5 High School Rank                        Recommended                     
#> 6 Test of English as a Foreign Language   Recommended                     
#> 7 Formal Demonstration of Competencies    Neither_required_nor_recommended
#> 8 Admission Test Scores                   Neither_required_nor_recommended
#> 9 Other Tests                             Neither_required_nor_recommended
```

``` r
school_preferences(financial_aid = 70, size = 2, region = "New England", diversity_staff = 27)
#>                            Institution Institution ID % of Students Recieved Aid Institution Size Student Diversity Staff Diversity % of Students Disabled      Region Type of Institution Religious Affiliation Calendar System Open Admissions Policy Years Required For Entering       Vet Programs     Alternative Credit   Alternative Tuition Payment                         Distance Education        Counseling Services        Employment Services           Daycare Services Live On-Campus Room Price Board Price Undergraduate Application Fee Graduate Application Fee
#> 1 Eastern Connecticut State University         129215                         79                2                31              34                      2 New England                   1                    -2               1                      2                          -2 Programs Available Takes alternate credit Takes alternate tuition plans    Offers distance education opportunities Offers counseling services Offers employment services Offers no daycare services              2       8270        6164                            50                       50
#> 2                     Clark University         165334                         91                2                42              31                      2 New England                   3                    -2               1                      2                          -2 Programs Available Takes alternate credit Takes alternate tuition plans    Offers distance education opportunities Offers counseling services Offers employment services Offers no daycare services              2       5800        4000                             0                       75
#> 3                Mount Holyoke College         166939                         76                2                55              37                      2 New England                   3                    -2               1                      2                          -2 Programs Available Takes alternate credit Takes alternate tuition plans    Offers distance education opportunities Offers counseling services Offers employment services Offers no daycare services              2       7860        8160                            60                       50
#> 4                        Smith College         167835                         71                2                51              27                      1 New England                   3                    -2               1                      2                          -2 Programs Available Takes alternate credit Takes alternate tuition plans Offers no distance education opportunities Offers counseling services Offers employment services Offers no daycare services              2       9400        9360                             0                       60
```

``` r
acceptance_rate(167835)
#> # A tibble: 1 × 2
#>   Institution   Acceptance_Rate
#>   <chr>                   <dbl>
#> 1 Smith College              37
```

For further examples and capabilities, please see the
[vignette](https://github.com/ajhaller/IPEDS/blob/main/vignettes/IPEDS-vignette.Rmd)

## Contributors

-   [Aushanae Haller](https://github.com/ajhaller)
-   [Alejandra Munoz Garcia](https://github.com/alejanmg)
