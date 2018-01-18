filter_on_depth <- function(data=NULL, depth_threshold = 100, depth_column='depth') {
  if (is.null(data)) stop("Mandatory argument depth is missing")

  data <- data[data[[depth_column]] >= depth_threshold,]
  return(data)
}
