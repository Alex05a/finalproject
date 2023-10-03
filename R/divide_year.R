#' Divide by year
#'
#' For a start, end, and interval length, return a list of vectors with temperature for each time period
#'
#' @param start starting year
#' @param end ending year
#' @param inc time period length
#' @param df dataframe with 2 columns, one named Year
#'
#'@return List of vectors of temperatures for each time period
#'@export
#'@examples
#'df<-climate_change[,c("Year", "Temp")]
#'divide_year(1984,2008,4,df)


divide_year <- function(start, end, inc, df){
  # list of vectors of temperatures we will return
  year_lst <- list()

  # create vector of temperatures for each time period
  i <- start
  while(i< end){
    if(i >= end-inc){
      inc = inc + 1
    }
    sub <- filter(df, i <= Year & Year < i+inc)[,2]
    year_lst <- c(year_lst,list(sub))
    i <- i + inc
  }
  year_lst
}
