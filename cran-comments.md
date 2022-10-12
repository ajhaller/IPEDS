## R CMD check results

0 errors | 0 warnings | 0 note


# Resubmission
This is a resubmission. In this version I have:

* Provided a link to the used data to the description field
of my DESCRIPTION file in the form
<http:...> or <https:...>
with angle brackets for auto-linking and no space after 'http:' and
'https:'.

* Reset user's options() in after I changed it in examples and vignettes and demos. -> inst/doc/IPEDS-vignette.R

* Removed messages printed to console from R/admission_reqs.R, and it instead returns a tibble that can be used to extract the
information a user is interested in, and then print() that object.
