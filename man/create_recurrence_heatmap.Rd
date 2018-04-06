\name{create_recurrence_heatmap}
\alias{create_recurrence_heatmap}
\title{Create recurrence heatmap}
\description{
A function for creating a Lattice heatmap (levelplot) for recurrently mutated genes.
}
\usage{
create_recurrence_heatmap(data = NULL)
}
\arguments{
  \item{data}{a recurrence table generated from create_recurrence_table (required)}
}
\value{
Returns a Lattice trellis plot object.
}
\references{
Sarkar, Deepayan (2008) Lattice: Multivariate Data Visualization with R. Springer, New York. ISBN 978-0-387-75968-5
}
\author{
Richard J. de Borja
}
\keyword{ heatmap }
\keyword{ recurrence }
\keyword{ snv }
\keyword{ levelplot }
