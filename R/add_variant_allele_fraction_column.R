add_variant_allele_fraction_column <- function(data=NULL, format_column="vcf_format_sample", vaf_index=15) {
  if (is.null(data)) stop("Mandatory argument data is missing")
  data$vaf <- apply(X=as.matrix(data[[format_column]]), MARGIN=1, FUN=get_variant_allele_fraction, vaf_index=vaf_index)
  return(data)
}
