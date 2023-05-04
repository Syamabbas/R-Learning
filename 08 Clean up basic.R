install.packages("here")
library("here")
install.packages("skimr")
library("skimr")
install.packages("janitor")
library("janitor")
library("dplyr")
library("palmerpenguins")

#data summary and data type
skim_without_charts(penguins)

#summary of data
glimpse(penguins)

#head of data
head(penguins)

#pipe "-" except
penguins %>%
  select(-species)

#rename
penguins %>%
  rename(island_new=island)

#uppercase and lowercase
rename_with(penguins, toupper)
rename_with(penguins, tolower)

#clean name
clean_names(penguins)
