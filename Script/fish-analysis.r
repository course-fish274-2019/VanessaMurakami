#Using Git in class
#Created 5 November 2019 by Vanessa Murakami, vanmurak@uw.edu

fish_data=read.csv("Data/Gaeta_etal_CLC_data.csv")


library(dplyr)
fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 200, "big", "small"))

fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))
