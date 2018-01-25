create_variant_signature_barplot <- function(data=NULL) {
  if (is.null(data)) stop("Mandatory argument data is missing")

  data$SigVariant <- apply(
    X=data[,c('Ref', 'Alt')],
    MARGIN=1,
    FUN=get_pyrimidine_change
    )
  plot <- plotting.general::create.stacked.barplot(
    data=data,
    x="sample",
    fill="SigVariant",
    xlab="",
    ylab='Count'
    )
  return(plot)
}
