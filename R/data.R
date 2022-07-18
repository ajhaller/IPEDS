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
#' \item{STAFF_CAT}{Staff Category (Refer to `staff_cat` dataset for more details.)}
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
#' \item{Conference}{Explanation of numeric code}
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
#' \item{BEA_REG}{Bureau of Economic Analysis (BEA) regions} (0 = US Service Schools; 1 = New England CT ME MA NH RI VT; 2 = Mid East DE DC MD NJ NY PA; 3 = Great Lakes IL IN MI OH WI; 4 = Plains IA KS MN MO NE ND SD; 5 = Southeast AL AR FL GA KY LA MS NC SC TN VA WV; 6 = Southwest AZ NM OK TX; 7 = Rocky Mountains CO ID MT UT WY; 8 = Far West AK CA HI NV OR WA; 9 = Outlying areas AS FM GU MH MP PR PW VI; -3 = Not available)
#' \item{AID_ELIG}{OPE Title IV eligibility indicator code (1 = Participates in Title IV federal financial aid programs; 2 = Branch campus of a main campus that participates in Title IV; 3 = Deferment only - limited participation; 5 = Not currently participating in Title IV, has an OPE ID number; 6 = Not currently participating in Title IV, does not have OPE ID number; 7 = Stopped participating during the survey year; 8 = New participants (became eligible during spring collection)}
#' \item{WEBSITE}{Institution's internet website address}
#' \item{ADMIN_WEB}{Admissions office web address}
#' \item{FINAID_WEB}{Financial aid office web address}
#' \item{APPLICATION}{Online application web address}
#' \item{NPRICE_CALC}{Net price calculator web address}
#' \item{VET_TUITION}{Veterans and Military Servicemembers tuition policies web address}
#' \item{ATH_GRAD_RATE}{Student-Right-to-Know student athlete graduation rate web address}
#' \item{DISABILITY_WEB}{Disability Services Web Address}
#' \item{INT_LEVEL}{Level of institution (1 = Four or more years; 2 = At least 2 but less than 4 years; 3 = Less than 2 years (below associate); -3 = {Not available})}
#' \item{INT_CONTROL}{Control of institution (1 = Public; 2 = Private not-for-profit; 3 = Private for-profit; -3 = {Not available})}
#' \item{UNGRAD_OFFER}{Undergraduate offering (1 = Undergraduate degree or certificate offering; 2 = No undergraduate offering; -3 = {Not available})}
#' \item{GRAD_OFFER}{Graduate offering (1 = Graduate degree or certificate offering; 2 = No graduate offering; -3 = {Not available})}
#' \item{HD_OFFER}{Degree-granting status (1 = Degree granting; 2 = Nondegree-granting, primarily post-secondary; -3 = {Not available})}
#' \item{HBCU}{Historically Black College or University (1 = Yes; 2 = No)}
#' \item{HOSPITAL}{Institution has hospital (1 = Yes; 2 = No; -1 = Not reported; -2 = Not applicable)}
#' \item{MEDICAL}{Institution grants a medical degree (1 = Yes; 2 = No; -1 = Not reported; -2 = Not applicable)}
#' \item{TRIBAL}{Tribal college (1 = Yes; 2 = No)}
#' \item{LOCALE}{Degree of urbanization (Urban-centric locale) (11 = City: Large; 12 = City: Midsize; 13 = City: Small; 21 = Suburb: Large; 22 = Suburb: Midsize; 23 = Suburb: Small; 31 = Town: Fringe; 32 = Town: Distant; 33 = Town: Remote; 41 = Rural: Fringe; 42 = Rural: Distant; 43 = Rural: Remote; -3 = {Not available})}
#' \item{OPENPUBL}{Institution open to the general public (1 = Institution is open to the public; 0 = Institution is not open to the public)}
#' \item{INT_STATUS}{Status of institution (A = Active; N = New(active) - added during the current year; R = Restore(active) restored to the current universe; M = Closed in current year (active has data); C = Combined with other institution; D = Delete out of business; G = Perfect child campus - data reported with main campus, but is listed on college navigator)}
#' \item{CLOSE_DATE}{Date institution closed}
#' \item{POST_SEC}{Postsecondary institution indicator (1 = Primarily postsecondary institution; 2 = Not primarily postsecondary)}
#' \item{RPTMTH}{Reporting method for student charges, graduation rates, retention rates and student financial aid (1 = Student charges for full academic year and fall GR/SFA/retention rate cohort; 2 = Student charges by program and full-year GR/SFA/retention rate cohort; 3 = Student charges for full academic year and full-year GR/SFA/retention rate cohort; -1 = Not reported; -2 = Not applicable)}
#' \item{CC_U2018}{Carnegie Classification 2018: Undergraduate Instructional Program (1 = Associate's Colleges: High Transfer; 2 = Associate's Colleges: Mixed Transfer/Career & Technical; 3 = Associate's Colleges: High Career & Technical; 4 = Special Focus: Two-Year Institution; 5 = Baccalaureate/Associates Colleges; 6 = Arts & sciences focus, no graduate coexistence; 7 = Arts & sciences focus, some graduate coexistence; 8 = Arts & sciences focus, high graduate coexistence; 9 = Arts & sciences plus professions, no graduate coexistence; 10 = Arts & sciences plus professions, some graduate coexistence; 11 = Arts & sciences plus professions, high graduate coexistence; 12 = Balanced arts & sciences/professions, no graduate coexistence; 13 = Balanced arts & sciences/professions, some graduate coexistence; 14 = Balanced arts & sciences/professions, high graduate coexistence; 15 = Professions plus arts & sciences, no graduate coexistence; 16 = Professions plus arts & sciences, some graduate coexistence; 17 = Professions plus arts & sciences, high graduate coexistence; 18 = Professions focus, no graduate coexistence; 19 = Professions focus, some graduate coexistence; 20 = Professions focus, high graduate coexistence; 0 = Not Classified (Exclusively Graduate Programs); -2 = Not applicable, not in Carnegie universe (not accredited or nondegree-granting))}
#' \item{CC_G2018}{Carnegie Classification 2018: Graduate Instructional Program (1 = Postbaccalaureate: Single program-Education; 2 = Postbaccalaureate: Single program-Business; 3 = Postbaccalaureate: Single program-Other; 4 = Postbaccalaureate: Comprehensive programs; 5 = Postbaccalaureate: Arts & sciences-dominant; 6 = Postbaccalaureate: Education-dominant, with Arts & Sciences; 7 = Postbaccalaureate: Business-dominant, with Arts & Sciences; 8 = Postbaccalaureate: Other-dominant, with Arts & Sciences; 9 = Postbaccalaureate: Education-dominant, with other professional programs; 10 = Postbaccalaureate: Business-dominant, with other professional programs; 11 = Postbaccalaureate: Other-dominant, with other professional programs; 12 = Research Doctoral: Single program-Education; 13 = Research Doctoral: Single program-Other; 14 = Research Doctoral: Comprehensive programs, with medical/veterinary school; 15 = Research Doctoral: Comprehensive programs, no medical/veterinary school; 16 = Research Doctoral: Humanities/social sciences-dominant; 17 = Research Doctoral: STEM-dominant; 18 = Research Doctoral: Professional-dominant; 0 = Not classified (Exclusively Undergraduate); -2 =  Not applicable, not in Carnegie universe (not accredited or nondegree-granting))}
#' \item{CC18_U_PROFILE}{Carnegie Classification 2018: Undergraduate Profile (1 = Two-year, higher part-time; 2 = Two-year, mixed part/full-time; 3 = Two-year, medium full-time; 4 = Two-year, higher full-time; 5 = Four-year, higher part-time; 6 = Four-year, medium full-time, inclusive, lower transfer-in; 7 = Four-year, medium full-time, inclusive, higher transfer-in; 8 = Four-year, medium full-time, selective, lower transfer-in; 9 = Four-year, medium full-time , selective, higher transfer-in; 10 = Four-year, full-time, inclusive, lower transfer-in; 11 = Four-year, full-time, inclusive, higher transfer-in; 12 = Four-year, full-time, selective, lower transfer-in; 13 = Four-year, full-time, selective, higher transfer-in; 14 = Four-year, full-time, more selective, lower transfer-in; 15 = Four-year, full-time, more selective, higher transfer-in; 0 = Not classified (Exclusively Graduate); -2 = Not applicable, not in Carnegie universe (not accredited or nondegree-granting))}
#' \item{CC18_ENROLL}{Carnegie Classification 2018: Enrollment Profile (1 = Exclusively undergraduate two-year; 2 = Exclusively undergraduate 4-year; 3 = Very high undergraduate; 4 = High undergraduate; 5 = Majority undergraduate; 6 = Majority graduate; 7 = Exclusively graduate; 8 = Not applicable)}
#' \item{CC18_SIZE_SET}{Carnegie Classification 2018: Size and Setting (1 = Two-year, very small; 2 = Two-year, small; 3 = Two-year, medium; 4 = Two-year, large; 5 = Two-year, very large; 6 = Four-year, very small, primarily nonresidential; 7 = Four-year, very small, primarily residential; 8 = Four-year, very small, highly residential; 9 = Four-year, small, primarily nonresidential; 10 = Four-year, small, primarily residential; 11 = Four-year, small, highly residential; 12 = Four-year, medium, primarily nonresidential; 13 = Four-year, medium, primarily residential; 14 = Four-year, medium, highly residential; 15 = Four-year, large, primarily nonresidential; 16 = Four-year, large, primarily residential; 17 = Four-year, large, highly residential; 18 = Exclusively graduate/professional; -2 =  Not applicable, not in Carnegie universe (not accredited or nondegree-granting))}
#' \item{C_PROGRAMS}{Carnegie Classification 2000 (15 = Doctoral/Research Universities--Extensive; 16 = Doctoral/Research Universities--Intensive; 21 = Masters Colleges and Universities I; 22 = Masters Colleges and Universities II; 31 = Baccalaureate Colleges--Liberal Arts; 32 = Baccalaureate Colleges--General; 33 = Baccalaureate/Associates Colleges; 40 = Associates Colleges; 51 = Theological seminaries and other specialized faith-related institutions; 52 = Medical schools and medical centers; 53 = Other separate health profession schools; 54 = Schools of engineering and technology; 55 = Schools of business and management; 56 = Schools of art, music, and design; 57 = Schools of law; 58 = Teachers colleges; 59 = Other specialized institutions; 60 = Tribal colleges; -2 = Not applicable, not in Carnegie universe (not accredited or nondegree-granting))}
#' \item{INT_SIZE}{Institution size category (1	= Under 1,000; 2 = 1,000 - 4,999; 3	= 5,000 - 9,999; 4 = 10,000 - 19,999; 5	= 20,000 and above; -1 = Not reported; -2	= Not applicable)}
#' \item{MULT_ORG}{Multi-institution or multi-campus organization (1 = Institution is part of a multi-institution or multi-campus organization; 2 = Institution is NOT part of a multi-institution or multi-campus organization; -1 = Not reported; -2 = Not applicable)}
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
#' Note: Unless otherwise defined, 1 = Yes; 0 = Implied No; -1 = Not Reported; and -2 = Not Applicable
#'
#' @format A data frame of 6264 rows representing institutions and 114 variables
#'
#' \describe{
#' \item{INSTITUTION_ID}{Unique identification number of the institution}
#' \item{OCCUPATIONAL}{Occupational Program - A program of study consisting of one or more courses, designed to provide the student with sufficient knowledge and skills to perform in a specific occupation.}
#' \item{ACADEMIC}{Academic Program - Instructional program leading toward an associate's, bachelor's, master's, doctor's, or first-professional degree or resulting in credits that can be applied to one of these degrees. }
#' \item{CONTIN_PROFESS}{Continuing Professional Education - Programs and courses designed specifically for individuals who have completed a professional degree (such as law, medicine, dentistry, or social work) to obtain additional training in their particular field of study }
#' \item{RECREATE_AVO}{Avocational Programs - Instructional programs in personal interest and leisure categories whose expressed intent is not to produce postsecondary credits, nor to lead to a formal award or an academic degree, nor result in occupationally specific skills.}
#' \item{REMEDIAL}{Adult Basic Education - Courses designed primarily for students 16 years of age and older to improve basic skills in reading, writing, and arithmetic. These courses are not intended to be part of a program leading to a high school degree, nor are they part of any academic, occupational, or vocational program at the postsecondary level. }
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
#' \item{DOC_RS}{What award levels are offered by your institution? Doctorate's degree - research/scholarship}
#' \item{DOC_P}{What award levels are offered by your institution? Doctorate's degree - professional practice}
#' \item{DOC_O}{What award levels are offered by your institution? Doctorate's degree - other}
#' \item{CALSYS}{Standard academic term (1	= Semester, 2	= Quarter, 3 = Trimester, 4	= Four-one-four plan, 5	= Other academic year, 6 = Differs by program, 7 = Continuous, -2	= Not applicable)}
#' \item{FT_UG}{Undergraduate (academic or occupational programs), full-time students}
#' \item{FT_FTUG}{First-time degree/certificate-seeking undergraduate, full-time students}
#' \item{FTGDNIDP}{Graduate (not including doctor's professional practice), full-time students}
#' \item{PT_UG}{Undergraduate (academic or occupational programs), part-time students}
#' \item{PT_FTUG}{First-time degree/certificate-seeking undergraduate, part-time students}
#' \item{PTGDNIDP}{Graduate (not including doctor's professional practice), part-time students}
#' \item{DOC_P_E}{Students in doctor's - professional practice programs}
#' \item{DOC_PF}{Students in doctor's - professional practice programs}
#' \item{OPENADMP}{Open Admission - Admission policy whereby the school will accept any student who applies.}
#' \item{VET_YELLOWR}{Yellow Ribbon Program - A voluntary program through which participating public and private institutions can provide veterans and eligible beneficiaries additional institutional aid to cover the costs of tuition and fees at their institutions. The Yellow Ribbon Program is a supplementary program to the Post 9/11 GI Bill coverage of in-state tuition and fees. The Department of Veterans Affairs matches the institutional aid provided beyond the in-state tuition and fees, but to certain limit each year}
#' \item{VET_MTC}{Credit for Military Training - Postsecondary credit granted by institutions to military servicemen or veterans for experiences and training gained while in the service.}
#' \item{VET_SUPP}{Dedicated point of contact for support services for veterans, military service members, and their families }
#' \item{VET_ORG}{Recognized student veteran organization }
#' \item{VET_SOC}{Member of Service members Opportunity Colleges }
#' \item{VET_NA}{None of aforementioned programs available to veterans, military servicemembers, or their families}
#' \item{DUAL}{Accept Dual Enrollment - Refers to students who enroll in college courses offered by an institution of higher education while enrolled in high school or seeking a recognized equivalent. Student performance is recorded on a college transcript and postsecondary credit is awarded for a passing grade in the course. Includes: All postsecondary courses, independent of course delivery mode, course location, course instructor, whether secondary credit is also offered, and whether the student enrolls through a formal state/local program or enrolls outside a formal state/local program. Excludes: Credit-by-exam models such as Advanced Placement and International Baccalaureate in which the student is not enrolled in a postsecondary institution.}
#' \item{LIFE_EXP}{Accept Credit for Life Experiences - Credit earned by students for what they have learned through independent study, noncredit adult courses, work experience, portfolio demonstration, previous licensure or certification, or completion of other learning opportunities (military, government, or professional). Credit may also be awarded through a credit by examination program}
#' \item{AP}{Accept Advanced Placement - Advanced placement courses are college-level courses taught in high school. Students may take an examination at the completion of the course; acceptable scores allow students to earn college credit.}
#' \item{CRED_NA}{Accept none of the aforementioned credit}
#' \item{ROTC}{ROTC}
#' \item{ROTC_ARMY}{ROTC Army}
#' \item{ROTC_NAVY}{ROTC Navy}
#' \item{ROTC_AIR}{ROTC Air Force}
#' \item{STUDY_ABROAD}{Study Abroad - Arrangement by which a student completes part of the college program studying in another country. Can be at a campus abroad or through a cooperative agreement with some other U.S. college or an institution of another country.}
#' \item{WKEND_EV}{Weekend/evening College - A program that allows students to take a complete course of study and attend classes only on weekends or only in evenings.}
#' \item{TEACH_CERT}{Teacher certification (below the postsecondary level) }
#' \item{TEACH_CERT_S}{Teacher certification (below the postsecondary level). Students can complete their  preparation in certain areas of specialization}
#' \item{TEACH_CERT_O}{Teacher certification (below the postsecondary level). Students must complete their preparation at another institution for certain areas of specialization }
#' \item{TEACH_CERT_STATE}{Teacher certification (below the postsecondary level). This institution is approved by the state for the initial certification or licensure of teachers }
#' \item{SLNA}{Institution does not have any of the following special learning opportunities: Accelerated programs, Cooperative (work study), Distance learning, Dual enrollment, ROTC, Study abroad, Weekend college, or Teacher certification (below thepostsecondary level).}
#' \item{YRSCOLL}{Years of completed college-level work are required for entrance (1 = One, 2	= Two, 3 = Three, 4 = Four, 5 = Five, 6 = Six, 8 = Eight, -1 = Not reported, -2	= Not applicable)}
#' \item{REME_SERV}{Offers Remedial Services - Instructional activities designed for students deficient in the general competencies necessary for a regular postsecondary curriculum and educational setting.}
#' \item{ACAREER_SERV}{Offers Counseling Services - Activities designed to assist students in making plans and decisions related to their education, career, or personal development.}
#' \item{EMPLOY_SERV}{Offers Employment Services for Current Students - Activities intended to assist students in obtaining part-time employment as a means of defraying part of the cost of their education.}
#' \item{PLACE_SERV}{Offers Placement Services for Program Completers - Assistance for students in evaluating their career alternatives as well as in obtaining full-time employment upon leaving the institution.}
#' \item{DAYCARE}{Offers Daycare Services - A student service designed to provide appropriate care and protection of infants, preschool, and school-age children so their parents can participate in postsecondary education programs.}
#' \item{SERVNA}{None of the following selected students services are offered: Remedial services, Academic/career counseling services, Employment services for current students, Placement services for program completers, or On-campus day care for children of students}
#' \item{LIB_PHYS}{Library offers Physical facilities}
#' \item{LIB_PRINT}{Library offers an organized collection of printed materials}
#' \item{LIB_DIGI}{Library offers access to digital/electronic resources}
#' \item{LIB_STAFF}{Library offers a staff trained to provide and interpret library materials}
#' \item{LIB_HOURS}{Library offers established library hours}
#' \item{LIB_COLLECT}{Library offers access to library collections that are shared with other institutions}
#' \item{LIB_NA}{Library offers none of the above}
#' \item{TUIT_ALT}{Alternative tuition plans are offered}
#' \item{TUIT_GUARAN}{Offers tuition guarantee}
#' \item{TUIT_PREPAID}{Offers prepaid tuition plan}
#' \item{TUIT_PAY}{Offers tuition payment plan}
#' \item{TUIT_OALT}{Offers other - (not one of the above alternative plans)}
#' \item{DIST_EDUC_UGC}{Offers Undergraduate level distant education courses}
#' \item{DIST_EDUC_UGP}{Offers Undergraduate level distant education programs}
#' \item{DIST_EDUC_UGN}{Undergraduate level distant education not offered}
#' \item{DIST_EDUC_GC}{Offers Graduate level distant education courses}
#' \item{DIST_EDUC_GP}{Offers Graduate level distant education programs}
#' \item{DIST_EDUC_GN}{Graduate level distant education not offered}
#' \item{DIST_EDUC_C}{Offers a course in which the instructional content is delivered exclusively via distance education}
#' \item{DIST_EDUC_P}{Offers Distant education programs offered}
#' \item{DIST_EDUC_UGCP}{Offers Undergraduate distance education opportunities}
#' \item{DIST_EDUC_GCP}{Offers Graduate distance education opportunities}
#' \item{DIST_EDUC_NA}{Does not offer distance education opportunities}
#' \item{DIST_EDUC_ALL}{Offers a program for which all the required coursework for program completion is able to be completed via distance education courses.}
#' \item{DISAB}{Percentage of all undergraduates enrolled in Fall 2019 who are formally registered as students with disabilities with the institution's office of disability services (or the equivalent office)(1 = 3 percent or less, 2 = More than 3 percent)}
#' \item{LIVE_ONCAMP}{First-time degree/certificate-seeking students required to live on campus or in institutionally-controlled housing}
#' \item{TUITVARY}{Charges different tuition for in-district, in-state, or out-of-state students}
#' \item{ROOM}{Provides on-campus housing}
#' \item{ROOMCAP}{Dormitory capacity - The maximum number of students that the institution can provide residential facilities for, whether on or off campus. (off-campus dormitory space that is reserved by the institution).}
#' \item{BOARD}{Provides board or meal plans to students (1	= Yes, number of meals in the maximum meal plan offered, 2 = Yes, number of meals per week can vary)}
#' \item{MEALSWK}{Number of meals per week in the maximum meal plan offered}
#' \item{ROOM_PRICE}{Typical room charges for a student for the full academic year 2018-19 }
#' \item{BOARD_PRICE}{Typical board charges for a student for the full academic year 2018-19 }
#' \item{R_B_PRICE}{Typical room and board charges for a student for the full academic year 2018-19. (applicable only if institution CANNOT separate room and board charges.)}
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
#' @source Download from Integrated Postsecondary Education Data System,
#'   <https://nces.ed.gov/ipeds/datacenter/data/IC2020.zip>.
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
#' \item{Religious_Affiliation}{Explanation of numeric code}
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
#' \item{Category}{Explanation of numeric code}
#' }
#'
#'
#' @docType data
"staff_cat"

#' IPEDS: A Data Package from The Integrated Postsecondary Education Data System
#'
#' The IPEDS package contains data on Postsecondary Institution Statistics in 2020. The package allows easy access to a wide variety of information regarding Postsecondary Institutions, its students, faculty, and their demographics, financial aid, educational and recreational offerings, and completions. This package can be used by students, college counselors, or involved parents interested in pursuing higher education, considering their options, and securing admission into their school of choice.
#'
#' @section Datasets:
#' \if{html}{\figure{hex_IPEDS.png}{options: align = "right" width="45\%" alt="Figure: hex_IPEDS.png"}}
#' \itemize{
#'   \item Admissions and Test Scores for Fall 2020: [adm2020]
#'   \item Administration for 2020: [admin2020]
#'   \item Completions in 2020: [complete2020]
#'   \item Conferences for Sports: [conference]
#'   \item Directory Information for 2020: [dir_info2020]
#'   \item Fall Enrollment for 2020: [fall_enroll2020]
#'   \item Financial Aid Statistics for 2019-2020: [fin_aid1920]
#'   \item Institutional Offerings for 2020: [offerings2020]
#'   \item Religious Affiliations of Institutions: [relig_aff]
#'   \item Staff Categories of Faculty within Institutions: [staff_cat]
#' }
#'
#' @section Authors:
#' \itemize{
#'   \item Aushanae Haller: \url{https://github.com/ajhaller}
#'   \item Alejandra Munoz Garcia: \url{https://github.com/alejanmg}
#' }
#'
#' @docType package
#' @name IPEDS
