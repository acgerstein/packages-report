## remember to restart R here!
library(tidyverse)
library(fs)
library(here)

## make a barchart from the frequency table in data/add-on-packages-freqtable.csv
apt_freq <- readr::read_csv(here::here("data/add-on-packages-freqtable.csv")) %>%
  as.tibble()

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

#theme(axis.text.x = element_text(...))

## YES overwrite the file that is there now
## that's old output from me (Jenny)
