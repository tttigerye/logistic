# logistic

## Overview

logistic is a tool package that aim to solve the issues happens during the analysis
of Logistic Regression, and generate basic analysis result:

- `describe_data()` adds new variables that are functions of existing variables
- `standardize()` picks variables based on their names.
- `upsampling()` picks cases based on their values.
- `logistic_function()` reduces multiple values down to a single summary.
- `fit_logistic_regression()` changes the ordering of the rows.
- `fit_logistic_regression_to_data()` changes the ordering of the rows.

These all combine naturally with `group_by()` which allows you to
perform any operation “by group”. You can learn more about them in
`vignette("dplyr")`. As well as these single-table verbs, dplyr also
provides a variety of two-table verbs, which you can learn about in
`vignette("two-table")`.

If you are new to dplyr, the best place to start is the [data
transformation chapter](https://r4ds.hadley.nz/data-transform) in R for
Data Science.
