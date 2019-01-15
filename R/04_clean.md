04\_clean.R
================
acgerstein
Tue Jan 15 17:19:59 2019

``` r
library(fs)
library(purrr)
library(here)
```

    ## here() starts at /Users/acgerstein/tmp/packages-report

``` r
dirs <- c(here("data"), here("figs"))
dirs <- keep(dirs, dir_exists)
files <- map(dirs, dir_ls) %>% flatten_chr()
file_delete(files)
```
