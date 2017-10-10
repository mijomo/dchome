library(dplyr)

fish_data <- read.csv("raw_data/Gaeta_etal_CLC_data_1.csv") %>% 
  filter(scalelength > 1)

nrow(fish_data)

fish_data_cat <- fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))



