\name{add_sample_name}
\alias{add_sample_name}
\title{
Add sample namel
}
\description{
Append a column with the sample name.
}
\usage{
add_sample_name(data = NULL, sample = NULL)
}
\arguments{
  \item{data}{dataframe containing the variant data (required)}
  \item{sample}{name of the sample to append to the dataframe (required)}
}
\value{
Returns a dataframe with the sample name appended as a separate column labelled "sample".
}
\author{
Richard J. de Borja
}
\keyword{ sample }
\keyword{ name }
