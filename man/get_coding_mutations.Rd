\name{get_coding_mutations}
\alias{get_coding_mutations}
\title{
Get coding mutations.
}
\description{
A function that parses a variant database and filters any mutation that is a synonymous SNV, unknown, intergenic or an empty string.
}
\usage{
get_coding_mutations(data = NULL, filters = c("synonymous SNV", "unknown", "intergenic", ""))
}
\arguments{
  \item{data}{a dataframe containing variants (required)}
  \item{filters}{a list of functional consequence types to filter (default: "synonymous SNV", "unknown", "intergenic", "")}
}
\value{
Returns a dataframe with variants classified as "synonymous SNV", "unknown", "intergenic", or "" removed.
}
\author{
Richard J. de Borja
}
\keyword{ noncoding }
\keyword{ coding }
\keyword{ filter }
