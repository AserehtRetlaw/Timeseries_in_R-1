##------------------------------------------------------------------------------
## Modul 4 - Data Collection Storage and Manangement
##
## WS 2021/22 - Theresa Walter
##------------------------------------------------------------------------------


main_Path <- paste("C:/Users/Theresa/0-Studium/ALU/Semester 1/Modul 4 Data Collection Storage Management/Timeseries_in_R/Timeseries_in_R-1/")



##------------------------------------------------------------------------------
## EXERCISE 1 - Prepare a consistent HOBO data file
##------------------------------------------------------------------------------

#Datenimport
hobo_raw_all <- read.csv(paste0(main_Path, "/10760710.csv"), skip = 1 ,
		     header = TRUE , sep = ",")

#Selektion und Umbenennung der relevanten Spalten
hobo_raw <- data.frame(id = hobo_raw_all[,1], dttm = hobo_raw_all[,2],
		       temp = hobo_raw_all[,3], lux = hobo_raw_all[,4])


		     