# BioCore.Annotation

A R package for handling postprocessing of data generated by the Bio-Core team at the Princess Margaret Cancer Centre.

## Installation
The R package can be installed from GitHub using the "devtools" library inside the R console.

```
library(devtools)
install_github("bio-core/BioCore.Annotation")
```


### Installation of Dependencies
There are several library/package dependencies that are required before the `BioCore.Annotation` can be used.  The following provides a list of packages and how to install them using the R console.

```
install.packages("plyr")
install.packages("dplyr")
install.packages("deconstructSigs")
install_github("rdeborja/plotting.general")
```

To install `Biostrings`, refer to the `BioConductor` [package page](https://bioconductor.org/packages/release/bioc/html/Biostrings.html).


## Exported functions
The following functions are exported from the package.

*  create_recurrence_table
*  create_recurrence_heatmap
*  create_variant_signature_barplot
*  filter_on_depth
*  filter_on_population
*  get_annovar_files
*  get_coding_mutations
*  get_snv

