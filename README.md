
# randquotes

[![Build
Status](https://travis-ci.org/amrrs/randquotes.svg?branch=master)](https://travis-ci.org/amrrs/randquotes)
[![codecov](https://codecov.io/gh/amrrs/randquotes/branch/master/graph/badge.svg)](https://codecov.io/gh/amrrs/randquotes)
[![CRAN
status](https://www.r-pkg.org/badges/version/randquotes)](https://cran.r-project.org/package=randquotes)
<https://cranlogs.r-pkg.org/badges/grand-total/randquotes>
[![Rdoc](http://www.rdocumentation.org/badges/version/randquotes)](http://www.rdocumentation.org/packages/randquotes)

## Description

This package connects to the site <http://quotesondesign.com/> that uses
the WordPress JSON REST API to provide a way for you to grab quotes.

## Overview

This package contains the following function: `randquote()` that fetches
a random quote and returns a dataframe along with the author name and
link to the quote.

## Installation

The stable version of `randquotes` can be installed from CRAN:

``` r
install.packages("randquotes")
```

And the development version can be installed from github:

``` r
devtools::install_github("amrrs/randquotes")
```

### Note

This package fetches data from API hence an active internet connection
is required for this package to function.

## Current Version

``` r
library(randquotes)

# current verison
packageVersion("randquotes")
```

    ## [1] '0.1.0'

## Usage

### Get Random Quote

``` r
library(randquotes)

randquote()
```

    ##    id                                                                           quote
    ## 1 719 <p>It&#8217;s not the paper&#8217;s fault that so much shit is printed.  </p>\n
    ##                                               link               author
    ## 1 https://quotesondesign.com/alejandro-magallanes/ Alejandro Magallanes

### Get only the Quote

Sometimes you may not be interested in getting a dataframe that has ID
and link, so this function `randquote_simple()` outputs only the quote
with author name.

``` r
library(randquotes)

cat(randquotes::randquote_simple())
```

    ## It’s not the paper’s fault that so much shit is printed.  
    ## -Alejandro Magallanes

## Courtesy

This R package is powered by [Quotes on Design
API](https://quotesondesign.com/api/)

## Code of Conduct

Please note that this project is released with a [Contributor Code of
Conduct](CONDUCT.md). By participating in this project you agree to
abide by its terms.
