#' Plot Temperature time series
#'
#' This function creates Time series Plot
#'
#' @param data A data frame with time series data
#' @param variable The variable to plot over time
#' @param title The title of the plot
#'
#'
#'
#'@return A ggplot2 time series plot
#'@export
#'@examples
#'time_series_plot22(climate_change,CO2,"cO2 ANALYSIS")


time_series_plot22 <-function (data, variable,title){
  library(ggplot2)
  ggplot(data, aes(x=Year, y={{ variable}})) +
    geom_line()+
    labs(title=title, x= "Year", y= variable)

}


