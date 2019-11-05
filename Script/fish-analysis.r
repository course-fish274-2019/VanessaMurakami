#Using Git in class
#Created 5 November 2019 by Vanessa Murakami, vanmurak@uw.edu

fish_data=read.csv("Data/Gaeta_etal_CLC_data_1.csv")


library(dplyr)

#The code below changes the fish data, where the first code adds categorical fish length column
#The second code changes the size cutoff for the new column that was created

fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 200, "big", "small"))

fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))

#Question 4
#Use dplyr to remove the fish with a scalelength of less than 1 mm from fish_data_cat. The new dataset will have 4,029 rows.

fish_data_cat<-filter(fish_data_cat, scalelength>1)
fish_data_cat


#Question 5
#To look at the relationship between the length of each fish’s body and the size of its scale across the different lakes sampled in these data, create a scatterplot with length on the x-axis and scalelength on the y-axis, then color the points using lakeid.

library(tidyverse)

ggplot(fish_data_cat,aes(x=length,y=scalelength,color=lakeid))+
  geom_point(size=3)


#Question 6
  
#new histogram
ggplot(fish_data_cat, aes(x = scalelength, fill = length_cat)) +
  geom_histogram(bins=80)

ggsave("Figures/scale_hist_by_length.jpg")





