#' Admissions and Test Scores 2020 Data
#'
#' This file contains information about the undergraduate selection process for entering first-time, degree/certificate-seeking students. This includes information about admission considerations,  applicants, applicants that were admitted, and admitted students who enrolled. SAT and ACT test scores are included for institutions, that require test scores for admission. These data are applicable for institutions that do not have an open admissions policy for entering first-time students. Beginning with 2016, writing scores for both SAT and ACT are no longer collected. The possible values for the admission consideration variables have changed from data prior to 2016.  ""Do not know"" is no longer an option and ""considered but not required"" was added.  See frequencies for complete listing.
#'
#' @format A data frame of XXX rows representing hourly measurements and 40 variables
#'
#' \describe{
#' \item{UNITID}{Unique identification number of the institution}
#' \item{ADMCON1}{Secondary school GPA}
#' \item{ADMCON2}{Secondary school rank}
#' \item{ADMCON3}{Secondary school record}
#' \item{ADMCON4}{Completion of college-preparatory program}
#' \item{ADMCON5}{Recommendations}
#' \item{ADMCON6}{Formal demonstration of competencies}
#' \item{ADMCON7}{Admission test scores}
#' \item{ADMCON8}{TOEFL (Test of English as a Foreign Language}
#' \item{ADMCON9}{Other Test (Wonderlic, WISC-III, etc.}
#' \item{APPLCN}{Applicants total}
#' \item{APPLCNM}{Applicants men}
#' \item{APPLCNW}{Applicants men}
#' \item{ADMSSN}{Admissions total}
#' \item{ADMSSNM}{Admissions men}
#' \item{ADMSSNW}{Admissions women}
#' \item{ENRLT}{Enrolled total}
#' \item{ENRLTM}{Enrolled men}
#' \item{ENRLTW}{Enrolled women}
#' \item{ENRLFT}{Enrolled full time total}
#' \item{ENRLFTM}{Enrolled full time men}
#' \item{ENRLFTW}{Enrolled full time women}
#' \item{ENRLPT}{Enrolled part time total}
#' \item{ENRLPTM}{Enrolled part time men}
#' \item{ENRLPTW}{Enrolled part time women}
#' \item{SATNUM}{Number of first-time degree/certificate-seeking students submitting SAT scores}
#' \item{SATPCT}{Percent of first-time degree/certificate-seeking students submitting SAT scores}
#' \item{ACTNUM}{Number of first-time degree/certificate-seeking students submitting ACT scores}
#' \item{ACTPCT}{Percent of first-time degree/certificate-seeking students submitting ACT scores}
#' \item{SATVR25}{SAT Evidence-Based Reading and Writing 25th percentile score}
#' \item{SATVR75}{SAT Evidence-Based Reading and Writing 75th percentile score}
#' \item{SATMT25}{SAT Math 25th percentile score}
#' \item{SATMT75}{SAT Math 75th percentile score}
#' \item{ACTCM25}{ACT Composite 25th percentile score}
#' \item{ACTCM75}{ACT Composite 75th percentile score}
#' \item{ACTEN25}{ACT English 75th percentile score}
#' \item{ACTEN75}{ACT English 75th percentile score}
#' \item{ACTMT25}{ACT Math 25th percentile score}
#' \item{ACTMT75}{ACT Math 75th percentile score}
#' }
#'
#' @source Download from Integrated Postsecondary Education Data System,
#'   <https://nces.ed.gov/ipeds/datacenter/data/ADM2020.zip>.
#'
#' @docType data
"adm2020"
