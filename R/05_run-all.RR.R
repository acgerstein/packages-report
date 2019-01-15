#delete all intermediate files

if(!dir_exists(here("figs")))
  dir_create(here("figs"))

if(!dir_exists(here("data")))
  dir_create(here("data"))

#re-run the source files
#nb these are not actually self-contained
source(here("R/01_write-installed-packages.R"))
source(here("R/02_wrangle-packages.R"))
source(here("R/03_barchart-packages-built.R"))
