get_variant_allele_fraction <- function(data=NULL, delimiter=':', vaf_index=15) {
  if (is.null(data)) stop("Mandatory argument data is missing")

  return(unlist(strsplit(x = data, split = delimiter))[vaf_index])
}
