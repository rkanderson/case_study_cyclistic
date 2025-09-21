### This script prepares the Cyclistic trip data for analysis by downsampling and adding calculated fields.

# Clean environment
rm(list = ls())

# Load libraries
library(tidyverse)
library(lubridate)
library(here)

# Load the data
tripdata <- read_csv(here("data_intermediate", "tripdata_2024-2025_v1.csv"))

# Quick check: Casual vs Member counts
trip_counts <- tripdata %>%
  group_by(member_casual) %>%
  summarize(
    count = n(),
    percent = n() / nrow(tripdata) * 100
  )

print(trip_counts)

# Downsampling: randomly sample 100k records
set.seed(123) # reproducibility
tripdata_sampled <- tripdata %>%
  slice_sample(n = 100000)

# Save the downsampled data
write_csv(
  tripdata_sampled,
  here("data_intermediate", "tripdata_2024-2025_v1_downsampled-100k.csv")
)

# Add calculated fields: ride length and day of week
tripdata_sampled <- tripdata_sampled %>%
  mutate(
    ride_length = as.numeric(difftime(ended_at, started_at, units = "mins")),
    day_of_week = wday(started_at, label = TRUE, abbr = FALSE)
  )

# Save the version with calculated fields
write_csv(
  tripdata_sampled,
  here("data_intermediate", "tripdata_2024-2025_v1_downsampled-100k_calc-fields.csv")
)
