#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

my.ui <- navbarPage(
  
  # Application title
  "In Class Survey Data",
  
  # Sidebar with a slider input for number of bins 
  tabPanel("ScatterPlot",
    sidebarLayout(
      sidebarPanel(
        sliderInput("hours",
                    "Minimum number of hours:",
                    min = 0,
                    max = 24,
                    value = 4)
      ),
    
    # Show a plot of the generated distribution
      mainPanel(
        plotlyOutput("distPlot")
      )
    )
  ),
  
  tabPanel("Histogram",
    sidebarLayout(
      sidebarPanel(
        selectInput('hist.var', 'What do you want to histogram?',
                    choices = list('How much sleep?' = 'sleep',
                                   'Which type of pet?' = 'pet')
                    )
      ),
      
      mainPanel(
        plotlyOutput("histPlot")
      )
    )
  )
)

# Define UI for application that draws a histogram
shinyUI(my.ui)
