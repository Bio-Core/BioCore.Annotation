create_protein_change_table <- function(data=NULL) {
  if (is.null(data)) stop("Mandatory argument data is missing")

  data <- add_protein_change_column(data=data)
  all_genes <- unique(data$Gene.refGene)
  all_samples <- unique(data$sample)
  protein_table <- data.frame(
    matrix(
      ncol=length(all_genes),
      nrow=length(all_samples)
      )
    )
  rownames(protein_table) <- all_samples
  colnames(protein_table) <- all_genes
  for(i in 1:nrow(data)) {
    if (is.na(protein_table[data$sample[i], data$Gene.refGene[i]])) {
      protein_table[data$sample[i], data$Gene.refGene[i]] <- data$aa_change[i]
    } else {
      protein_table[data$sample[i], data$Gene.refGene[i]] <- paste(
        sep='|',
        protein_table[data$sample[i], data$Gene.refGene[i]],
        data$aa_change[i]
      )
    }
  }
  return(protein_table)
}
