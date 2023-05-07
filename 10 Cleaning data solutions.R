# cleaning data solutions

## Step 1: Load packages
library(tidyverse)
library(skimr)
library(janitor)

## Step 2: Import data
bookings_df <- read.csv("C:/Users/OWNER/Desktop/R/bookings_df/hotel_bookings.csv")

## Step 3: Getting know about data

#explore data
head(bookings_df)

#summarize/preview data
str(bookings_df)
glimpse(bookings_df)

#check names of column
colnames(bookings_df)
skim_without_charts(bookings_df)

## Step 4: Cleaning data

#data frame
trimmed_df <- bookings_df %>% 
  select(hotel, is_canceled, lead_time)

#rename hotel
trimmed_df %>% 
  select(hotel, is_canceled, lead_time) %>%
  rename(hotel_type = hotel)

#combine arrival month and year
example_df <- bookings_df %>% 
  select(arrival_date_year, arrival_date_month) %>%
  unite(arrival_month_year, c("arrival_date_month"), sep = " ")


## Step 5: Another way of doing things

#to create a new column that summed up all the adults, 
#children, and babies on a reservation for the total 
#number of people.

example_df2 <- bookings_df %>% 
  mutate(guests = adults + children + babies)

head(example_df2)

#Make a column called 'number_canceled' to represent 
#the total number of canceled bookings. Then, make a column 
#called 'average_lead_time' to represent the average lead time. 

example_df3 <- bookings_df %>%
  summarize(number_canceled = sum(is_canceled),
            average_lead_time = mean(lead_time))

head(example_df3)