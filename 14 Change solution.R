## Changing data solutions

## Step1: Load packages
# Packages: tidyverse, skimr, janitor

## Step2: Import data
hotel_bookings <- read.csv("C:/Users/OWNER/Desktop/R/bookings_df/hotel_bookings2.csv")

## Step3: Getting to know the data
# Head data
head(hotel_bookings)

# get summarise data
str(hotel_bookings)

# see different column names
glimpse(hotel_bookings)
colnames(hotel_bookings)

## Manipulating the data

# want to arrange the data by most lead time to least lead time
arrange(hotel_bookings, lead_time)

# want to change asc to desc
arrange(hotel_bookings, desc(lead_time))

# see max and min lead times
max(hotel_bookings$lead_time)
min(hotel_bookings$lead_time)

# average
mean(hotel_bookings$lead_time)

# only contains data about city hotels
hotel_bookings_city <- 
  filter(hotel_bookings, hotel_bookings$hotel=="City Hotel")
head(hotel_bookings_city)