<<<<<<< HEAD
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Logistic 

<!-- badges: start -->

## Overview

logistic is a tool package that aim to solve the issues happens during the analysis
of Logistic Regression, and generate basic analysis result:

- `describe_data()` Provides a thorough overview of a given dataframe.
- `standardize()` Standardizes specified columns in a dataframe.
- `upsampling()`  Balances binary class datasets via upsampling.
- `logistic_function()` Implements the logistic function, a key component in logistic regression.
- `fit_logistic_regression()` Implements the logistic regression algorithm.
- `fit_logistic_regression_to_data()` Fits a logistic regression model to a dataset.

Each function is meticulously designed to cater to specific needs in the data analysis process, from initial exploration to complex modeling. They are particularly useful for tasks involving logistic regression, providing tools for data preparation, model fitting, and handling class imbalance, which are common challenges in binary classification problems.

If you are new to this function. spend some time to look through my R package.

## Installation

``` r
# The easiest way to get logistic is to install from the Github, you might want to download 'devtools' package first:
install.packages("devtools")

#now we install the whole package via 'devtools' package
devtools::install_github("tttigerye/logistic")

# Alternatively, install with vignette available:
devtools::install_github("tttigerye/logistic", build_vignettes = T)
```
