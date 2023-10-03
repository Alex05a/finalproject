#' Plot CO2 ovet time
#'
#' It creates a correlation heatmap
#'
#' @param data A data frame with CO2 data
#' @param title The title of the plot
#'
#'
#'
#'@return A ggplot2 plor
#'@export
#'@examples
#'plot_co2(climate_change,"CO2 Levels Over month")
#'

plot_co2 <- function(data,title) {
  library(ggplot2)
  ggplot(data,aes(x=Year, y=CO2))+
    geom_line()
  labs(title=title, x="Year", y="CO2 Levels")


}
