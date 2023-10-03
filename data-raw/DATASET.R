## code to prepare `DATASET` dataset goes here

climate_change<-read.csv("data-raw/climate_change.csv", header=TRUE)

usethis::use_data(climate_change, overwrite = TRUE)
