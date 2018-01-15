get_annovar_files <- function(path = '.', pattern = '.hg19_multianno.txt', recursive = TRUE) {
  files <- list.files(
    path = path,
    pattern = pattern,
    recursive = recursive,
    full.names = TRUE
  )
  return(files)
}
