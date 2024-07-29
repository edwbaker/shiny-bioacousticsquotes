library(shiny)
library(DT)
library(bioacousticsquotes)

data(quotes)


ui <- fluidPage(titlePanel("Bioacoustics and ecoacoustics quotes"),
                HTML("<p>The tabe shows the bioacoustics and ecoacoustics quotes from the R package <a href='https://quotes.acousti.cloud/'>bioacousticsquotes</a> by <a href='https://ebaker.me.uk'> Ed Baker</a>."),
                mainPanel(width = 12,
                          DTOutput("mytable")))

server <- function(input, output) {
  output$mytable <- renderDT(quotes,
                                        options = list(scrollX = TRUE),
                                        rownames = FALSE)
}

# Run the application
shinyApp(ui = ui, server = server)
