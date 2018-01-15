\name{get_annovar_colnames}
\alias{get_annovar_colnames}
\title{
Get the ANNOVAR column names
}
\description{
A function that returns the ANNOVAR column names.
}
\usage{
get_annovar_colnames()
}
\value{
Returns a list containing the column header for the ANNOVAR output dataframe.
}
\author{
Richard J. de Borja
}
\examples{
  data <- data.frame(matrix(ncol=75, nrow=1))
  colnames(data) <- get_annovar_colnames()
}
\keyword{ annovar }
\keyword{ header }
