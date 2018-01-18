get_coding_mutations <- function(data=NULL, filters=c('synonymous SNV', 'unknown', 'intergenic', '')) {
  if (is.null(data)) stop("Mandatory argument data is missing")

  return(data[!(data$ExonicFunc.refGene %in% filters),])
}
