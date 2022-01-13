# -------------------------------------------------------------------------
# DATA COLLECTION STORAGE & MANAGEMENT
# Exercise 3 - Model hourly data
# Theresa Walter
# 13.01.2022
# -------------------------------------------------------------------------


# Packages ----------------------------------------------------------------
library(tidyverse)
library(lubridate)
library(dplyr)

# Import Data -------------------------------------------------------------
dwd_airport <- read.csv('https://raw.githubusercontent.com/AserehtRetlaw/Timeseries_in_R-1/main/1_data_processed/meteo_stations/dwd_airport.csv')
dwd_airport$dttm <- ymd_hms(dwd_airport$dttm)

dwd_urban <- read.csv('https://raw.githubusercontent.com/AserehtRetlaw/Timeseries_in_R-1/main/1_data_processed/meteo_stations/dwd_urban.csv')
dwd_urban$dttm <- ymd_hms(dwd_urban$dttm)

uni_meteo <- read.csv('https://raw.githubusercontent.com/AserehtRetlaw/Timeseries_in_R-1/main/1_data_processed/meteo_stations/uni_meteo.csv')
uni_meteo$dttm <- ymd_hms(uni_meteo$dttm)

wbi <- read.csv('https://raw.githubusercontent.com/AserehtRetlaw/Timeseries_in_R-1/main/1_data_processed/meteo_stations/wbi.csv')
wbi$dttm <- ymd_hms(wbi$dttm)

my_hobo <- read.csv('https://raw.githubusercontent.com/AserehtRetlaw/Timeseries_in_R-1/main/1_data_processed/meteo_stations/my_hobo.csv')
my_hobo$dttm <- ymd_hms(my_hobo$dttm)


# Combine time and temperature values -------------------------------------
refs <- full_join(my_hobo, dwd_airport, by = "dttm")
refs <- full_join(refs, dwd_urban, by = "dttm")
refs <- full_join(refs, uni_meteo, by = "dttm")
refs <- full_join(refs, wbi, by = "dttm")
