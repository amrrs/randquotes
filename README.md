
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
    ## 1 1216 Guy Kawasaki
    ##                                                                                                                                                                                                                                                                     content
    ## 1 <p>…the wisest course of action is to take your best shot with a prototype, immediately get to market, and iterate quickly. If you wait for ideal circumstances in which you have all the information you need (which is impossible) the market will pass you by.  </p>\n
    ##                                       link
    ## 1 https://quotesondesign.com/guy-kawasaki/

Courtesy
--------

This R package is powered by [Quotes on Design API](https://quotesondesign.com/api-v4-0/)
