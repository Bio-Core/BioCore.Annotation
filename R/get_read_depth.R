get_read_depth <- function(data=NULL, delimiter=':', depth_index=4) {
  if (is.null(data)) stop("Mandatory argument data is missing")

  return(unlist(strsplit(x = data, split = delimiter))[depth_index])
}
