\name{filter_annovar_data}
\alias{filter_annovar_data}
\title{
Filter ANNOVAR data
}
\description{
A function to filter ANNOVAR output.
}
\usage{
filter_annovar_data(data = NULL, filter_name = NULL, value = NULL, type = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{ A dataframe containing the ANNOVAR output (required) }
  \item{filter_name}{ The column name to filter on (required) }
  \item{value}{ The value of the filter (required) }
  \item{type}{ The type of filtering, must be one of "eq", "lt", "lteq", "gt" or "gteq" (required) }
}
\value{
Returns a dataframe with filtered data removed.
}
\author{
Richard J. de Borja
}
\keyword{ annovar }
\keyword{ filter }
