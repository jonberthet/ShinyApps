library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should re-execute automatically
  #     when inputs change
  #  2) Its output type is a plot
  
  output$matrix <- renderTable({
    #x    <- faithful[, 2]  # Old Faithful Geyser data
    x <- c(0,1)
   # bins <- seq(0, 1, length.out = input$bins)
    matrix <- input$matrix
   
    A <- (matrix(c(rep(1/6,6),0,0,.5,0,.5,0,1,0,0,0,0,0,0,.5,0,0,.5,0,0,0,0,1,0,0,0,0,1,0,0,0),6,6))   
    B <- matrix(1/6,6,6)
    M <- (1-matrix)*A + matrix*B
    M.2 <- M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M
 # sum <- colSums(M.2)
    #    M.2 <- M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M%*%M
    #   sum <- colSums(M.2)
    ss <- matrix(M.2[,1],ncol=1)
    pr <- order(matrix(M.2[,1],ncol=1), decreasing = TRUE)
 
    

    
    # draw the histogram with the specified number of bins
    #hist(x, breaks = bins, col = 'darkgray', border = 'white')
#    print(A);
#    print(B);
    print(M.2)
    print(pr)
    print(ss)


    
  })
})

