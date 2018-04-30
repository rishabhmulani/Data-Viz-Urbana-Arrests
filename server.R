
# This is the server logic for the Shiny web application.
#
# 
#

library(shiny)

arrest <- read.csv("C:\\Users\\Pravesh\\Documents\\Assignments\\Data Viz\\Project\\Datasets\\Urbana_Police_Arrests_Since_1988.csv")

arrest = subset(arrest, AGE.AT.ARREST > 0 & AGE.AT.ARREST < 100)


xlabel = ""
ylabel = ""
shinyServer(function(input, output) {

  output$distPlot <- renderPlot({

    
    
    ###### For X axis 
    

    
    if(input$x == 'a'){
      p <- 4
      xlabel = "Year of Arrest"
    }
    
    if(input$x == 'b'){
      p <- 10
      xlabel = "Crime Category Description"
    }
    
    if(input$x == 'c'){
      p <- 6
      xlabel = "Arrest Type"
    }
    
    if(input$x == 'd'){
      p <- 15
      xlabel = "Disposition Description"
    }
    
    if(input$x == 'e'){
      p <- 16
      xlabel = "Age at Arrest"
    }
    
    if(input$x == 'f'){
      p <- 17
      xlabel = "Arrestee Sex"
    }
    
    if(input$x == 'g'){
      p <- 18
      xlabel = "Arrestee Race"
      
    }
    
    if(input$x == 'h'){
      p <- 19
      xlabel = "Arrestee Employment"
      
    }
    
    if(input$x == 'i'){
      p <- 20
      xlabel = "Arrestee Residency"
    }
    
    if(input$x == 'j'){
      p <- 21
      xlabel = "Arrestee Home City"
    }
    
    if(input$x == 'k'){
      p <- 24
      xlabel = "Arrestee Resolution"
    }
    
   
    
    
    
    ###### For Y axis 

    
    if(input$y == 'a1'){
      q <- 4
      ylabel = "Year of Arrest"
    }
    
    if(input$y == 'b1'){
      q <- 10
      ylabel = "Crime Category Description"
    }
    
    if(input$y == 'c1'){
      q <- 6
      ylabel = "Arrest Type"
    }
    
    if(input$y == 'd1'){
      q <- 15
      ylabel = "Disposition Description"
    }
    
    if(input$y == 'e1'){
      q <- 16
      ylabel = "Age at Arrest"
    }
    
    if(input$y == 'f1'){
      q <- 17
      ylabel = "Arrestee Sex"
    }
    
    if(input$y == 'g1'){
      q <- 18
      ylabel = "Arrestee Race"
    }
    
    if(input$y == 'h1'){
      q <- 19
      ylabel = "Arrestee Employment"
      
    }
    
    if(input$y == 'i1'){
      q <- 20
      ylabel = "Arrestee Residency"
    }
    
    if(input$y == 'j1'){
      q <- 21
      ylabel = "Arrestee Home City"
    }
    
    if(input$y == 'k1'){
      q <- 24
      ylabel = "Arrestee Resolution"
    }
    
   
    
    s <- arrest[,p]
    k <- arrest[,q]
    
    
   plot(s,k, col=c("red1", "blue3"), pch=14, xlab=xlabel, ylab=ylabel)
    
    
  })

})
