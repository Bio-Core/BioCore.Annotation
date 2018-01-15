\name{get_read_depth}
\alias{get_read_depth}
\title{
Get the read depth.
}
\description{
A R function that extracts the read depth from a VCF formatted FORMAT string.
}
\usage{
get_read_depth(data = NULL, delimiter = ":", depth_index = 4)
}
\arguments{
  \item{data}{}
  \item{delimiter}{}
  \item{depth_index}{}
}
\value{
Returns the input dataframe with a read depth column labelled "depth" appended to it.
}
\author{
Richard J. de Borja
}
\keyword{ annovar }
\keyword{ depth }
