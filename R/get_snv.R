get_snv <- function(data=NULL) {
  if (is.null(data)) stop("Mandatory argument data is missing")

  # remove all indels
  data <- data %>% filter(nchar(Ref) < 2 & nchar(Alt) < 2)
  data <- data %>% filter(Ref != '-' & Alt != '-')
  return(data)
}
