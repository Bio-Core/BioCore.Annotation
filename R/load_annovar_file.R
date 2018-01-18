load_annovar_file <- function(file = NULL) {
  if (is.null(file)) stop("Mandatory argument file is missing")

  data <- read.table(
    file = file,
    header = FALSE,
    as.is = TRUE,
    sep = "\t",
    quote = "\"",
    skip = 1
  )
  colnames(data) <- get_annovar_colnames()
  return(data)
}
