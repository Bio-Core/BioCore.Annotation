get_field_from_vcf_format_string <- function(data=NULL, delimiter=':', index=1) {
  if (is.null(data)) stop("Mandatory argument data is missing")
  return(unlist(strsplit(x = data, split = delimiter))[index])
}
