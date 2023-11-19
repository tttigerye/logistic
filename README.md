# Logistic 


<!-- badges: start -->
<!-- badges will be added here by usethis -->
[![R-CMD-check](https://github.com/tttigerye/logistic/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/tttigerye/logistic/actions/workflows/R-CMD-check.yaml)
[![Codecov test coverage](https://codecov.io/gh/tttigerye/logistic/branch/master/graph/badge.svg)](https://app.codecov.io/gh/tttigerye/logistic?branch=master)
<!-- badges: end -->

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

## In-package data
These dataset are generally for practice and demonstrate the function(s) in the R pack-
age, and can run smoothly without error or warning. Feel free to run and test them with function in the package.
``` r
head(EPL)
               team points goals_scored goals_conceded top_half
1 Manchester United     87           30             61        0
2         Liverpool     36           23             53        1
3   Manchester City     63           59             30        1
4           Chelsea     60           39             49        1
5           Arsenal     47           30             50        0
6         Tottenham     47           37             48        1
head(Education)
  GPA levelA  ED ACT response
1 2.3    1.1 0.5 3.0        1
2 1.5    0.7 0.6 2.5        0
3 3.2    1.3 0.7 3.5        1
4 2.1    1.2 0.4 2.8        0
5 1.8    0.9 0.9 3.1        1
6 2.4    1.5 0.3 2.9        0
head(PRESS)
       height     weight chole
1 -0.56047565  2.1988103     0
2 -0.23017749  1.3124130     0
3  1.55870831 -0.2651451     0
4  0.07050839  0.5431941     0
5  0.12928774 -0.4143399     0
6  1.71506499 -0.4762469     0

``` 

## Usage
``` r
library(logistic)
head(PRESS)
       height     weight chole
1 -0.56047565  2.1988103     0
2 -0.23017749  1.3124130     0
3  1.55870831 -0.2651451     0
4  0.07050839  0.5431941     0
5  0.12928774 -0.4143399     0
6  1.71506499 -0.4762469     0

#generate the data information
describe_data(PRESS)
Structure of the Data:
'data.frame':	200 obs. of  3 variables:
 $ height: num  -0.5605 -0.2302 1.5587 0.0705 0.1293 ...
 $ weight: num  2.199 1.312 -0.265 0.543 -0.414 ...
 $ chole : Factor w/ 2 levels "0","1": 1 1 1 1 1 1 1 1 1 1 ...
NULL

Summary Statistics:
     height             weight         chole  
 Min.   :-2.30917   Min.   :-2.46590   0:150  
 1st Qu.:-0.62576   1st Qu.:-0.59077   1: 50  
 Median :-0.05874   Median : 0.02283          
 Mean   :-0.00857   Mean   : 0.04212          
 3rd Qu.: 0.56840   3rd Qu.: 0.71482          
 Max.   : 3.24104   Max.   : 2.57146          

First Few Rows of the Data:
       height     weight chole
1 -0.56047565  2.1988103     0
2 -0.23017749  1.3124130     0
3  1.55870831 -0.2651451     0
4  0.07050839  0.5431941     0
5  0.12928774 -0.4143399     0
6  1.71506499 -0.4762469     0

Column Names:
[1] "height" "weight" "chole" 

Number of Rows:
[1] 200

Number of Columns:
[1] 3

# apply upsampling on the PRESS data
balanced_data = upsampling(PRESS, "chole")
head(balanced_data)
       height     weight chole
1 -0.56047565  2.1988103     0
2 -0.23017749  1.3124130     0
3  1.55870831 -0.2651451     0
4  0.07050839  0.5431941     0
5  0.12928774 -0.4143399     0
6  1.71506499 -0.4762469     0

#compare the result and raw data
table(PRESS$chole)

  0   1 
150  50 
table(balanced_data$chole)

  0   1 
150 150 

#standardize the height and weight column
columns_to_standardize <- c("height", "weight")
standardized_PRESS <- standardize(PRESS, columns_to_standardize)
head(standardized_PRESS)
       height     weight chole
1 -0.58516612  2.1655224     0
2 -0.23496233  1.2754946     0
3  1.66173180 -0.3085246     0
4  0.08384457  0.5031252     0
5  0.14616629 -0.4583306     0
6  1.82751140 -0.5204911     0

#apply logistic regression on it
coefficients = fit_logistic_regression_to_data(PRESS, 'chole', names(PRESS)[0:2])
coefficients
              [,1]
        3.85564529
height  0.06813449
weight -0.10758936
```

## Getting help

If you encounter a clear bug, please file an issue with a minimal
reproducible example on
[GitHub](https://github.com/tttiger/logistic). For questions and
other discussion, please contact me via email(tiger8run@gmail.com).

------------------------------------------------------------------------





