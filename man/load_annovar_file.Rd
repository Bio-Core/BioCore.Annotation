\name{load_annovar_file}
\alias{load_annovar_file}

\title{
Load an ANNOVAR file.
}
\description{
A function to load an ANNOVAR file from the BioCore analysis pipeline.
}
\usage{
load_annovar_file(file = NULL, colheader = get_annovar_colnames())
}
\arguments{
  \item{file}{ full path to the ANNOVAR file to process (required) }
  \item{colheader}{vector of column header names}
}
\value{
  Returns a dataframe containing data from the ANNOVAR output file provided.
}
\author{
Richard J. de Borja
}
\keyword{ annovar }
