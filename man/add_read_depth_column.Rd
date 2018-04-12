\name{add_read_depth_column}
\alias{add_read_depth_column}
\title{
Add a read depth column to the ANNOVAR output dataframe.
}
\description{
A R function that uses get_read_depth() and appends the depth of coverage value
to the original ANNOVAR dataframe.
}
\usage{
add_read_depth_column(data = NULL, format_column = "vcf_format_sample", depth_index=4)
}
\arguments{
  \item{data}{ an ANNOVAR based dataframe (required)}
  \item{format_column}{ the column name containing the VCF FORMAT string (default: vcf_format_sample)}
  \item{depth_index}{the array index containing the depth information}
}
\value{
Returns the original input dataframe with a "depth" column containing the depth of coverage.
}
\author{
Richard J. de Borja
}
\keyword{ annovar }
\keyword{ depth }
\keyword{ coverage }
