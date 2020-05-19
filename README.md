This is the accompanying GitHub repository to a work in progress paper
by Aaron Peikert[![ORCID
iD](https://orcid.org/sites/default/files/images/orcid_16x16.png)](https://orcid.org/0000-0001-7813-818X)
and Andreas M. Brandmaier [![ORCID
iD](https://orcid.org/sites/default/files/images/orcid_16x16.png)](http://orcid.org/0000-0001-8765-6982).

[![licensebuttons
by](https://licensebuttons.net/l/by/3.0/88x31.png)](https://creativecommons.org/licenses/by/4.0)
[![Ask Me Anything
\!](https://img.shields.io/badge/Ask%20me-anything-1abc9c.svg)](https://github.com/aaronpeikert/workflow-showcase/issues/new)
![Open Source
Love](https://badges.frapsoft.com/os/v2/open-source.svg?v=103)

# Abstract

This analysis is a toy example that fits an CFA to a dataset from
[openpsychometrics.org](http://openpsychometrics.org/_rawdata/CFCS.zip).
It shows how to use `rmarkdown`, `git`, `make` and `docker` to make a
reproducible analysis. The repo to the paper that descibes such workflow
can be found
here:

[github.com/aaronpeikert/reproducible-research](https://github.com/aaronpeikert/reproducible-research)

# Compile

The following paragraphs describe how you can obtain a copy of the
source files of our manuscript describing reproducible workflows, and
create the PDF. Either, you can go the ‘standard’ way of downloading a
local copy of the repository and knit the manuscript file in R, or you
can use the reproducible workflow as suggested and use Make to create a
container and build the final PDF file in exactly the same virtual
computational environment that we used to render the PDF.

## Standard Way

Requires: `Git`, `RStudio`, `pandoc`, `pandoc-citeproc` & `rmarkdown`.

Open RStudio -\> File -\> New Project -\> Version Control -\> Git

Insert:

    https://github.com/aaronpeikert/workflow-showcase.git

Open `manuscript.Rmd` click on `Knit`.

## Using a Reproducible Workflow

Does not require R or RStudio, but `make` & `docker`.

Execute in Terminal:

``` bash
git clone https://github.com/aaronpeikert/workflow-showcase.git
cd workflow-showcase
make build
make all DOCKER=TRUE
```

**Note: Windows user need to manually edit the `Makefile` and set
current\_path to the current directory and use `make all DOCKER=TRUE
WINDOWS=TRUE`. We hope that future releases of Docker for Windows will
not require that workaround.**

## Rebuild Everything

In case you experience some unexpected behavior with this workflow, you
should check that you have the most recent version (`git pull`), rebuild
the docker image (`make build`) and force the rebuild of all targets
(`make -B
    DOCKER`).

``` bash
git pull && make rebuild && make -B DOCKER=TRUE
```

# Session Info

``` r
sessioninfo::session_info()
```

    ## ─ Session info ───────────────────────────────────────────────────────────────
    ##  setting  value                       
    ##  version  R version 3.6.1 (2019-07-05)
    ##  os       Debian GNU/Linux 9 (stretch)
    ##  system   x86_64, linux-gnu           
    ##  ui       X11                         
    ##  language (EN)                        
    ##  collate  en_US.UTF-8                 
    ##  ctype    en_US.UTF-8                 
    ##  tz       Etc/UTC                     
    ##  date     2020-05-19                  
    ## 
    ## ─ Packages ───────────────────────────────────────────────────────────────────
    ##  package     * version date       lib source        
    ##  assertthat    0.2.1   2019-03-21 [1] CRAN (R 3.6.1)
    ##  backports     1.1.5   2019-10-02 [1] CRAN (R 3.6.1)
    ##  cli           2.0.0   2019-12-09 [1] CRAN (R 3.6.1)
    ##  crayon        1.3.4   2017-09-16 [1] CRAN (R 3.6.1)
    ##  digest        0.6.23  2019-11-23 [1] CRAN (R 3.6.1)
    ##  evaluate      0.14    2019-05-28 [1] CRAN (R 3.6.1)
    ##  fansi         0.4.0   2018-10-05 [1] CRAN (R 3.6.1)
    ##  glue          1.3.1   2019-03-12 [1] CRAN (R 3.6.1)
    ##  here        * 0.1     2017-05-28 [1] CRAN (R 3.6.1)
    ##  htmltools     0.4.0   2019-10-04 [1] CRAN (R 3.6.1)
    ##  knitr         1.26    2019-11-12 [1] CRAN (R 3.6.1)
    ##  magrittr      1.5     2014-11-22 [1] CRAN (R 3.6.1)
    ##  Rcpp          1.0.3   2019-11-08 [1] CRAN (R 3.6.1)
    ##  rlang         0.4.2   2019-11-23 [1] CRAN (R 3.6.1)
    ##  rmarkdown     1.18    2019-11-27 [1] CRAN (R 3.6.1)
    ##  rprojroot     1.3-2   2018-01-03 [1] CRAN (R 3.6.1)
    ##  sessioninfo   1.1.1   2018-11-05 [1] CRAN (R 3.6.1)
    ##  stringi       1.4.3   2019-03-12 [1] CRAN (R 3.6.1)
    ##  stringr       1.4.0   2019-02-10 [1] CRAN (R 3.6.1)
    ##  withr         2.1.2   2018-03-15 [1] CRAN (R 3.6.1)
    ##  xfun          0.11    2019-11-12 [1] CRAN (R 3.6.1)
    ##  yaml          2.2.0   2018-07-25 [1] CRAN (R 3.6.1)
    ## 
    ## [1] /usr/local/lib/R/site-library
    ## [2] /usr/local/lib/R/library
