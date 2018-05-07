
randquotes
==========

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

``` r
library(randquotes)

randquote()
```

    ##     ID        title
    ## 1 1205 Robert Otani
    ##                                                                                                                                              content
    ## 1 <p>I try to take my camera everywhere with me so that I&#8217;ll be ready when unicorns crapping rainbows come flying in from the heavens.  </p>\n
    ##                                       link                                                                   Source
    ## 1 https://quotesondesign.com/robert-otani/ <a href="http://www.pictorymag.com/showcases/san-francisco/">pictory</a>

Courtesy
--------

This R package is powered by [Quotes on Design API](https://quotesondesign.com/api-v4-0/)

Contribution
------------

Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
