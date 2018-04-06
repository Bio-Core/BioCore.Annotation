add_read_depth_column <- function(data = NULL, format_column = "vcf_format_sample", depth_index=4) {
  if (is.null(data)) stop("Mandatory argument data is missing")
  data$depth <- apply(X=as.matrix(data[[format_column]]), MARGIN=1, FUN=get_read_depth, depth_index=depth_index)

  return(data)
}
