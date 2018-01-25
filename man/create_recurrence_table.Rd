\name{create_recurrence_table}
\alias{create_recurrence_table}
\title{
Create a table of recurrently mutated genes.
}
\description{
A function that imports ANNOVAR annotated files merged using create_merged_data and
creates a table with the number of mutations found in genes among samples in decreasing
order of recurrence.
}
\usage{
create_recurrence_table(data = NULL, recurrence_threshold = 2)
}
\arguments{
  \item{data}{dataframe from create_merged_data function (required)}
  \item{recurrence_threshold}{the threshold to cutoff recurrence (default: 2)}
}
\value{
Returns a table with samples in the columns, genes and counts as rows in descending
order of recurrence.
}
\author{
Richard J. de Borja
}
\keyword{ recurrence }
\keyword{ genes }
\keyword{ table }
