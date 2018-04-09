\name{add_protein_change_column}
\alias{add_protein_change_column}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Add protein change column.
}
\description{
Extract the protein change from the ANNOVAR string and put the value into it's own column.
}
\usage{
add_protein_change_column(data = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{dataframe containing the ANNOVAR output (required)}
}
\author{
Richard J. de Borja <richard.deborja@uhnresearch.ca>
}
\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (data = NULL)
{
    if (is.null(data))
        stop("Mandatory argument data is missing")
    data$aa_change <- apply(X = as.matrix(data$AAChange.refGene),
        MARGIN = 1, FUN = get_protein_change)
    data$aa_gene <- apply(X = as.matrix(data$AAChange.refGene),
        MARGIN = 1, FUN = get_gene_name)
    return(data)
  }
}
\keyword{ annovar }
\keyword{ protein }
\keyword{ change }
