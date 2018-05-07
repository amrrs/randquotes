
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

    ##    ID      title
    ## 1 213 Jef Raskin
    ##                                                                                                                                                      content
    ## 1 <p>However, I&#8217;ve always been more concerned with users. Programmers do their work but once, while users are saddled with it ever thereafter.  </p>\n
    ##                                     link                                                               Source
    ## 1 https://quotesondesign.com/jef-raskin/ <a href="http://www.apple-history.com/?page=gui_raskin1">website</a>

Courtesy
--------

This R package is powered by [Quotes on Design API](https://quotesondesign.com/api-v4-0/)
