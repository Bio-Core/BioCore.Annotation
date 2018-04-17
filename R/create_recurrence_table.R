create_recurrence_table <- function(data=NULL, recurrence_threshold=2, sample_col="sample") {
  if (is.null(data)) stop("Mandatory argument data is missing")

  all_genes <- sort(unique(data$Gene.refGene))
  rec_data <- data.frame(matrix(nrow=length(all_genes), ncol=length(unique(data[[sample_col]]))))
  rownames(rec_data) <- all_genes
  samples <- sort(unique(data[[sample_col]]))
  colnames(rec_data) <- samples
  rec_data[is.na(rec_data)] <- 0
  for(i in 1:nrow(data)) {
    rec_data[data$Gene.refGene[i], data[[sample_col]][i]] <- rec_data[data$Gene.refGene[i], data[[sample_col]][i]] + 1
  }
  rec_data_simple <- rec_data
  rec_data_simple[rec_data_simple > 0] <- 1
  rec_data_simple$rec <- apply(X=rec_data_simple, MARGIN=1, FUN=sum)
  rec_data$rec <- rec_data_simple$rec
  rec_data <- rec_data[order(rec_data$rec),]

  rec_data <- rec_data[rec_data$rec >= recurrence_threshold,]
  rec_data$rec <- NULL
  return(rec_data)
}
