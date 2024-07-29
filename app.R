library(shiny)
library(DT)
library(bioacousticsquotes)

data(quotes)


ui <- fluidPage(titlePanel("Bioacoustics quotes"),
                mainPanel(width = 12,
                          DTOutput("mytable")))

server <- function(input, output) {
  output$mytable <- renderDT(quotes,
                                        options = list(scrollX = TRUE),
                                        rownames = FALSE)
}

# Run the application
shinyApp(ui = ui, server = server)
