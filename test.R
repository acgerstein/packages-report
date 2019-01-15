.libPaths()

ip <- installed.packages() %>%
  as.tibble() %>%
  select("Package", "LibPath", "Version", "Priority", "Built") %>%
  readr::write_csv(here::here("data/installed-packages.csv"))
