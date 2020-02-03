calculate_mutation_rate <- function(data=NULL, sample_column="sample", size_of_region=50) {
  if (is.null(data)) stop("Mandatory argument data is missing")

  mutation_rate_table <- as.data.frame(table(
    data[[sample_column]]
  ))
  colnames(mutation_rate_table) <- c('Sample', 'Count')
  mutation_rate_table <- mutation_rate_table %>% dplyr::mutate(MutRate = Count / size_of_region)
  return(mutation_rate_table)
}
