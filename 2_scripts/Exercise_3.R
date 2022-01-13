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
dwd_urban <- read.csv('https://raw.githubusercontent.com/AserehtRetlaw/Timeseries_in_R-1/main/1_data_processed/meteo_stations/dwd_urban.csv')
uni_meteo <- read.csv('https://raw.githubusercontent.com/AserehtRetlaw/Timeseries_in_R-1/main/1_data_processed/meteo_stations/uni_meteo.csv')
wbi <- read.csv('https://raw.githubusercontent.com/AserehtRetlaw/Timeseries_in_R-1/main/1_data_processed/meteo_stations/wbi.csv')
my_hobo <- read.csv('https://raw.githubusercontent.com/AserehtRetlaw/Timeseries_in_R-1/main/1_data_processed/10760710.csv')


# Combine time and temperature values -------------------------------------


