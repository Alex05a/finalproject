#' Plot Temperature time series
#'
#' This function takes a dataset with "Year" and"Temp" columns
#'
#' @param climate_change the name of your data
#'
#'
#'
#'
#'@return A time series plot
#'@export
#'@examples
#'plot_temperature_time_series(climate_change)

plot_temperature_time_series <-function(climate_change){
  ggplot(climate_change, aes(x=as.Date(paste(Year,Month,"1",sep="-")),y=Temp))+
    geom_line()+
    labs(tittle="Temperature Time Series", x="Date",y="Temperature")


}


