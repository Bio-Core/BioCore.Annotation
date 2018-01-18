\name{get_variant_allele_fraction}
\alias{get_variant_allele_fraction}
\title{
Get the variant allele fraction from the FORMAT string.
}
\description{
A method to parse the FORMAT string and extract the variant allele fraction (FA field).
}
\usage{
get_variant_allele_fraction(data=NULL, delimiter=':', vaf_index=15)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{ an ANNOVAR dataframe (required) }
  \item{delimiter}{ field delimiter used in the FORMAT string (default: :) }
  \item{vaf_index}{ index within the FORMAT string for the variant allele fraction (default: 15) }
}
\value{
Returns the variant allele fraction for the given variant.
}
\author{
Richard J. de Borja
}
\examples{
  format_string = '1/1:41:8:8:0:8:100:7.77E-5:0:50:0:0:6:2:1.0000'
  print(get_variant_allele_fraction(data=format_string))
}
\keyword{ annovar }
\keyword{ vaf }
\keyword{ allele }
\keyword{ fraction }
