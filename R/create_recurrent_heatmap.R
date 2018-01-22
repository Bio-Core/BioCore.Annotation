create_recurrence_heatmap <- function(data=NULL) {
  if (is.null(data)) stop("Mandatory argument data is missing")

  trellis_object <- lattice::levelplot(
    x = as.matrix(t(data)),
    xlab=NULL,
    ylab=NULL,
    col.regions=colorRampPalette(c('white', 'steelblue')),
    scales=list(
      x = list(
      at = seq(1, ncol(data), 1),
      rot = 90,
      cex = 0.7
      ),
      y = list(
        at=seq(1, nrow(data), 1),
        cex = 0.7
      )
    )
  )
  return(trellis_object)
}
