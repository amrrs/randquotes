
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

    ##     ID         title
    ## 1 2094 Frank Chimero
    ##                                                                                                                                                                                                                content
    ## 1 <p>I think design would be better if designers were much more skeptical about its applications. If you believe in the potency of your craft, where you choose to dole it out is not something to take lightly.</p>\n
    ##                                          link
    ## 1 https://quotesondesign.com/frank-chimero-7/
    ##                                                                                   Source
    ## 1 <a href="http://frankchimero.com/blog/2013/02/a-lesson-from-a-surgeon/">blog post<./a>
