add_sample_name <- function(data=NULL, sample=NULL) {
  if (is.null(data)) stop("Mandatory argument data is missing")
  if (is.null(sample)) stop("Mandatory argument sample is missing")

  data <- data %>% dplyr::mutate(sample = sample)
  return(data)
}
