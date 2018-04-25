filter_on_population <- function(data=NULL, exac_threshold=0.01, g1000_threshold=0.01, esp_threshold=0.01) {
  if (is.null(data)) stop("Mandatory argument data is missing")

  # check to see if the columns exist then filter if they do
  if ("ExAC_ALL" %in% colnames(data)) {
    data$ExAC_ALL <- as.numeric(data$ExAC_ALL)
    data <- data %>% filter(ExAC_ALL < exac_threshold)
  }
  if ("1000G_ALL" %in% colnames(data)) {
    data$`1000G_ALL` <- as.numeric(data$`1000G_ALL`)
    data <- data %>% filter(`1000G_ALL` < g1000_threshold)
  }
  if ("ESP6500siv2_ALL" %in% colnames(data)) {
    data$ESP6500siv2_ALL <- as.numeric(data$ESP6500siv2_ALL)
    data <- data %>% filter(ESP6500siv2_ALL < esp_threshold)
  }

  return(data)
}
