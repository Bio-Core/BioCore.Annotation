filter_annovar_data <- function(data = NULL, filter_name = NULL, value = NULL, type = NULL) {
  if (is.null(data)) stop("Mandatory argument data is missing")
  if (is.null(filter_name)) stop("Mandatory argument filter_name is missing")
  if (is.null(value)) stop("Mandatory argument value is missing")
  if (is.null(type)) stop("Mandatory argument type is missing")

  type_values <- c('eq', 'lt', 'lteq', 'gt', 'gteq')
  if (!(type %in% type_values)) stop("Argument type must be one of eq, lt, lteq, gt, or gteq")

  if (type == "eq") { filtered_data <- data[data[[filter_name]] == value,] }
  if (type == "lt") { filtered_data <- data[as.numeric(data[[filter_name]]) < value,] }
  if (type == "lteq") { filtered_data <- data[as.numeric(data[[filter_name]]) <= value,] }
  if (type == "gt") { filtered_data <- data[as.numeric(data[[filter_name]]) > value,] }
  if (type == "gteq") { filtered_data <- data[as.numeric(data[[filter_name]]) >= value,] }

  return(filtered_data)
}
