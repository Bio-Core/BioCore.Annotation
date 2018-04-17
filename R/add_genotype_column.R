add_genotype_column <- function(data=NULL, column_name=NULL, format_column="vcf_format_sample", gt_index=1) {
  if (is.null(data)) stop("Mandatory argument data is missing")
  if (is.null(column_name)) stop("Mandatory argument column_name is missing")
  data[[column_name]] <- apply(X=as.matrix(data[[format_column]]), MARGIN=1, FUN=get_field_from_vcf_format_string, index=gt_index)
  return(data)
}
