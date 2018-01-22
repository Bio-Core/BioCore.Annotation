create_recurrence_table <- function(path=NULL, pattern='.hg19_multianno.txt', recurrence_threshold=2) {
  if (is.null(path)) stop("Mandatory argument path is missing")

  files <- get_annovar_files(path=path, recursive=FALSE)
  data <- create_merged_filtered_data(path=path, pattern=pattern)
  data <- filter_on_population(data=data)
  data <- filter_on_depth(data=data)
  all_genes <- sort(unique(data$Gene.refGene))
  rec_data <- data.frame(matrix(nrow=length(all_genes), ncol=length(unique(data$sample))))
  rownames(rec_data) <- all_genes
  samples <- sort(unique(data$sample))
  colnames(rec_data) <- samples
  rec_data[is.na(rec_data)] <- 0
  for(i in 1:nrow(data)) {
    rec_data[data$Gene.refGene[i], data$sample[i]] <- rec_data[data$Gene.refGene[i], data$sample[i]] + 1
  }
  rec_data_simple <- rec_data
  rec_data_simple[rec_data_simple > 0] <- 1
  rec_data_simple$rec <- apply(X=rec_data_simple, MARGIN=1, FUN=sum)
  rec_data$rec <- rec_data_simple$rec
  rec_data <- rec_data[order(rec_data$rec),]

  return(rec_data[rec_data$rec >= recurrence_threshold,])
}
