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
  titlePanel("Hello Shiny!"),
  verbatimTextOutput(infoText),
  sidebarLayout(sidebarPanel(
    sliderInput(
      inputId = "bins",
      label = "Number of bins:",
      min = 1,
      max = 50,
      value = 30
    )
  ),
  
  mainPanel(plotOutput(outputId = "distPlot")))
)

server <- function(input, output) {
  output$distPlot <- renderPlot({
    x    <- faithful$waiting
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    hist(
      x,
      breaks = bins,
      col = "#75AADB",
      border = "white",
      xlab = "Waiting time to next eruption (in mins)",
      main = "Histogram of waiting times"
    )
    
  })
  
}

# Create Shiny app ----
shinyApp(ui = ui, server = server)
