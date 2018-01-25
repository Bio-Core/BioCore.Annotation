get_protein_change <- function(x) {
  deleterious_change <- unlist(strsplit(x=x, split=",", perl=TRUE))[1]
  protein_change <- unlist(strsplit(x=deleterious_change, split=':', perl=TRUE))
  return(protein_change[length(protein_change)])
}
