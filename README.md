This is the accompanying GitHub repository to a work in progress paper
by Aaron Peikert[![ORCID
iD](https://orcid.org/sites/default/files/images/orcid_16x16.png)](https://orcid.org/0000-0001-7813-818X)
and Andreas M. Brandmaier [![ORCID
iD](https://orcid.org/sites/default/files/images/orcid_16x16.png)](http://orcid.org/0000-0001-8765-6982).

[![licensebuttons
by](https://licensebuttons.net/l/by/3.0/88x31.png)](https://creativecommons.org/licenses/by/4.0)
[![Ask Me Anything
!](https://img.shields.io/badge/Ask%20me-anything-1abc9c.svg)](https://github.com/aaronpeikert/workflow-showcase/issues/new)
![Open Source
Love](https://badges.frapsoft.com/os/v2/open-source.svg?v=103)

# Abstract

This analysis is a toy example that fits an CFA to a dataset from
[openpsychometrics.org](http://openpsychometrics.org/_rawdata/CFCS.zip).
It shows how to use `rmarkdown`, `git`, `make` and `docker` to make a
reproducible analysis. The repo to the paper that descibes such workflow
can be found here:

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

**Note: The build step may fail since services the build relies on are
no longer available. In this case, you can download a ready build image
from the [GitHub
Releases](https://github.com/aaronpeikert/reproducible-research/releases/latest)
and use `docker load -i workflow-showcase.tar.gz` to load it. Continue
with `make all DOCKER=TRUE`**

**Note: Windows user need to manually edit the `Makefile` and set
current_path to the current directory and use
`make all DOCKER=TRUE WINDOWS=TRUE`. We hope that future releases of
Docker for Windows will not require that workaround.**

## Rebuild Everything

In case you experience some unexpected behavior with this workflow, you
should check that you have the most recent version (`git pull`), rebuild
the docker image (`make build`) and force the rebuild of all targets
(`make -B DOCKER`).

``` bash
git pull && make rebuild && make -B DOCKER=TRUE
```

# Session Info

``` r
sessioninfo::session_info()
```

    ## ─ Session info ───────────────────────────────────────────────────────────────
    ##  setting  value
    ##  version  R version 4.1.3 (2022-03-10)
    ##  os       Ubuntu 20.04.4 LTS
    ##  system   x86_64, linux-gnu
    ##  ui       X11
    ##  language (EN)
    ##  collate  en_US.UTF-8
    ##  ctype    en_US.UTF-8
    ##  tz       Etc/UTC
    ##  date     2022-03-31
    ##  pandoc   2.17.1.1 @ /usr/local/bin/ (via rmarkdown)
    ## 
    ## ─ Packages ───────────────────────────────────────────────────────────────────
    ##  package     * version date (UTC) lib source
    ##  cli           3.2.0   2022-02-14 [1] RSPM (R 4.1.0)
    ##  digest        0.6.29  2021-12-01 [1] RSPM (R 4.1.0)
    ##  evaluate      0.15    2022-02-18 [1] RSPM (R 4.1.0)
    ##  fastmap       1.1.0   2021-01-25 [1] RSPM (R 4.1.0)
    ##  here        * 1.0.1   2020-12-13 [1] RSPM (R 4.1.0)
    ##  htmltools     0.5.2   2021-08-25 [1] RSPM (R 4.1.0)
    ##  knitr         1.37    2021-12-16 [1] RSPM (R 4.1.0)
    ##  magrittr      2.0.2   2022-01-26 [1] RSPM (R 4.1.0)
    ##  rlang         1.0.2   2022-03-04 [1] RSPM (R 4.1.0)
    ##  rmarkdown     2.13    2022-03-10 [1] RSPM (R 4.1.0)
    ##  rprojroot     2.0.2   2020-11-15 [1] RSPM (R 4.1.0)
    ##  sessioninfo   1.2.2   2021-12-06 [1] RSPM (R 4.1.0)
    ##  stringi       1.7.6   2021-11-29 [1] RSPM (R 4.1.0)
    ##  stringr       1.4.0   2019-02-10 [1] RSPM (R 4.1.0)
    ##  xfun          0.30    2022-03-02 [1] RSPM (R 4.1.0)
    ##  yaml          2.3.5   2022-02-21 [1] RSPM (R 4.1.0)
    ## 
    ##  [1] /usr/local/lib/R/site-library
    ##  [2] /usr/local/lib/R/library
    ## 
    ## ──────────────────────────────────────────────────────────────────────────────
