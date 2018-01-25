get_pyrimidine_change <- function(x) {
  #if (is.null(ref)) stop("Mandatory argument ref is missing")
  #if (is.null(alt)) stop("Mandatory argument alt is missing")

  ref <- x[1]
  alt <- x[2]
  if (ref %in% c('A', 'G')) {
    ref = as.character(Biostrings::complement(DNAString(ref)))
    alt = as.character(Biostrings::complement(DNAString(alt)))
    return(paste(sep='>', ref, alt))
  } else{
    return(paste(sep='>', ref, alt))
  }
}
