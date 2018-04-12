get_snv <- function(data=NULL) {
  if (is.null(data)) stop("Mandatory argument data is missing")

  # remove all indels
  data <- data %>% dplyr::filter(nchar(Ref) < 2 & nchar(Alt) < 2)
  data <- data %>% dplyr::filter(Ref != '-' & Alt != '-')
  return(data)
}
