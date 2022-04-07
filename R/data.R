#' Admissions and Test Scores 2020 Data
#'
#' This file contains information about the undergraduate selection process for entering first-time, degree/certificate-seeking students. This includes information about admission considerations,  applicants, applicants that were admitted, and admitted students who enrolled. SAT and ACT test scores are included for institutions, that require test scores for admission. These data are applicable for institutions that do not have an open admissions policy for entering first-time students. Beginning with 2016, writing scores for both SAT and ACT are no longer collected. The possible values for the admission consideration variables have changed from data prior to 2016.
#'
#' Provisional release data have undergone all NCES data quality control procedures. Data are imputed for nonresponding institutions.
#'
#' @format A data frame of 1989 rows representing institutions and 39 variables
#'
#' \describe{
#' \item{INSTITUTION_ID}{Unique identification number of the institution}
#' \item{hs_gpa}{Secondary school GPA: a factor with 4 levels: `Required`, `Recommended`, `Neither_required_nor_recommended`, and `Considered_but_not_required`}
#' \item{hs_rank}{Secondary school rank: a factor with 4 levels: `Required`, `Recommended`, `Neither_required_nor_recommended`, and `Considered_but_not_required`}
#' \item{hs_record}{Secondary school record: a factor with 4 levels: `Required`, `Recommended`, `Neither_required_nor_recommended`, and `Considered_but_not_required`}
#' \item{cprep_program}{Completion of college-preparatory program: a factor with 4 levels: `Required`, `Recommended`, `Neither_required_nor_recommended`, and `Considered_but_not_required`}
#' \item{recs}{Recommendations: a factor with 4 levels: `Required`, `Recommended`, `Neither_required_nor_recommended`, and `Considered_but_not_required`}
#' \item{competencies}{Formal demonstration of competencies: a factor with 4 levels: `Required`, `Recommended`, `Neither_required_nor_recommended`, and `Considered_but_not_required`}
#' \item{adm_tscores}{Admission test scores: a factor with 4 levels: `Required`, `Recommended`, `Neither_required_nor_recommended`, and `Considered_but_not_required`}
#' \item{test_eng_FL}{TOEFL (Test of English as a Foreign Language: a factor with 4 levels: `Required`, `Recommended`, `Neither_required_nor_recommended`, and `Considered_but_not_required`}
#' \item{other_test}{Other Test (Wonderlic, WISC-III, etc.: a factor with 4 levels: `Required`, `Recommended`, `Neither_required_nor_recommended`, and `Considered_but_not_required`}
#' \item{APPLCN}{Applicants total}
#' \item{APPLCNM}{Applicants men}
#' \item{APPLCNW}{Applicants men}
#' \item{ADMSSN}{Admissions total}
#' \item{ADMSSNM}{Admissions men}
#' \item{ADMSSNW}{Admissions women}
#' \item{ENRLT}{Enrolled total}
#' \item{ENRLM}{Enrolled men}
#' \item{ENRLW}{Enrolled women}
#' \item{FT_enroll}{Enrolled full time total}
#' \item{FT_enroll_M}{Enrolled full time men}
#' \item{FT_enroll_W}{Enrolled full time women}
#' \item{PT_enroll}{Enrolled part time total}
#' \item{PT_enroll_M}{Enrolled part time men}
#' \item{PT_enroll_W}{Enrolled part time women}
#' \item{SAT_num}{Number of first-time degree/certificate-seeking students submitting SAT scores}
#' \item{SAT_pct}{Percent of first-time degree/certificate-seeking students submitting SAT scores}
#' \item{ACT_num}{Number of first-time degree/certificate-seeking students submitting ACT scores}
#' \item{ACT_pct}{Percent of first-time degree/certificate-seeking students submitting ACT scores}
#' \item{RW_SAT_25}{SAT Evidence-Based Reading and Writing 25th percentile score}
#' \item{RW_SAT_75}{SAT Evidence-Based Reading and Writing 75th percentile score}
#' \item{MTH_SAT_25}{SAT Math 25th percentile score}
#' \item{MTH_SAT_75}{SAT Math 75th percentile score}
#' \item{ACT_25}{ACT Composite 25th percentile score}
#' \item{ACT_75}{ACT Composite 75th percentile score}
#' \item{eng_ACT_25}{ACT English 25th percentile score}
#' \item{eng_ACT_75}{ACT English 75th percentile score}
#' \item{MTH_ACT_25}{ACT Math 25th percentile score}
#' \item{MTH_ACT_75}{ACT Math 75th percentile score}
#' }
#'
#' @source Download from Integrated Postsecondary Education Data System,
#'   <https://nces.ed.gov/ipeds/datacenter/data/ADM2020.zip>.
#'
#' @docType data
"adm2020"

#' Administration 2020 Data
#'
#' This file contains the number of full-time instructional staff on the payroll of the institution as of November 1,  by faculty and tenure status, academic rank, race/ethnicity and gender. This file has multiple records per institution.  Each record is uniquely defined by the variables IPEDS ID (INSTIUTION_ID). These data are applicable to degree-granting institutions with 15 or more full-time employees and related administrative offices.
#'
#' Provisional release data have undergone all NCES data quality control procedures. Data are imputed for nonresponding institutions.
#'
#' @format A data frame of  63,843 rows representing full-time instructional staff on the payroll of the institution and 34 variables
#'
#' \describe{
#' \item{INSTITUTION_ID}{Unique identification number of the institution}
#' \item{STAFF_CAT}{Instructional staff category (1	= All full-time instructional staff; 100 = Instructional staff with faculty status; 101 = Instructional staff, professors; 102 = Instructional staff, associate professors; 103	= Instructional staff, assistant professors; 104 = Instructional staff, instructors; 105 = Instructional staff, lecturers; 106 = Instructional staff, no academic rank; 200 = Tenured total; 201 = Tenured, professors; 202	= Tenured, associate professors; 203 = Tenured, assistant professors; 204 = Tenured, instructors; 205 = Tenured, lecturers; 206	= Tenured, no academic rank; 300 = On-Tenure track total; 301	= On-tenure track, professors; 302 = On-tenure track, associate professors; 303	= On-tenure track, assistant professors; 304 = On-tenure track, instructors; 305 = On-tenure track, lecturers; 306 = On-tenure track, no academic rank; 400	= Not on tenure track/No tenure system system total; 401 = Not on tenure/no tenure system, professors; 402 = Not on tenure/no tenure system, associate professors; 403 = Not on tenure/no tenure system, assistant professors; 404 = Not on tenure/no tenure system, instructors; 405	= Not on tenure/no tenure system, lecturers; 406 = Not on tenure/no tenure system, no academic rank; 410 = Not on tenure track/no tenure system, multi-year and indefinite contracts, total; 411 = Not on tenure track/no tenure system, multi-year and indefinite contracts, professors; 412	= Not on tenure track/no tenure system, multi-year and indefinite contracts, asssociate professors; 413	= Not on tenure track/no tenure system, multi-year and indefinite contracts, assistant professors; 414 = Not on tenure track/no tenure system, multi-year and indefinite contracts, instructors; 415 = Not on tenure track/no tenure system, multi-year and indefinite contracts contract,lecturers; 416 = Not on tenure track/no tenure system, multi-year and indefinite contracts, no academic rank; 420	= Not on tenure track/no tenure system, annual contract, total; 421	= Not on tenure track/no tenure system, annual contract, professors; 422 = Not on tenure track/no tenure system, annual contract, asssociate professors; 423 = Not on tenure track/no tenure system, annual contract, assistant professors; 424	= Not on tenure track/no tenure system, annual contract, instructors; 425	= Not on tenure track/no tenure system, annual contract,lecturers; 426 = Not on tenure track/no tenure system, annual contract, no academic rank; 430	= Not on tenure track/no tenure system, less-than-annual contract, total; 431	= Not on tenure track/no tenure system, less-than-annual contract, professors; 432 = Not on tenure track/no tenure system, less-than-annual contract, asssociate professors; 433 = Not on tenure track/no tenure system, less-than-annual contract, assistant professors; 434	= Not on tenure track/no tenure system, less-than-annual contract, instructors; 435	= Not on tenure track/no tenure system, less-than-annual contract,lecturers; 436 = Not on tenure track/no tenure system, less-than-annual contract, no academic rank; 440	= Not on tenure track/no tenure system, multi-year contract, total; 441	= Not on tenure track/no tenure system, multi-year contract, professors; 442 = Not on tenure track/no tenure system, multi-year contract, associate professors; 443	= Not on tenure track/no tenure system, multi-year contract, assistant professors; 444 = Not on tenure track/no tenure system, multi-year contract, instructors; 445 = Not on tenure track/no tenure system, multi-year contract, lecturers; 446 = Not on tenure track/no tenure system, multi-year contract, no academic rank; 450	= Not on tenure track/no tenure system, multi-year contract, total; 451	= Not on tenure track/no tenure system, indefinite contract, professors; 452 = Not on tenure track/no tenure system, indefinite contract, associate professors; 453	= Not on tenure track/no tenure system, indefinite contract, assistant professors; 454 = Not on tenure track/no tenure system, indefinite contract, instructors; 455 = Not on tenure track/no tenure system, indefinite contract, lecturers; 456 = Not on tenure track/no tenure system, indefinite contract, no academic rank; 500	= Without faculty status)}
#' \item{FACSTAT}{Faculty and tenure status (0 = All full-time instructional staff; 10 = With faculty status, total; 20	= With faculty status, tenured; 30 = With faculty status, on tenure track; 40	= With faculty status not on tenure track/No tenure system, total; 41	= With faculty status not on tenure track/No tenure system, multi-year and indefinite contract; 44 = With faculty status not on tenure track/No tenure system, multi-year contract; 45 = With faculty status not on tenure track/No tenure system, indefinite contract; 42 = With faculty status not on tenure track/No tenure system, annual contract; 43 = With faculty status not on tenure track/No tenure system, less-than-annual contract; 50 = Without faculty status)}
#' \item{ARANK}{Academic rank: a factor with 7 levels: `All ranks`, `Professors`, `Associate professors`, `Assistant professors`, `Instructors`, `Lecturers` and `No academic rank`}{Academic rank}
#' \item{TOTAL}{Grand total individuals}
#' \item{TOTAL_M}{Grand total men}
#' \item{TOTAL_W}{Grand total women}
#' \item{NATIVE_TOTAL}{American Indian or Alaska Native total}
#' \item{NATIVE_MEN}{American Indian or Alaska Native men}
#' \item{NATIVE_WOMEN}{American Indian or Alaska Native women}
#' \item{ASIAN_TOTAL}{Asian total}
#' \item{ASIAN_M}{Asian men}
#' \item{ASIAN_W}{Asian men}
#' \item{BLACK_TOTAL}{Black or African American total}
#' \item{BLACK_M}{Black or African American men}
#' \item{BLACK_W}{Black or African American women}
#' \item{HISP_TOTAL}{Hispanic or Latino total}
#' \item{HISP_M}{Hispanic or Latino men}
#' \item{HISP_W}{Hispanic or Latino women}
#' \item{NHPI_TOTAL}{Native Hawaiian or Other Pacific Islander total}
#' \item{NHPI_M}{Native Hawaiian or Other Pacific Islander men}
#' \item{NHPI_W}{Native Hawaiian or Other Pacific Islander women}
#' \item{WHITE_TOTAL}{White total}
#' \item{WHITE_M}{White men}
#' \item{WHITE_W}{White women}
#' \item{MULT_TOTAL}{Two or more races total}
#' \item{MULT_M}{Two or more races men}
#' \item{MULT_W}{Two or more races women}
#' \item{UNKNOWN_TOTAL}{Race/ethnicity unknown total}
#' \item{UNKNOWN_M}{Race/ethnicity unknown men}
#' \item{UNKNOWN_W}{Race/ethnicity unknown women}
#' \item{NRA_TOTAL}{Nonresident alien total}
#' \item{NRA_M}{Nonresident alien men}
#' \item{NRA_W}{Nonresident alien women}
#' }
#'
#' @source Download from Integrated Postsecondary Education Data System,
#'   <https://nces.ed.gov/ipeds/datacenter/data/S2020_IS.zip>.
#'
#' @docType data
"admin2020"

#' Completions 2020 Data
#'
#' This file contains the number of students receiving a degree or certificate by level of award and by race/ethnicity,  gender and age categories. Data covers awards granted between July 1, 2019 and June 30, 2020. This file contains multiple records per institution. Each record will contain the total number of students receiving awards;  number of  men and women receiving awards: number of students receiving awards for all nine race/ethnicity categories; number of students receiving awards are also available for the following age groups: under 18, 18-24, 25-39, 40 and above.
#'
#' Provisional release data have undergone all NCES data quality control procedures. Data are imputed for nonresponding institutions.
#'
#' @format A data frame of 15937 rows representing institutions and 19 variables
#'
#' \describe{
#' \item{INSTITUTION_ID}{Unique identification number of the institution}
#' \item{AWARD_LVL}{Award Level code (3	= Associate's degree; 5	= Bachelor's degree; 7 = Master's degree; 9	= Doctor's degree; 10	= Postbaccalaureate or Post-master's certificate; 11 = Certificate of less than 12 weeks; 12 = Certificate of at least 12 weeks but less than 1 year; 2	= Certificate of at least 1 but less than 4 years)}
#' \item{TOTAL}{Grand total individuals}
#' \item{TOTAL_M}{Grand total men}
#' \item{TOTAL_W}{Grand total women}
#' \item{TOTAL_NATIVE}{American Indian or Alaska Native total}
#' \item{TOTAL_ASIAN}{Asian total}
#' \item{TOTAL_BLACK}{Black or African American total}
#' \item{TOTAL_HISP}{Hispanic or Latino total}
#' \item{TOTAL_NHPI}{Native Hawaiian or Other Pacific Islander total}
#' \item{TOTAL_WHITE}{White total}
#' \item{TOTAL_MULT}{Two or more races total}
#' \item{TOTAL_UNKNOWN}{Race/ethnicity unknown total}
#' \item{TOTAL_NRA}{Nonresident alien total}
#' \item{UND18}{Ages, under 18}
#' \item{AGE18_24}{Ages, 18-24}
#' \item{AGE25_39}{Ages, 25-39}
#' \item{AGE40PLUS}{Ages, 40 and above}
#' \item{AGE_UNKNOWN}{Age unknown}
#' }
#'
#'
#' @source Download from Integrated Postsecondary Education Data System,
#'   <https://nces.ed.gov/ipeds/datacenter/data/C2020_C.zip>.
#'
#' @docType data
"complete2020"

#' Directory Info 2020 Data
#'
#' This file contains directory information for every institution in the 2020-21 IPEDS universe. Includes name, address, city, state, zip code and various URL links to the institution's home page, admissions, financial aid offices and the net price calculator. Identifies institutions as currently active, institutions that participate in Title IV federal financial aid programs for which IPEDS is mandatory. It also includes variables derived from the 2020-21 Institutional Characteristics survey, such as control and level of institution, highest level and highest degree offered and Carnegie classifications.
#'
#' Provisional release data have undergone all NCES data quality control procedures. Data are imputed for nonresponding institutions.
#'
#' @format A data frame of 6220 rows representing institutions and 47 variables
#'
#' \describe{
#' \item{INSTITUTION_ID}{Unique identification number of the institution}
#' \item{INSTITUTION}{Institution (entity) name}
#' \item{ADDRESS}{Street address or post office box}
#' \item{CITY}{City location of institution}
#' \item{STATE}{State abbreviation}
#' \item{ZIP}{ZIP code}
#' \item{FIPS}{FIPS state code}
#' \item{BEA_REG}{Bureau of Economic Analysis (BEA) regions}
#' \item{AID_ELIG}{OPE Title IV eligibility indicator code}
#' \item{WEBSITE}{Institution's internet website address}
#' \item{ADMIN_WEB}{Admissions office web address}
#' \item{FINAID_WEB}{Financial aid office web address}
#' \item{APPLICATION}{Online application web address}
#' \item{NPRICE_CALC}{Net price calculator web address}
#' \item{VET_TUITION}{Veterans and Military Servicemembers tuition policies web address}
#' \item{ATH_GRAD_RATE}{Student-Right-to-Know student athlete graduation rate web address}
#' \item{DISABILITY_WEB}{Disability Services Web Address}
#' \item{INT_LEVEL}{Level of institution}
#' \item{INT_CONTROL}{Control of institution}
#' \item{UNGRAD_OFFER}{Undergraduate offering}
#' \item{GRAD_OFFER}{Graduate offering}
#' \item{HD_OFFER}{Degree-granting status}
#' \item{HBCU}{Historically Black College or University}
#' \item{HOSPITAL}{Institution has hospital}
#' \item{MEDICAL}{Institution grants a medical degree}
#' \item{TRIBAL}{Tribal college}
#' \item{LOCALE}{Degree of urbanization (Urban-centric locale)}
#' \item{OPENPUBL}{Institution open to the general public}
#' \item{INT_STATUS}{Status of institution}
#' \item{CLOSE_DATE}{Date institution closed}
#' \item{POST_SEC}{Postsecondary institution indicator}
#' \item{RPTMTH}{Reporting method for student charges, graduation rates, retention rates and student financial aid}
#' \item{CC_U2018}{Carnegie Classification 2018: Undergraduate Instructional Program}
#' \item{CC_G2018}{Carnegie Classification 2018: Graduate Instructional Program}
#' \item{CC18_U_PROFILE}{Carnegie Classification 2018: Undergraduate Profile}
#' \item{CC18_ENROLL}{Carnegie Classification 2018: Enrollment Profile}
#' \item{CC18_SIZE_SET}{Carnegie Classification 2018: Size and Setting}
#' \item{C_PROGRAMS}{Carnegie Classification 2000}
#' \item{INT_SIZE}{Institution size category}
#' \item{MULT_ORG}{Multi-institution or multi-campus organization}
#' \item{MULT_ORG_NAME}{Name of multi-institution or multi-campus organization}
#' \item{MULT_ORG_CODE}{Identification number of multi-institution or multi-campus organization}
#' \item{COUNTYCD}{Fips County code}
#' \item{COUNTYNM}{County name}
#' \item{CONGRESS_DIS_ID}{State and 114TH Congressional District ID}
#' \item{LONGITUD}{Longitude location of institution}
#' \item{LATITUDE}{Latitude location of institution}
#' }
#'
#' @source Download from Integrated Postsecondary Education Data System,
#'   <https://nces.ed.gov/ipeds/datacenter/data/HD2020.zip>.
#'
#' @docType data
"dir_info2020"


#' Fall Enrollment 2020 Data
#'
#' This file contains the number of students enrolled in the fall, by race/ethnicity, gender, attendance (full- or part-time) status and level of student.  Institutions with traditional academic year calendar systems (semester, quarter, trimester or  4-1-4) report their enrollment as of October 15 or the official fall reporting date of the institution. Institutions with calendar systems that differ by program or allow continuous enrollment report students that are enrolled at any time between August 1 and October 31. This file has multiple records per institution.  Records are uniquely defined by the variables IPEDS ID (UNITID), and the attendance status and level of student (EFALEVEL).   Each record will contain the total enrollment,  enrollment for men and women, and the total enrollment and enrollment for men and women for all nine race/ethnicity categories.
#'
#' Provisional release data have undergone all NCES data quality control procedures. Data are imputed for nonresponding institutions.
#'
#' @format A data frame of 6129 rows representing institutions and 31 variables
#'
#' \describe{
#' \item{INSTITUTION_ID}{Unique identification number of the institution}
#' \item{ENROLL}{Grand total}
#' \item{M_ENROLL}{Grand total men}
#' \item{W_ENROLL}{Grand total women}
#' \item{NATIVE_ENROLL}{American Indian or Alaska Native total}
#' \item{NATIVE_M_ENROLL}{American Indian or Alaska Native men}
#' \item{NATIVE_W_ENROLL}{American Indian or Alaska Native women}
#' \item{ASIAN_ENROLL}{Asian total}
#' \item{ASIAN_M_ENROLL}{Asian men}
#' \item{ASIAN_W_ENROLL}{Asian women}
#' \item{BLACK_ENROLL}{Black or African American total}
#' \item{BLACK_M_ENROLL}{Black or African American men}
#' \item{BLACK_W_ENROLL}{Black or African American women}
#' \item{LATINX_ENROLL}{Hispanic total}
#' \item{LATINX_M_ENROLL}{Hispanic men}
#' \item{LATINX_W_ENROLL}{Hispanic women}
#' \item{PAC_ISL_ENROLL}{Native Hawaiian or Other Pacific Islander total}
#' \item{PAC_ISL_M_ENROLL}{Native Hawaiian or Other Pacific Islander men}
#' \item{PAC_ISL_W_ENROLL}{Native Hawaiian or Other Pacific Islander women}
#' \item{WHITE_ENROLL}{White total}
#' \item{WHITE_M_ENROLL}{White men}
#' \item{WHITE_W_ENROLL}{White women}
#' \item{MULT_RACE_ENROLL}{Two or more races total}
#' \item{MULT_RACE_M_ENROLL}{Two or more races men}
#' \item{MULT_RACE_W_ENROLL}{Two or more races women}
#' \item{UNKNOWN_RACE_ENROLL}{Race/ethnicity unknown total}
#' \item{UNKNOWN_RACE_M_ENROLL}{Race/ethnicity unknown men}
#' \item{UNKNOWN_RACE_W_ENROLL}{Race/ethnicity unknown women}
#' \item{IMMIGRANT_ENROLL}{Nonresident alien total}
#' \item{IMMIGRANT_M_ENROLL}{Nonresident alien men}
#' \item{IMMIGRANT_W_ENROLL}{Nonresident alien women}
#' }
#'
#'
#' @source Download from Integrated Postsecondary Education Data System,
#'   <https://nces.ed.gov/ipeds/datacenter/data/EF2020A.zip>.
#'
#' @docType data
"fall_enroll2020"

#' Student Financial Aid Data 2019 - 2020
#'
#' Provisional release data have undergone all NCES data quality control procedures. Data are imputed for nonresponding institutions.
#'
#' @format A data frame of 5859 rows representing institutions and 91 variables
#'
#' \describe{
#' \item{INSTITUTION_ID}{Unique identification number of the institution}
#' \item{UG_NUM}{Total number of undergraduates - full-year cohort}
#' \item{PCT_AID}{Percent of undergraduate students awarded federal, state, local, institutional or other sources of grant aid}
#' \item{AVG_AID}{Average amount of federal, state, local, institutional or other sources of grant aid awarded to undergraduate students}
#' \item{AVG_PELL}{Average amount Pell grant aid awarded to undergraduate students}
#' \item{AVG_FLOAN}{Average amount of federal student loans awarded to undergraduate students}
#' \item{AVG_AWRD}{Average amount of federal, state, local or institutional grant aid awarded}
#' \item{AVG_FGRANT_FTFT}{Average amount of federal grant aid awarded to full-time first-time undergraduates}
#' \item{AVG_PGRANT_FTFT}{Average amount of Pell grant aid awarded to full-time first-time undergraduates}
#' \item{AVG_FOTHER_FTFT}{Average amount of other federal grant aid awarded to full-time first-time undergraduates}
#' \item{AVG_STGRANT_FTFT}{Average amount of state/local grant aid awarded to full-time first-time undergraduates}
#' \item{AVG_INST_AID_FTFT}{Average amount of institutional grant aid awarded to full-time first-time undergraduates}
#' \item{AVG_LOAN_FTFT}{Average amount of student loans awarded to full-time first-time undergraduates}
#' \item{AVG_FLOAN_FTFT}{Average amount of federal student loans awarded to full-time first-time undergraduates}
#' \item{AVG_OLOAN_FTFT}{Average amount of other student loans awarded to full-time first-time undergraduates}
#' \item{IS_AVG_GAID_1920}{Average amount of grant and scholarship aid awarded, 2019-20}
#' \item{IS_AVG_GAID_1819}{Average amount of grant and scholarship aid awarded, 2018-19}
#' \item{IS_AVG_GAID_1718}{Average amount of grant and scholarship aid awarded, 2017-18}
#' \item{AVG_AID_AL_1920}{Average amount of grant and scholarship aid awarded, all income levels, 2019-20}
#' \item{AVG_AID_L1_1920}{Average amount of grant and scholarship aid awarded, income level (0-30,000), 2019-20}
#' \item{AVG_AID_L2_1920}{Average amount of grant and scholarship aid awarded, income level (30,001-48,000), 2019-20}
#' \item{AVG_AID_L3_1920}{Average amount of grant and scholarship aid awarded, income level (48,001-75,000), 2019-20}
#' \item{AVG_AID_L4_1920}{Average amount of grant and scholarship aid awarded, income level (75,001-110,000), 2019-20}
#' \item{AVG_AID_L5_1920}{Average amount of grant and scholarship aid awarded, income level (110,001 or more), 2019-20}
#' \item{AVG_AID_AL_1819}{Average amount of grant and scholarship aid awarded, all income levels, 2018-19}
#' \item{AVG_AID_L1_1819}{Average amount of grant and scholarship aid awarded, income level (0-30,000), 2018-19}
#' \item{AVG_AID_L2_1819}{Average amount of grant and scholarship aid awarded, income level (30,001-48,000), 2018-19}
#' \item{AVG_AID_L3_1819}{Average amount of grant and scholarship aid awarded, income level (48,001-75,000), 2018-19}
#' \item{AVG_AID_L4_1819}{Average amount of grant and scholarship aid awarded, income level (75,001-110,000), 2018-19}
#' \item{AVG_AID_L5_1819}{Average amount of grant and scholarship aid awarded, income level (110,001 or more), 2018-19}
#' \item{AVG_AID_AL_1718}{Average amount of grant and scholarship aid awarded, all income levels, 2017-18}
#' \item{AVG_AID_L1_1718}{Average amount of grant and scholarship aid awarded, income level (0-30,000), 2017-18}
#' \item{AVG_AID_L2_1718}{Average amount of grant and scholarship aid awarded, income level (30,001-48,000), 2017-18}
#' \item{AVG_AID_L3_1718}{Average amount of grant and scholarship aid awarded, income level (48,001-75,000), 2017-18}
#' \item{AVG_AID_L4_1718}{Average amount of grant and scholarship aid awarded, income level (75,001-110,000), 2017-18}
#' \item{AVG_AID_L5_1718}{Average amount of grant and scholarship aid awarded, income level (110,001 or more), 2017-18}
#' \item{AVG_NPRICE_1920}{Average net price-students awarded grant or scholarship aid, 2019-20}
#' \item{AVG_NPRICE_1819}{Average net price-students awarded grant or scholarship aid, 2018-19}
#' \item{AVG_NPRICE_1718}{Average net price-students awarded grant or scholarship aid, 2017-18}
#' \item{AVG_NPRICE_L1_1920}{Average net price (income 0-30,000)-students awarded Title IV federal financial aid, 2019-20}
#' \item{AVG_NPRICE_L2_1920}{Average net price (income 30,001-48,000)-students awarded Title IV federal financial aid, 2019-20}
#' \item{AVG_NPRICE_L3_1920}{Average net price (income 48,001-75,000)-students awarded Title IV federal financial aid, 2019-20}
#' \item{AVG_NPRICE_L4_1920}{Average net price (income 75,001-110,000)-students awarded Title IV federal financial aid, 2019-20}
#' \item{AVG_NPRICE_L5_1920}{Average net price (income over 110,000)-students awarded Title IV federal financial aid, 2019-20}
#' \item{AVG_NPRICE_L1_1819}{Average net price (income 0-30,000)-students awarded Title IV federal financial aid, 2018-19}
#' \item{AVG_NPRICE_L2_1819}{Average net price (income 30,001-48,000)-students awarded Title IV federal financial aid, 2018-19}
#' \item{AVG_NPRICE_L3_1819}{Average net price (income 48,001-75,000)-students awarded Title IV federal financial aid, 2018-19}
#' \item{AVG_NPRICE_L4_1819}{Average net price (income 75,001-110,000)-students awarded Title IV federal financial aid, 2018-19}
#' \item{AVG_NPRICE_L5_1819}{Average net price (income over 110,000)-students awarded Title IV federal financial aid, 2018-19}
#' \item{AVG_NPRICE_L1_1718}{Average net price (income 0-30,000)-students awarded Title IV federal financial aid, 2017-18}
#' \item{AVG_NPRICE_L2_1718}{Average net price (income 30,001-48,000)-students awarded Title IV federal financial aid, 2017-18}
#' \item{AVG_NPRICE_L3_1718}{Average net price (income 48,001-75,000)-students awarded Title IV federal financial aid, 2017-18}
#' \item{AVG_NPRICE_L4_1718}{Average net price (income 75,001-110,000)-students awarded Title IV federal financial aid, 2017-18}
#' \item{AVG_NPRICE_L5_1718}{Average net price (income over 110,000)-students awarded Title IV federal financial aid, 2017-18}
#' \item{OS_AVG_GAID_1718}{Average amount of grant and scholarship aid awarded, 2017-18}
#' \item{OS_AVG_GAID_AL_1920}{Average amount of grant and scholarship aid awarded, all income levels, 2019-20}
#' \item{OS_AVG_GAID_L1_1920}{Average amount of grant and scholarship aid awarded, income level (0-30,000), 2019-20}
#' \item{OS_AVG_GAID_L2_1920}{Average amount of grant and scholarship aid awarded, income level (30,001-48,000), 2019-20}
#' \item{OS_AVG_GAID_L3_1920}{Average amount of grant and scholarship aid awarded, income level (48,001-75,000), 2019-20}
#' \item{OS_AVG_GAID_L4_1920}{Average amount of grant and scholarship aid awarded, income level (75,001-110,000), 2019-20}
#' \item{OS_AVG_GAID_L5_1920}{Average amount of grant and scholarship aid awarded, income level (110,001 or more), 2019-20}
#' \item{OS_AVG_GAID_AL_1819}{Average amount of grant and scholarship aid awarded, all income levels, 2018-19}
#' \item{OS_AVG_GAID_L1_1819}{Average amount of grant and scholarship aid awarded, income level (0-30,000), 2018-19}
#' \item{OS_AVG_GAID_L2_1819}{Average amount of grant and scholarship aid awarded, income level (30,001-48,000), 2018-19}
#' \item{OS_AVG_GAID_L3_1819}{Average amount of grant and scholarship aid awarded, income level (48,001-75,000), 2018-19}
#' \item{OS_AVG_GAID_L4_1819}{Average amount of grant and scholarship aid awarded, income level (75,001-110,000), 2018-19}
#' \item{OS_AVG_GAID_L5_1819}{Average amount of grant and scholarship aid awarded, income level (110,001 or more), 2018-19}
#' \item{OS_AVG_GAID_AL_1718}{Average amount of grant and scholarship aid awarded, all income levels, 2017-18}
#' \item{OS_AVG_GAID_L1_1718}{Average amount of grant and scholarship aid awarded, income level (0-30,000), 2017-18}
#' \item{OS_AVG_GAID_L2_1718}{Average amount of grant and scholarship aid awarded, income level (30,001-48,000), 2017-18}
#' \item{OS_AVG_GAID_L3_1718}{Average amount of grant and scholarship aid awarded, income level (48,001-75,000), 2017-18}
#' \item{OS_AVG_GAID_L4_1718}{Average amount of grant and scholarship aid awarded, income level (75,001-110,000), 2017-18}
#' \item{OS_AVG_GAID_L5_1718}{Average amount of grant and scholarship aid awarded, income level (110,001 or more), 2017-18}
#' \item{OS_AVG_NPRICE_1920}{Average net price-students awarded grant or scholarship aid, 2019-20}
#' \item{OS_AVG_NPRICE_1819}{Average net price-students awarded grant or scholarship aid, 2018-19}
#' \item{OS_AVG_NPRICE_1718}{Average net price-students awarded grant or scholarship aid, 2017-18}
#' \item{OS_AVG_NPRICE_L1_1920}{Average net price (income 0-30,000)-students awarded Title IV federal financial aid, 2019-20}
#' \item{OS_AVG_NPRICE_L2_1920}{Average net price (income 30,001-48,000)-students awarded Title IV federal financial aid, 2019-20}
#' \item{OS_AVG_NPRICE_L3_1920}{Average net price (income 48,001-75,000)-students awarded Title IV federal financial aid, 2019-20}
#' \item{OS_AVG_NPRICE_L4_1920}{Average net price (income 75,001-110,000)-students awarded Title IV federal financial aid, 2019-20}
#' \item{OS_AVG_NPRICE_L5_1920}{Average net price (income over 110,000)-students awarded Title IV federal financial aid, 2019-20}
#' \item{OS_AVG_NPRICE_L1_1819}{Average net price (income 0-30,000)-students awarded Title IV federal financial aid, 2018-19}
#' \item{OS_AVG_NPRICE_L2_1819}{Average net price (income 30,001-48,000)-students awarded Title IV federal financial aid, 2018-19}
#' \item{OS_AVG_NPRICE_L3_1819}{Average net price (income 48,001-75,000)-students awarded Title IV federal financial aid, 2018-19}
#' \item{OS_AVG_NPRICE_L4_1819}{Average net price (income 75,001-110,000)-students awarded Title IV federal financial aid, 2018-19}
#' \item{OS_AVG_NPRICE_L5_1819}{Average net price (income over 110,000)-students awarded Title IV federal financial aid, 2018-19}
#' \item{OS_AVG_NPRICE_L1_1718}{Average net price (income 0-30,000)-students awarded Title IV federal financial aid, 2017-18}
#' \item{OS_AVG_NPRICE_L2_1718}{Average net price (income 30,001-48,000)-students awarded Title IV federal financial aid, 2017-18}
#' \item{OS_AVG_NPRICE_L3_1718}{Average net price (income 48,001-75,000)-students awarded Title IV federal financial aid, 2017-18}
#' \item{OS_AVG_NPRICE_L4_1718}{Average net price (income 75,001-110,000)-students awarded Title IV federal financial aid, 2017-18}
#' \item{OS_AVG_NPRICE_L5_1718}{Average net price (income over 110,000)-students awarded Title IV federal financial aid, 2017-18}
#' }
#'
#' @docType data
"fin_aid1920"




#' Staff Categories Data
#'
#' This file contains the details for staff categories in the Administration 2020 (`admin2020`) dataset.
#'
#' @format A data frame of 65 rows representing institutions and 2 variables
#'
#' \describe{
#' \item{Numeric_Code}{Numeric code representing a staff category}
#' \item{Category}{Explaination of numeric code}
#' }
#'
#'
#' @docType data
"staff_cat"


