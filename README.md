
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
head(adm2020[,c(1:2, 11, 17, 30, 31, 34, 35)], 5)
#>   institution_id   hs_gpa APPLCN ENRLT RW_SAT_25 RW_SAT_75 ACT_25 ACT_75
#> 1         100654 Required   9855  1664       430       520     15     20
#> 2         100663 Required  10391  2154       560       668     22     30
#> 3         100706 Required   5793  1345       590       700     24     31
#> 4         100724 Required   7027   975       438       531     14     20
#> 5         100751 Required  39560  6507       540       660     23     31
```

## Contributors

-   [Aushanae Haller](https://github.com/ajhaller)
-   [Alejandra Munoz Garcia](https://github.com/alejanmg)
