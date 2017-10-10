library(dplyr)
library(ggplot2)

fish_data <- read.csv("raw_data/Gaeta_etal_CLC_data_1.csv") %>% 
  filter(scalelength > 1)

fish_data_cat <- fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))

# Exercuse 5.1_relationship between body length and size of scales across different lakes
ex5.1 <- ggplot(data = fish_data) +
  geom_point(mapping = aes(x = length, y = scalelength, color = lakeid))

