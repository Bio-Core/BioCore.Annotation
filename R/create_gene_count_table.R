create_gene_count_table <- function(data=NULL, gene_column="Gene.refGene", sample_column='sample') {
  if (is.null(data)) stop("Mandatory argument data is missing")

  data_gene_count <- as.data.frame(table(data[[sample_column]], data[[gene_column]]))
  colnames(data_gene_count) <- c('Sample', 'Gene', 'Count')
  return(data_gene_count)
}
