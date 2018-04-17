add_snvid <- function(data=NULL) {
  if (is.null(data)) stop("Mandatory argument data is missing")

  data$snvid <- paste(
    sep="_",
    data$Chr,
    data$Start,
    data$End,
    data$Ref,
    data$Alt
    )
  return(data)
}
