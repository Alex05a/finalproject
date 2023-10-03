#' Calculate summary statistics
#'
#' It calculates summary statistics and it returns a summary table
#'
#' @param climate_change putting your data
#' @param numeric_vars it allows you to provide numerical variables
#'
#'
#'
#'@return List a summary table
#'@export
#'@examples
#'calculate_summary_statistics2(climate_change)
#'
#'
#'

calculate_summary_statistics2<- function(climate_change, numeric_vars=NULL){
  if(is.null(numeric_vars)){
    numeric_vars <-climate_change %>% select_if(is.numeric)%>% names()

  }
  summary_stats <-climate_change %>%
    select(all_of(numeric_vars)) %>%
    summary()
  return(summary_stats)

}

