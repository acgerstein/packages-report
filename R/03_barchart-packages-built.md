03\_barchart-packages-built.R
================
acgerstein
Tue Jan 15 17:19:40 2019

``` r
## remember to restart R here!
library(tidyverse)
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
library(fs)
library(here)
```

    ## here() starts at /Users/acgerstein/tmp/packages-report

``` r
## make a barchart from the frequency table in data/add-on-packages-freqtable.csv
apt_freq <- readr::read_csv(here::here("data/add-on-packages-freqtable.csv")) %>%
  as.tibble()
```

    ## Parsed with column specification:
    ## cols(
    ##   Built = col_character(),
    ##   n = col_double(),
    ##   prop = col_double()
    ## )

``` r
View(apt_freq)
## read that csv into a data frame
## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path

## if you use ggplot2, code like this will work:
bp <- ggplot(apt_freq, aes(x = Built, y = n)) +
  geom_col() +
  theme_bw()

## write this barchart to figs/built-barchart.png
## if you use ggplot2, ggsave() will help
## idea: try using here::here() to create the file path
ggsave(here::here("figs/built-barchart.png"), bp, height  = 3)
```

    ## Saving 7 x 3 in image

``` r
#theme(axis.text.x = element_text(...))

## YES overwrite the file that is there now
## that's old output from me (Jenny)
```
