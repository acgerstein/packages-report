02\_wrangle-packages.R
================
acgerstein
Tue Jan 15 17:18:40 2019

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
#library(readr)
library(fs)
library(here)
```

    ## here() starts at /Users/acgerstein/tmp/packages-report

``` r
## create a data frame by reading from data/installed-packages.csv
## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path

ip <- read_csv(here::here("data/installed-packages.csv")) %>%
  as.tibble() %>%
  filter(is.na(Priority)) %>%
  select(Package, Built) %>%
  write_csv(here::here("data/add-on-packages.csv"))
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
apt_freqtable <- ip %>%
  count(Built) %>%
  mutate(prop = n / sum(n)) %>%
  readr::write_csv(here::here("data/add-on-packages-freqtable.csv"))


#glimpse(ip)
## filter out the base and recommended packages
## keep the variables Package and Built
## if you use dplyr, code like this will work:
#apt <- ip %>%
  # filter(is.na(Priority)) %>%
  # select(Package, Built)

## write this new, smaller data frame to data/add-on-packages.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path

#readr::write_csv(ip, here::here("data/add-on-packages.csv"))

## make a frequency table of package by the version in Built
## if you use dplyr, code like this will work:
# apt_freqtable <- apt %>%
#   count(Built) %>%
#   mutate(prop = n / sum(n))
#
## write this data frame to data/add-on-packages-freqtable.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path
#readr::write_csv(apt_freqtable, here::here("data/add-on-packages-freqtable.csv"))

## YES overwrite the files that are there now
## they are old output from me (Jenny)
## they are just examples
```
