#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(datasets)
# Define UI for application that draws a histogram
shinyUI(fluidPage(    
  
  # Give the page a title
  titlePanel("Telephones by region"),
  
  # Generate a row with a sidebar
  sidebarLayout(      
    
    # Define the sidebar with one input
    sidebarPanel(
      selectInput("region", "Region:", 
                  choices=colnames(WorldPhones)),
      hr(),
      helpText("Select a Region To see the number of Telephones there by year"),
      helpText("Data from AT&T (1961) The World's Telephones."),
      hr(),
      selectInput("year", "Year:", 
                  choices=row.names(WorldPhones)),
      hr(),
      helpText("Select a Year To see the number of Telephones in this year at each region"),
      helpText("Data from AT&T (1961) The World's Telephones.")
    ),

    # Create a spot for the barplot
    mainPanel(
      plotOutput("phonePlot"),
      plotOutput("yearPlot") 
    )
    
  )
))
