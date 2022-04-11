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

#' Conferences Data
#'
#' This file contains the details for conferences in the Offerings 2020 (`offerings2020`) dataset.
#'
#' @format A data frame of 500 rows representing conferences and 3 variables
#'
#' \describe{
#' \item{Numeric_Code}{Numeric code representing a conference}
#' \item{Conference}{Explaination of numeric code}
#' \item{Sport}{Type of sport for each conference}
#' }
#'
#'
#' @docType data
"conference"

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
#' \item{INT_SIZE}{Institution size category (1	= Under 1,000; 2 = 1,000 - 4,999; 3	= 5,000 - 9,999; 4 = 10,000 - 19,999; 5	= 20,000 and above; -1 = Not reported; -2	= Not applicable)}
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
#' @source Download from Integrated Postsecondary Education Data System,
#'   <https://nces.ed.gov/ipeds/datacenter/data/SFA1920.zip>.
#'
#' @docType data
"fin_aid1920"

#' Offerings Data
#'
#' This file contains data on program and award level offerings, control and affiliation of institution. It also contains information on special learning opportunities, student services, disability services, tuition plans and athletic conference associations. Services and programs for service members and veterans are also included.
#'
#' Provisional release data have undergone all NCES data quality control procedures. Data are imputed for nonresponding institutions.
#'
#' @format A data frame of 6264 rows representing institutions and 114 variables
#'
#' \describe{
#' \item{INSTITUTION_ID}{Unique identification number of the institution}
#' \item{OCCUPATIONAL}{OCCUPATIONAL PROGRAM - A program of study consisting of one or more courses, designed to provide the student with sufficient knowledge and skills to perform in a specific occupation.}
#' \item{ACADEMIC}{ACADEMIC PROGRAM - Instructional program leading toward an associate's, bachelor's, master's, doctor's, or first-professional degree or resulting in credits that can be applied to one of these degrees. }
#' \item{CONTIN_PROFESS}{CONTINUING PROFESSIONAL EDUCATION - Programs and courses designed specifically for individuals who have completed a professional degree (such as law, medicine, dentistry, or social work) to obtain additional training in their particular field of study }
#' \item{RECREATE_AVO}{AVOCATIONAL PROGRAMS - Instructional programs in personal interest and leisure categories whose expressed intent is not to produce postsecondary credits, nor to lead to a formal award or an academic degree, nor result in occupationally specific skills.}
#' \item{REMEDIAL}{ADULT BASIC EDUCATION - Courses designed primarily for students 16 years of age and older to improve basic skills in reading, writing, and arithmetic. These courses are not intended to be part of a program leading to a high school degree, nor are they part of any academic, occupational, or vocational program at the postsecondary level. }
#' \item{SECONDARY}{Secondary (high school)}
#' \item{AFFILIATION}{Institutional control or affiliation (1	= Public, 2	= Private for-profit, 3	= Private not-for-profit (no religious affiliation), 4 = Private not-for-profit (religious affiliation))}
#' \item{PRIMARY_CON}{Indicates primary control for public institutions (1 = Federal, 2	= State, 3 = Territorial, 4	= School district, 5 = County, 7 = City, 8 = Special district, 9 = Other, -2 = Not applicable)}
#' \item{SECOND_CON}{Indicates secondary control for public institutions (1 = Federal, 2	= State, 3 = Territorial, 4	= School district, 5 = County, 7 = City, 8 = Special district, 9 = Other, -2 = Not applicable)}
#' \item{RELIG_AFF}{Indicates religious affiliation (denomination) for private not-for-profit institutions that are religiously affiliated. (See `relig_aff` dataset for more information.)}
#' \item{CERT_1Y}{What award levels are offered by your institution? Postsecondary award, certificate, or diploma of less than 900 clock hours, or 30 semester or trimester credit hours, or 45 quarter credit hours (less than 1 year)}
#' \item{CERT_12W}{What award levels are offered by your institution? Postsecondary award, certificate, or diploma  of less than 300 clock hours, 9 semester or trimester credit hours, or 13 quarter credit hours  (less than 12 weeks)}
#' \item{CERT_L1Y}{What award levels are offered by your institution? Postsecondary award, certificate, or diploma of  300-899 clock hours, or 9-29 semester or trimester credit hours, or13-44 quarter credit hours (at least 12 weeks, but less than 1 year)}
#' \item{CERT_L2Y}{What award levels are offered by your institution? Postsecondary award, certificate, or diploma of at least 900 but less than 1,800 clock hours, or at least 30 but less than 60 semester or trimester credit hours, or at least 45 but less than 90 quarter credit hours (at least 1 year but less than 2 years)}
#' \item{ASSOCIATES}{What award levels are offered by your institution? Associate's degree }
#' \item{CERT_L4Y}{What award levels are offered by your institution? Postsecondary award, certificate, or diploma of 1,800 or more clock hours, or 60 or more semester or trimester credit hours, or 90 or more quarter credit hours (at least 2 but less than 4 years)}
#' \item{BACHELORS}{What award levels are offered by your institution? Bachelor's degree or equivalent }
#' \item{POST_BACH}{What award levels are offered by your institution? Postbaccalaureate certificate }
#' \item{MASTERS}{What award levels are offered by your institution? Master's degree }
#' \item{POST_MASTERS}{What award levels are offered by your institution? Post-master's certificate}
#' \item{OTHER}{What award levels are offered by your institution? Other; please specify }
#' \item{DOC_RS}{Doctor’s degree - research/scholarship}
#' \item{DOC_P}{What award levels are offered by your institution? Doctor’s degree - professional practice}
#' \item{DOC_O}{What award levels are offered by your institution? Doctor’s degree - other}
#' \item{CALSYS}{Standard academic term (1	= Semester, 2	= Quarter, 3 = Trimester, 4	= Four-one-four plan, 5	= Other academic year, 6 = Differs by program, 7 = Continuous, -2	= Not applicable)}
#' \item{FT_UG}{Undergraduate (academic or occupational programs), full-time students}
#' \item{FT_FTUG}{First-time degree/certificate-seeking undergraduate, full-time students}
#' \item{FTGDNIDP}{Graduate (not including doctor's professional practice), full-time students}
#' \item{PT_UG}{Undergraduate (academic or occupational programs), part-time students}
#' \item{PT_FTUG}{First-time degree/certificate-seeking undergraduate, part-time students}
#' \item{PTGDNIDP}{Graduate (not including doctor's professional practice), part-time students}
#' \item{DOC_P_E}{Students in doctor's - professional practice programs}
#' \item{DOC_PF}{Students in doctor's - professional practice programs}
#' \item{OPENADMP}{OPEN ADMISSION - Admission policy whereby the school will accept any student who applies.}
#' \item{VET_YELLOWR}{Yellow Ribbon Program - A voluntary program through which participating public and private institutions can provide veterans and eligible beneficiaries additional institutional aid to cover the costs of tuitions and fees at their institutions. The Yellow Ribbon Program is a supplementary program to the Post 9/11 GI Bill coverage of in-state tuition and fees. The Department of Veterans Affairs matches the institutional aid provided beyond the in-state tuition and fees, but to certain limit each year}
#' \item{VET_MTC}{Credit for Military Training - Postsecondary credit granted by institutions to military servicemen or veterans for experiences and training gained while in the service.}
#' \item{VET_SUPP}{Dedicated point of contact for support services for veterans, military servicemembers, and their families }
#' \item{VET_ORG}{Recognized student veteran organization }
#' \item{VET_SOC}{Member of Servicemembers Opportunity Colleges }
#' \item{VET_NA}{None of aforementioned programs available to veterans, military servicemembers, or their families}
#' \item{DUAL}{Accept DUAL ENROLLMENT - Refers to students who enroll in college courses offered by an institution of higher education while enrolled in high school or seeking a recognized equivalent. Student performance is recorded on a college transcript and postsecondary credit is awarded for a passing grade in the course. Includes: All postsecondary courses, independent of course delivery mode, course location, course instructor, whether secondary credit is also offered, and whether the student enrolls through a formal state/local program or enrolls outside a formal state/local program. Excludes: Credit-by-exam models such as Advanced Placement and International Baccalaureate in which the student is not enrolled in a postsecondary institution.}
#' \item{LIFE_EXP}{Accept CREDIT FOR LIFE EXPERIENCES - Credit earned by students for what they have learned through independent study, noncredit adult courses, work experience, portfolio demonstration, previous licensure or certification, or completion of other learning opportunities (military, government, or professional). Credit may also be awarded through a credit by examination program}
#' \item{AP}{Accept ADVANCED PLACEMENT - Advanced placement courses are college-level courses taught in high school. Students may take an examination at the completion of the course; acceptable scores allow students to earn college credit.}
#' \item{CRED_NA}{Accept none of the aforementioned credit}
#' \item{ROTC}{ROTC}
#' \item{ROTC_ARMY}{ROTC Army}
#' \item{ROTC_NAVY}{ROTC Navy}
#' \item{ROTC_AIR}{ROTC Air Force}
#' \item{STUDY_ABROAD}{STUDY ABROAD - Arrangement by which a student completes part of the college program studying in another country. Can be at a campus abroad or through a cooperative agreement with some other U.S. college or an institution of another country.}
#' \item{WKEND_EV}{Weekend/evening College - A program that allows students to take a complete course of study and attend classes only on weekends or only in evenings.}
#' \item{TEACH_CERT}{Teacher certification (below the postsecondary level) }
#' \item{TEACH_CERT_S}{Teacher certification (below the postsecondary level). Students can complete their  preparation in certain areas of specialization}
#' \item{TEACH_CERT_O}{Teacher certification (below the postsecondary level). Students must complete their preparation at another institution for certain areas of specialization }
#' \item{TEACH_CERT_STATE}{Teacher certification (below the postsecondary level). This institution is approved by the state for the initial certification or licensure of teachers }
#' \item{SLNA}{Institution does not have any of the following special learning opportunities: Accelerated programs, Cooperative (work study), Distance learning, Dual enrollment, ROTC, Study abroad, Weekend college, or Teacher certification (below thepostsecondary level).}
#' \item{YRSCOLL}{Years of completed college-level work are required for entrance (1 = One, 2	= Two, 3 = Three, 4 = Four, 5 = Five, 6 = Six, 8 = Eight, -1 = Not reported, -2	= Not applicable)}
#' \item{REME_SERV}{Offers REMEDIAL SERVICES - Instructional activities designed for students deficient in the general competencies necessary for a regular postsecondary curriculum and educational setting.}
#' \item{ACAREER_SERV}{Offers COUNSELING SERVICE - Activities designed to assist students in making plans and decisions related to their education, career, or personal development.}
#' \item{EMPLOY_SERV}{Offers EMPLOYMENT SERVICES FOR CURRENT STUDENTS - Activities intended to assist students in obtaining part-time employment as a means of defraying part of the cost of their education.}
#' \item{PLACE_SERV}{Offers PLACEMENT SERVICES FOR PROGRAM COMPLETERS - Assistance for students in evaluating their career alternatives as well as in obtaining full-time employment upon leaving the institution.}
#' \item{DAYCARE}{Offers DAY CARE SERVICE - A student service designed to provide appropriate care and protection of infants, preschool, and school-age children so their parents can participate in postsecondary education programs.}
#' \item{SERVNA}{None of the following selected students serveices are offered: Remedial services, Academic/career counseling services, Employment services for current students, Placement services for program completers, or On-campus day care for children of students}
#' \item{LIB_PHYS}{Library offers Physical facilities}
#' \item{LIB_PRINT}{Library offers An organized collection of printed materials}
#' \item{LIB_DIGI}{Library offers Access to digital/electronic resources}
#' \item{LIB_STAFF}{Library offers A staff trained to provide and interpret library materials}
#' \item{LIB_HOURS}{Library offers Established library hours}
#' \item{LIB_COLLECT}{Library offers Access to library collections that are shared with other institutions}
#' \item{LIB_NA}{Library offers None of the above}
#' \item{TUIT_ALT}{Alternative tuition plans are offered}
#' \item{TUIT_GUARAN}{Offers Tuition guarantee}
#' \item{TUIT_PREPAID}{OFfers Prepaid tuition plan}
#' \item{TUIT_PAY}{Offers Tuition payment plan}
#' \item{TUIT_OALT}{Offers Other - (not one of the above alternative plans)}
#' \item{DIST_EDUC_UGC}{Offers Undergraduate level distant education courses}
#' \item{DIST_EDUC_UGP}{Offers Undergraduate level distant education progams}
#' \item{DIST_EDUC_UGN}{Undergraduate level distant education not offered}
#' \item{DIST_EDUC_GC}{Offers Graduate level distant education courses}
#' \item{DIST_EDUC_GP}{Offers Graduate level distant education progams}
#' \item{DIST_EDUC_GN}{Graduate level distant education not offered}
#' \item{DIST_EDUC_C}{Offers A course in which the instructional content is delivered exclusively via distance education}
#' \item{DIST_EDUC_P}{Offers Distant education progams offered}
#' \item{DIST_EDUC_UGCP}{Offers Undergraduate distance education opportunities}
#' \item{DIST_EDUC_GCP}{Offers Graduate distance education opportunities}
#' \item{DIST_EDUC_NA}{Does not offer distance education opportunites}
#' \item{DIST_EDUC_ALL}{Offers A program for which all the required coursework for program completion is able to be completed via distance education courses.}
#' \item{DISAB}{Percentage of all undergraduates enrolled in Fall 2019 who are formally registered as students with disabilities with the institution's office of disability services (or the equivalent office)}
#' \item{LIVE_ONCAMP}{First-time degree/certificate-seeking students required to live on campus or in institutionally-controlled housing}
#' \item{TUITVARY}{Charges different tuition for in-district, in-state, or out-of-state students}
#' \item{ROOM}{Provides on-campus housing}
#' \item{ROOMCAP}{DORMITORY CAPACITY - The maximum number of students that the institution can provide residential facilities for, whether on or off campus. (off-campus dormitory space that is reserved by the institution).}
#' \item{BOARD}{Provides board or meal plans to students}
#' \item{MEALSWK}{Number of meals per week in the maximum meal plan offered}
#' \item{ROOM_PRICE}{Typical room charges for a student for the full academic year 2018-19 }
#' \item{BOARD_PRICE}{Typical board charges for a student for the full academic year 2018-19 }
#' \item{R_B_PRICE}{Typical room and board charges for a student for the full academic year 2018-19 }
#' \item{APPLFEEU}{Undergraduate application fee amount}
#' \item{APPLFEEG}{Graduate application fee amount}
#' \item{NAA}{Member of National Athletic Association}
#' \item{NCAA}{Member of National Collegiate Athletic Association (NCAA)}
#' \item{NAIA}{Member of National Association of Intercollegiate Athletics (NAIA)}
#' \item{NJCAA}{Member of National Junior College Athletic Association (NJCAA)}
#' \item{NSCAA}{Member of National Small College Athletic Association (NSCAA)}
#' \item{NCCAA}{Member of National Christian College Athletic Association (NCCAA)}
#' \item{AA_NA}{Member of Other, not one of the above associations}
#' \item{MEM_FOOTBALL}{NCAA or NAIA member for football }
#' \item{CON_FOOTBALL}{NCAA or NAIA member for football, conference specified (See `conference` dataset for more details.)}
#' \item{MEM_BASKETBALL}{NCAA or NAIA member for basketball }
#' \item{CON_BASKETBALL}{NCAA or NAIA member for basketball, conference specified (See `conference` dataset for more details.)}
#' \item{MEM_BASEBALL}{NCAA or NAIA member for baseball }
#' \item{CON_BASEBALL}{NCAA or NAIA member for baseball, conference specified (See `conference` dataset for more details.)}
#' \item{MEM_TRACK}{NCAA or NAIA member for cross country/track}
#' \item{CON_TRACK}{NCAA or NAIA member for cross country/track, conference specified (See `conference` dataset for more details.)}
#' }
#'
#'
#' @docType data
"offerings2020"

#' Religious Affiliations Data
#'
#' This file contains the details for religious affiliations in the Offerings 2020 (`offerings2020`) dataset.
#'
#' @format A data frame of 64 rows representing religious affiliations and 2 variables
#'
#' \describe{
#' \item{Numeric_Code}{Numeric code representing a religious affiliation}
#' \item{Religious_Affiliation}{Explaination of numeric code}
#' }
#'
#'
#' @docType data
"relig_aff"

#' Staff Categories Data
#'
#' This file contains the details for staff categories in the Administration 2020 (`admin2020`) dataset.
#'
#' @format A data frame of 65 rows representing staff categories and 2 variables
#'
#' \describe{
#' \item{Numeric_Code}{Numeric code representing a staff category}
#' \item{Category}{Explaination of numeric code}
#' }
#'
#'
#' @docType data
"staff_cat"


