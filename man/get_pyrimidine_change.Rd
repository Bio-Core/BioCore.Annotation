\name{get_pyrimidine_change}
\alias{get_pyrimidine_change}
\title{
Get pyrimidine change
}
\description{
Return the pyrimidine (i.e. C, T) based change for a given mutation.
}
\usage{
get_pyrimidine_change(x)
}
\arguments{
  \item{x}{a two character array containing the reference allele and alternate allele as provided by the variant caller}
}
\details{
This function can be used with the "apply" statement to provide a variant in the form Ref>Alt.
}
\value{
Returns a string containing Ref>Alt.
}
\author{
Richard J. de Borja
}
\examples{
get_pyrimidine_change(x=c('C', 'T'))
get_pyrimidine_change(x=c('G', 'C'))
get_pyrimidine_change(x=c('A', 'T'))
get_pyrimidine_change(x=c('T', 'C'))
}

\keyword{ pyrimidine }
\keyword{ variant }
\keyword{ signature }
