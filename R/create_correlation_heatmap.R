#' Correlation heatmap
#'
#' It creates a correlation heatmap
#'
#' @param climate_change putting your data
#' @param numeric_vars it allows you to provide numerical variables
#'
#'
#'
#'@return a heatmap
#'@export
#'@examples
#'create_correlation_heatmap(climate_change)
#'
#'
create_correlation_heatmap <- function(climate_change, numeric_vars = NULL) {

if (is.null(numeric_vars)) {
  numeric_vars <- climate_change %>% select_if(is.numeric) %>% names()
}

corr_matrix <- climate_change %>%
  select(all_of(numeric_vars)) %>%
  cor()

corr_data <- as.data.frame(as.table(corr_matrix))
colnames(corr_data) <- c("Var1", "Var2", "Correlation")

ggplot(corr_data, aes(Var1, Var2, fill = Correlation)) +
  geom_tile() +
  labs(title = "Correlation Heatmap")
}
