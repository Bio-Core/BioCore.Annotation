create_merged_data <- function(path=NULL, pattern='.hg19_multianno.txt', colheader=get_annovar_colnames(), vaf_index=5) {
  if (is.null(path)) stop("Mandatory argument path is missing")

  files <- get_annovar_files(path=path, pattern=pattern, recursive=FALSE)
  data <- data.frame()
  for(i in 1:length(files)) {
    tmp_data <- load_annovar_file(file=files[i], colheader=colheader)
    tmp_data <- add_variant_allele_fraction_column(data=tmp_data, vaf_index=vaf_index)
    tmp_data <- add_read_depth_column(data=tmp_data)
    sample_name <- basename(files[i])
    sample_name <- gsub(x=sample_name, pattern=pattern, replacement='')
    tmp_data$sample <- sample_name
    data <- rbind(data, tmp_data)
  }
  return(data)
}
