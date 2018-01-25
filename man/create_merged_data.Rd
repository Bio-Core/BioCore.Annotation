\name{create_merged_data}
\alias{create_merged_data}
\title{
Create merged data
}
\description{
A function that imports ANNOVAR annotated SNV files from the BioCore pipeline.
}
\usage{
create_merged_data(path = NULL, pattern = ".hg19_multianno.txt")
}
\arguments{
  \item{path}{full path to the ANNOVAR annotated SNV files (required)}
  \item{pattern}{suffix pattern to search in the directory (default: .hg19_multianno.txt)}
}
\value{
Returns a dataframe containing merged SNV data from a cohort of samples.
}
\author{
Richard J. de Borja
}
\keyword{ biocore }
\keyword{ annovar }
\keyword{ variants }
