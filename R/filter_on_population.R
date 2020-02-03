filter_on_population <- function(data=NULL,
                                 exac_threshold=0.01,
                                 g1000_threshold=0.01,
                                 esp_threshold=0.01,
                                 exac="ExAC_ALL",
                                 g1000="X1000G_ALL",
                                 esp="ESP6500siv2_ALL") {
  if (is.null(data)) stop("Mandatory argument data is missing")

  # check to see if the columns exist then filter if they do
  if (exac %in% colnames(data)) {
    data[[exac]] <- as.numeric(data[[exac]])
    data <- data %>% dplyr::filter(!!as.name(exac) < exac_threshold)
  }
  if (g1000 %in% colnames(data)) {
    data[[g1000]] <- as.numeric(data[[g1000]])
    data <- data %>% dplyr::filter(!!as.name(g1000) < g1000_threshold)
  }
  if (esp %in% colnames(data)) {
    data[[esp]] <- as.numeric(data[[esp]])
    data <- data %>% dplyr::filter(!!as.name(esp) < esp_threshold)
  }

  return(data)
}
