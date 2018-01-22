\name{filter_on_depth}
\alias{filter_on_depth}
\title{
Filter on depth.
}
\description{
A function that filters a variant dataframe based on a minimum read depth threshold.
}
\usage{
filter_on_depth(data = NULL, depth_threshold = 100, depth_column = "depth")
}
\arguments{
  \item{data}{dataframe containing variant data (required)}
  \item{depth_threshold}{minimum read depth threshold (default: 100)}
  \item{depth_column}{column name for read depth (default: "depth")}
}
\value{
Returns a dataframe with variants that pass the minimum read depth threshold.
}
\author{
Richard J. de Borja
}
\keyword{ read }
\keyword{ threshold }
\keyword{ depth }
