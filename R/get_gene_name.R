get_gene_name <- function(x) {
  deleterious_change <- unlist(strsplit(x=x, split=",", perl=TRUE))[1]
  gene_name <- unlist(strsplit(x=deleterious_change, split=':', perl=TRUE))
  return(gene_name[1])
}
