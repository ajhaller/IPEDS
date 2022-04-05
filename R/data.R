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
