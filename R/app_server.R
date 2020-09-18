#' The application server-side
#' 
#' @param input,output,session Internal parameters for {shiny}. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function( input, output, session ) {
  mod_operation_server("add", magrittr::add)
  mod_operation_server("subtract", magrittr::subtract)
  mod_operation_server("multiply", magrittr::multiply_by)
  mod_operation_server("divide", magrittr::divide_by)
}
