#' operation UI Function
#'
#' @description A Shiny module that takes two numbers as inputs from the UI and
#' applies a certain operator provided as an argument to
#' \code{mod_operation_server()}. The result is rendered in the third input of UI.
#'
#' @param id an internal parameter for \code{{shiny}}.
#' @param operator a function of two arguments (normally, should be one of 
#' \code{magrittr::add()}, \code{magrittr::subtract()},
#' \code{magrittr::multiply_by()}, and \code{magrittr::divide_by()})
#'
#' @noRd 
mod_operation_ui <- function(id) {
  ns <- shiny::NS(id)
  shiny::verticalLayout(
    shiny::inputPanel(
      shiny::numericInput(ns("num_1"), value = 10, label = ""),
      shiny::numericInput(ns("num_2"), value = 20, label = ""),
      shiny::numericInput(ns("num_3"), value = NULL, label = "")
    )
  )
}
    
#' operation Server Function
#'
#' @noRd 
mod_operation_server <- function(id, operator) {
  shiny::moduleServer(id, function(input, output, session) {
    
    get_value <- shiny::reactive(operator(input$num_1, input$num_2))
    updateNum3 <- shiny::reactive(
      shiny::updateNumericInput(session, "num_3", value = get_value())
    )
    
    shiny::observeEvent(input$num_1, updateNum3())
    
    shiny::observeEvent(input$num_2, updateNum3())
    
  })
}
