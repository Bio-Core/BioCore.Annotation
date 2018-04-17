\name{add_snvid}
\alias{add_snvid}
\title{
Add SNVID
}
\description{
A function that adds a SNV ID based on chromosome, start, end, reference allele and alternate allele.
}
\usage{
add_snvid(data=NULL)
}

\arguments{
  \item{data}{Dataframe containing annotated somatic mutation data (required)}
}
\value{
Returns the passed dataframe containing an additional
}
\author{
Richard J. de Borja <richard.deborja@uhnresearch.ca>
}
\examples{
data <- data.frame(matrix(nrow=1, ncol=5))
colnames(data) <- c(
  "Chr",
  "Start",
  "End",
  "Ref",
  "Alt"
)
data <- add_snvid(data=data)
}
\keyword{ snv }% use one of  RShowDoc("KEYWORDS")
\keyword{ somatic }% __ONLY ONE__ keyword per line
\keyword{ mutation }
