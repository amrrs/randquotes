
randquotes
==========

Description
-----------

This package connects to the site <http://quotesondesign.com/> that uses the WordPress JSON REST API to provide a way for you to grab quotes.

Overview
--------

The following functions are implemented:

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

    ##     ID          title
    ## 1 1880 Randall Munroe
    ##                                                                                                                                                                                                                                                       content
    ## 1 <p>I find that when someone’s taking time to do something right in the present, they’re a perfectionist with no ability to prioritize, whereas when someone took time to do something right in the past, they’re a master artisan of great foresight.</p>\n
    ##                                         link                                                                     Source
    ## 1 https://quotesondesign.com/randall-munroe/ <a href="http://darylkoop.com/2011/11/07/the-general-problem/">website</a>

Courtesy
--------

This R package is powered by [Quotes on Design API](https://quotesondesign.com/api-v4-0/)

Don't forget to describe the code of conduct in your README.md: Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
