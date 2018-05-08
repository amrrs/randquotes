
randquotes
==========

[![Build Status](https://travis-ci.org/amrrs/randquotes.svg?branch=master)](https://travis-ci.org/amrrs/randquotes)

Description
-----------

This package connects to the site <http://quotesondesign.com/> that uses the WordPress JSON REST API to provide a way for you to grab quotes.

Overview
--------

This package contains the following function: `randquote()` that fetches a random quote and returns a dataframe along with the author name and link to the quote.

Installation
------------

``` r
devtools::install_github("amrrs/randquotes")
```

### Note

This package fetches data from API hence an active internet connection is required for this package to function.

Current Version
---------------

``` r
library(randquotes)

# current verison
packageVersion("randquotes")
```

    ## [1] '0.1.0'

Usage
-----

### Get Random Quote

``` r
library(randquotes)

randquote()
```

    ##    ID          title                                                                                         content
    ## 1 334 Charles Mingus <p>You can&#8217;t improvise on nothing man; you&#8217;ve gotta improvise on something.  </p>\n
    ##                                         link
    ## 1 https://quotesondesign.com/charles-mingus/
    ##                                                                                                                                                    Source
    ## 1 <a href="http://www.amazon.com/gp/product/0465071937?ie=UTF8&tag=css-tricks-20&linkCode=as2&camp=1789&creative=390957&creativeASIN=0465071937">book</a>

### Get only the Quote

Sometimes you may not be interested in getting a dataframe that has ID and link, so this function `randquote_simple()` outputs only the quote with author name.

``` r
library(randquotes)

randquote_simple()
```

    ## [1] "There are no bad ideas, just bad decisions.  \n-Jacob Cass"

Courtesy
--------

This R package is powered by [Quotes on Design API](https://quotesondesign.com/api-v4-0/)

Code of Conduct
---------------

Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
