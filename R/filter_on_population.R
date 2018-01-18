filter_on_population <- function(data=NULL, exac_threshold=0.01, g1000_threshold=0.01, esp_threshold=0.01) {
  if (is.null(data)) stop("Mandatory argument data is missing")
  data$ExAC_ALL <- as.numeric(data$ExAC_ALL)
  data$`1000G_ALL` <- as.numeric(data$`1000G_ALL`)
  data$ESP6500siv2_ALL <- as.numeric(data$ESP6500siv2_ALL)
  filtered_pop_data <- data %>%
    filter(ExAC_ALL < exac_threshold) %>%
    filter(ESP6500siv2_ALL < esp_threshold) %>%
    filter(`1000G_ALL` < g1000_threshold)
  return(filtered_pop_data)
}
