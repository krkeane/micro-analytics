library(shiny)

readRenviron('/etc/os-release')
pn <- Sys.getenv("PRETTY_NAME")
infoText <- sprintf(
  "\n%s \"%s\"\n%s %s\n\n",
  R.Version()$version.string,
  R.Version()$nickname,
  pn,
  R.Version()$platform
)


ui <- fluidPage(
  numericInput(inputId = "n",
  "Sample size", value = 25),
  plotOutput(outputId = "hist"),
  br(),
  pre(infoText),
  br())

server <- function(input, output) {
  output$hist <- renderPlot({
    hist(rnorm(input$n))
  })
}

shinyApp(ui = ui, server = server)
