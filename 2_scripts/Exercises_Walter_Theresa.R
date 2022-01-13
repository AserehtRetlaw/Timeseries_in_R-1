##------------------------------------------------------------------------------
## Modul 4 - Data Collection Storage and Manangement
##
## WS 2021/22 - Theresa Walter
##------------------------------------------------------------------------------



# PACKAGES LADEN ----------------------------------------------------------
library(tidyverse)


# OBJEKTE -----------------------------------------------------------------
main_Path <- paste("C:/Users/Theresa/0-Studium/ALU/Semester 1/Modul 4 Data Collection Storage Management/Timeseries_in_R/Timeseries_in_R-1/")
start_Time <- "2021-12-13 00:00:00"
end_Time <- "2022-01-09 23:50:00"



# EXERCISE 1 - Prepare a consisten HOBO data file -------------------------

#Datenimport
hobo_raw_all <- read.csv(paste0(main_Path, "0_data_raw/10760710.csv"), skip = 1,
		     header = TRUE, sep = ",")

# Selektion und Umbenennung der relevanten Spalten und speichern in neuem Objekt
hobo_raw <- data.frame(id = hobo_raw_all[,1], dttm = hobo_raw_all[,2],
		       temp = hobo_raw_all[,3], lux = hobo_raw_all[,4])

write.csv(hobo_raw, paste0(main_Path, "/1_data_processed/10760710_short.csv"))

# Formatierung Datum aendern
hobo_raw$dttm <- as.POSIXct(hobo_raw$dttm, format = "%d/%m/%Y %H:%M:%S")


# Fehlende Werte?
sum(is.na(hobo_raw$id))
sum(is.na(hobo_raw$dttm))
sum(is.na(hobo_raw$temp))
sum(is.na(hobo_raw$lux))

# entfernen letzte 7 Werte
hobo_raw <- hobo_raw[1:(length(hobo_raw$id)-7),]

# Kuerzen auf Zeitspanne
start_index <- which(hobo_raw$dttm == start_Time)
end_index <- which(hobo_raw$dttm == end_Time)

hobo <- hobo_raw[start_index:end_index,]
hobo$id <- c(1:length(hobo$id))


# AUSGABE
# plot(hobo_raw$dttm, hobo_raw$temp)
write.csv(hobo_raw, paste0(main_Path, "/1_data_processed/10760710-lang.csv"),
	  row.names = FALSE)

write.csv(hobo, paste0(main_Path, "/1_data_processed/10760710.csv"),
	  row.names = FALSE)


