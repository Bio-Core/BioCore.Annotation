load_annovar_file <- function(file = NULL) {
  if (is.null(file)) stop("Mandatory argument file is missing")

  data <- read.table(
    file = file,
    header = TRUE,
    as.is = TRUE,
    sep = "\t",
    quote = "\"",
    skip = 1
  )
  return(data)
}
