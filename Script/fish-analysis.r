#Using Git in class
#Created 5 November 2019 by Vanessa Murakami, vanmurak@uw.edu

fish_data=read.csv("Data/Gaeta_etal_CLC_data.csv")


library(dplyr)

#The code below changes the fish data, where the first code adds categorical fish length column
#The second code changes the size cutoff for the new column that was created

fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 200, "big", "small"))

fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))


#Use dplyr to remove the fish with a scalelength of less than 1 mm from fish_data_cat. The new dataset will have 4,029 rows.

fish_data_cat<-filter(fish_data_cat, scalelength>1)
