\name{get_annovar_files}
\alias{get_annovar_files}
\title{
Get a list of ANNOVAR files.
}
\description{
Retrieve a list of ANNOVAR files from a given directory.
}
\usage{
get_annovar_files(path = '.', pattern = '.hg19_multianno.txt', recursive = TRUE)
}
\arguments{
  \item{path}{Directory to search ANNOVAR files (default: .)  }
  \item{pattern}{ Pattern to search ANNOVAR filenames (default: .hg19_multianno.txt) }
  \item{recursive}{ Search a directory recursively (default: TRUE) }
}
\value{
Returns a list of ANNOVAR files.
}
\author{
Richard J. de Borja
}
\keyword{ annovar }
