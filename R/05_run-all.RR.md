05\_run-all.RR.R
================
acgerstein
Tue Jan 15 17:21:21 2019

``` r
#delete all intermediate files
library(fs)
library(here)
```

    ## here() starts at /Users/acgerstein/tmp/packages-report

``` r
if(!dir_exists(here("figs")))
  dir_create(here("figs"))

if(!dir_exists(here("data")))
  dir_create(here("data"))

#re-run the source files
#nb these are not actually self-contained
source(here("R/01_write-installed-packages.R"))
```

    ## ── Attaching packages ─────────────────────────────────────────────────────── tidyverse 1.2.1 ──

    ## ✔ ggplot2 3.0.0     ✔ purrr   0.2.5
    ## ✔ tibble  1.4.2     ✔ dplyr   0.7.8
    ## ✔ tidyr   0.8.1     ✔ stringr 1.3.1
    ## ✔ readr   1.3.1     ✔ forcats 0.3.0

    ## ── Conflicts ────────────────────────────────────────────────────────── tidyverse_conflicts() ──
    ## ✖ dplyr::filter() masks stats::filter()
    ## ✖ dplyr::lag()    masks stats::lag()

``` r
source(here("R/02_wrangle-packages.R"))
```

    ## Parsed with column specification:
    ## cols(
    ##   Package = col_character(),
    ##   LibPath = col_character(),
    ##   Version = col_character(),
    ##   Priority = col_character(),
    ##   Built = col_character()
    ## )

``` r
source(here("R/03_barchart-packages-built.R"))
```

    ## Parsed with column specification:
    ## cols(
    ##   Built = col_character(),
    ##   n = col_double(),
    ##   prop = col_double()
    ## )

    ## Saving 7 x 3 in image
