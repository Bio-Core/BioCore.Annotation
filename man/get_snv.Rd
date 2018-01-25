\name{get_snv}
\alias{get_snv}
\title{
Get single nucleotide variants (SNVs)
}
\description{
A method to filter mutations from ANNOVAR output.  Limiting mutations to single nucleotide variants and removing indels.
}
\usage{
get_snv(data = NULL)
}
\arguments{
  \item{data}{dataframe containing mutation output from the BioCore SNV pipeline}
}
\value{
Returns a dataframe with indels removed.
}
\author{
Richard J. de Borja
}
\keyword{ snv }
\keyword{ filter }
