library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Markov Chain Pertubs"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("matrix",
                  "pertubation value",
                  min = 0,
                  max = 1,
                  value = .15)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      tableOutput("matrix")
    )
  )
))

