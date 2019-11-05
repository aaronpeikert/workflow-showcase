This is the accompanying GitHub repository to a work in progress paper
by Aaron Peikert[![ORCID
iD](https://orcid.org/sites/default/files/images/orcid_16x16.png)](https://orcid.org/0000-0001-7813-818X)
and Andreas Brandmaier [![ORCID
iD](https://orcid.org/sites/default/files/images/orcid_16x16.png)](http://orcid.org/0000-0001-8765-6982).
[![licensebuttons
by](https://licensebuttons.net/l/by/3.0/88x31.png)](https://creativecommons.org/licenses/by/4.0)

# Abstract

This analysis is a toy example that fits an CFA to a dataset from
[openpsychometrics.org](http://openpsychometrics.org/_rawdata/CFCS.zip).
It shows how to use `rmarkdown`, `git`, `make` and `docker` to make a
reproducible analysis. The repo to the paper that descibes such workflow
can be found
here:

[github.com/aaronpeikert/reproducible-research](https://github.com/aaronpeikert/reproducible-research)

# Compile

## Usual Way

Requires: `Git`, `RStudio`, `pandoc`, `pandoc-citeproc` & `rmarkdown`.

Open RStudio -\> File -\> New Project -\> Version Control -\> Git

Insert:

    https://github.com/aaronpeikert/workflow-showcase.git

Open `cfcs-example.Rmd` click on
`Knit`.

## Using [Workflow](https://github.com/aaronpeikert/reproducible-research)

Does not require R or RStudio, but `make` & `docker`.

Execute in Terminal:

``` bash
git clone https://github.com/aaronpeikert/workflow-showcase.git
cd workflow-showcase
make build
make all DOCKER=TRUE
```

# Session Info

``` r
sessioninfo::session_info()
```

    ## ─ Session info ──────────────────────────────────────────────────────────
    ##  setting  value                       
    ##  version  R version 3.6.1 (2019-07-05)
    ##  os       Debian GNU/Linux 9 (stretch)
    ##  system   x86_64, linux-gnu           
    ##  ui       X11                         
    ##  language (EN)                        
    ##  collate  en_US.UTF-8                 
    ##  ctype    en_US.UTF-8                 
    ##  tz       Etc/UTC                     
    ##  date     2019-11-05                  
    ## 
    ## ─ Packages ──────────────────────────────────────────────────────────────
    ##  package     * version date       lib source        
    ##  assertthat    0.2.1   2019-03-21 [1] CRAN (R 3.6.1)
    ##  backports     1.1.4   2019-04-10 [1] CRAN (R 3.6.1)
    ##  cli           1.1.0   2019-03-19 [1] CRAN (R 3.6.1)
    ##  crayon        1.3.4   2017-09-16 [1] CRAN (R 3.6.1)
    ##  digest        0.6.20  2019-07-04 [1] CRAN (R 3.6.1)
    ##  evaluate      0.14    2019-05-28 [1] CRAN (R 3.6.1)
    ##  here        * 0.1     2017-05-28 [1] CRAN (R 3.6.1)
    ##  htmltools     0.3.6   2017-04-28 [1] CRAN (R 3.6.1)
    ##  knitr         1.24    2019-08-08 [1] CRAN (R 3.6.1)
    ##  magrittr      1.5     2014-11-22 [1] CRAN (R 3.6.1)
    ##  Rcpp          1.0.2   2019-07-25 [1] CRAN (R 3.6.1)
    ##  rmarkdown     1.15    2019-08-21 [1] CRAN (R 3.6.1)
    ##  rprojroot     1.3-2   2018-01-03 [1] CRAN (R 3.6.1)
    ##  sessioninfo   1.1.1   2018-11-05 [1] CRAN (R 3.6.1)
    ##  stringi       1.4.3   2019-03-12 [1] CRAN (R 3.6.1)
    ##  stringr       1.4.0   2019-02-10 [1] CRAN (R 3.6.1)
    ##  withr         2.1.2   2018-03-15 [1] CRAN (R 3.6.1)
    ##  xfun          0.9     2019-08-21 [1] CRAN (R 3.6.1)
    ##  yaml          2.2.0   2018-07-25 [1] CRAN (R 3.6.1)
    ## 
    ## [1] /usr/local/lib/R/site-library
    ## [2] /usr/local/lib/R/library
