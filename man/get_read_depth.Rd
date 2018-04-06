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
  \item{data}{dataframe containing BioCore SNV pipeline output (required)}
  \item{delimiter}{delimited used in the FORMAT string (default :)}
  \item{depth_index}{index number of the array entry for the depth column (default: 4)}
}
\value{
Returns the input dataframe with a read depth column labelled "depth" appended to it.
}
\author{
Richard J. de Borja
}
\keyword{ annovar }
\keyword{ depth }
\keyword{ snv }
