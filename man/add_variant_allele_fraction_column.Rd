\name{add_variant_allele_fraction_column}
\alias{add_variant_allele_fraction_column}
\title{
Add variant allele fraction (VAF) column to dataframe.
}
\description{
A function to add the variant allele fraction (VAF) as a separate column using the
VCF FORMAT string.
}
\usage{
add_variant_allele_fraction_column(data = NULL, format_column = "vcf_format_sample", vaf_index = 15)
}
\arguments{
  \item{data}{dataframe containing mutation data (required)}
  \item{format_column}{column name for the FORMAT string (default: vcf_format_sample)}
  \item{vaf_index}{array index containing the variant allele fraction}
}
\value{
Returns a dataframe with the VAF column appended and labelled "vaf".
}
\author{
Richard J. de Borja
}
\keyword{ vaf }
\keyword{ variant }
\keyword{ allele }
\keyword{ fraction }
