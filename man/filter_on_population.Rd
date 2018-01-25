\name{filter_on_population}
\alias{filter_on_population}
\title{
Filter on population data.
}
\description{
A function for filtering variants on common population database occurrence.
}
\usage{
filter_on_population(data = NULL, exac_threshold = 0.01, g1000_threshold = 0.01, esp_threshold = 0.01)
}
\arguments{
  \item{data}{dataframe containing variant data (required)}
  \item{exac_threshold}{maximum ExAC threshold (default: 0.01)}
  \item{g1000_threshold}{maximum 1000 Genomes threshold (default: 0.01)}
  \item{esp_threshold}{maximum Exome Server Project threshold (default: 0.01)}
}
\value{
Returns the variant dataframe with mutations that exceed the maximum threshold removed.
}
\author{
Richard J. de Borja
}
\keyword{ filter }
\keyword{ exac }
\keyword{ esp }
\keyword{ 1000g }
