library(tidyverse)

.libPaths()

ip <- installed.packages() #%>%
#  as.tibble() %>%
#  select("Package", "LibPath", "Version", "Priority", "Built") %>%
  
nrow(ip)