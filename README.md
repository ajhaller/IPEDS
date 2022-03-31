
<!-- README.md is generated from README.Rmd. Please edit that file -->

# IPEDS

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
devtools::install_github("ajhaller/-IPEDS")
```

## Load

``` r
library(IPEDS)
```

## Available Tables

`adm2020`: dataset of Admissions and Test Scores for Fall 2020

## Example: Admissions and Test Scores for Fall 2020

``` r
head(adm2020)
#>   institution_id   hs_gpa                          hs_rank   hs_record
#> 1         100654 Required                      Recommended    Required
#> 2         100663 Required Neither_required_nor_recommended    Required
#> 3         100706 Required                      Recommended    Required
#> 4         100724 Required Neither_required_nor_recommended Recommended
#> 5         100751 Required                      Recommended    Required
#> 6         100830 Required                      Recommended    Required
#>                      cprep_program                             recs
#> 1                      Recommended Neither_required_nor_recommended
#> 2                         Required Neither_required_nor_recommended
#> 3 Neither_required_nor_recommended Neither_required_nor_recommended
#> 4 Neither_required_nor_recommended Neither_required_nor_recommended
#> 5                         Required Neither_required_nor_recommended
#> 6 Neither_required_nor_recommended Neither_required_nor_recommended
#>                       competencies adm_tscores                      test_eng_FL
#> 1                      Recommended    Required                         Required
#> 2 Neither_required_nor_recommended    Required Neither_required_nor_recommended
#> 3                      Recommended    Required                         Required
#> 4 Neither_required_nor_recommended    Required                         Required
#> 5 Neither_required_nor_recommended    Required                         Required
#> 6 Neither_required_nor_recommended    Required                         Required
#>                         other_test APPLCN APPLCNM APPLCNW ADMSSN ADMSSNM
#> 1 Neither_required_nor_recommended   9855    3394    6461   8835    2947
#> 2 Neither_required_nor_recommended  10391    3803    6588   8375    3002
#> 3 Neither_required_nor_recommended   5793    3057    2736   4467    2509
#> 4 Neither_required_nor_recommended   7027    2226    4763   6948    2188
#> 5 Neither_required_nor_recommended  39560   14907   24653  31804   12112
#> 6 Neither_required_nor_recommended   4606    1553    3053   4401    1473
#>   ADMSSNW ENRLT ENRLM ENRLW FT_enroll FT_enroll_M FT_enroll_W PT_enroll
#> 1    5888  1664   676   988      1622         660         962        42
#> 2    5373  2154   765  1389      2102         738        1364        52
#> 3    1958  1345   847   498      1328         840         488        17
#> 4    4724   975   347   628       926         322         604        49
#> 5   19692  6507  2752  3755      6466        2728        3738        41
#> 6    2928   674   223   451       641         203         438        33
#>   PT_enroll_M PT_enroll_W SAT_num SAT_pct ACT_num ACT_pct RW_SAT_25 RW_SAT_75
#> 1          16          26      22       1    1202      72       430       520
#> 2          27          25     302      14    2120      98       560       668
#> 3           7          10      90       7    1248      93       590       700
#> 4          25          24     293      30     688      71       438       531
#> 5          24          17    1492      23    4986      77       540       660
#> 6          20          13      35       5     561      83       480       575
#>   MTH_SAT_25 MTH_SAT_75 ACT_25 ACT_75 eng_ACT_25 eng_ACT_75 MTH_ACT_25
#> 1        410        500     15     20         14         20         15
#> 2        530        660     22     30         22         33         20
#> 3        580        730     24     31         24         33         23
#> 4        406        518     14     20         14         20         14
#> 5        530        670     23     31         23         33         21
#> 6        430        515     18     23         17         24         16
#>   MTH_ACT_75
#> 1         18
#> 2         27
#> 3         29
#> 4         20
#> 5         29
#> 6         22
```
