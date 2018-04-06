add_protein_change_column <- function(data=NULL) {
  if (is.null(data)) stop("Mandatory argument data is missing")

  data$aa_change <- apply(
    X=as.matrix(data$AAChange.refGene),
    MARGIN=1,
    FUN=get_protein_change
    )
  data$aa_gene <- apply(
    X=as.matrix(data$AAChange.refGene),
    MARGIN=1,
    FUN=get_gene_name
  )
  return(data)
}
