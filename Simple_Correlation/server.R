#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   PhonesWorld <- t(WorldPhones)
   
  output$phonePlot <- renderPlot({
    
    # Render a barplot
    barplot(WorldPhones[,input$region]*1000, 
            main=input$region,
            ylab="Number of Telephones",
            xlab="Year")
  })
  
  output$yearPlot <- renderPlot({
    
    # Render a barplot
    barplot(PhonesWorld[,input$year]*1000, 
            main=input$year,
            ylab="Number of Telephones",
            xlab="Region")
  })
  
})
