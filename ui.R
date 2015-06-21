library(shiny)
library(datasets)
require(graphics)
shinyUI(fluidPage(
        headerPanel(img(src = "dataprod.jpg"), h2("Developing Data Products: Coursera Project") ),
        
        # description and input
        sidebarPanel(
                h4('Dataset Considered: mtcars'),
                h4('Outcome Variable: mpg (miles per gallon)'),
                h3('Choose Predictor Variable'),
                selectInput('x', label='Predictor',selected='cyl', choices=names(mtcars)),
                h3('Select Line Color'),
                selectInput('color', label='Color', choices=palette()),
                h3('Select Points to Plot'),
                numericInput('id',label='Point ID',13, min=13, max=25, step=1),
                h3('Project Details'),
                p("The project leverages the 'mtcars' dataset to plot the",
                  "regression model using two variables of this dataset:",
                  "one as predictor, based on user selection, and the",
                  "other is 'mpg' as the outcome."),
                p("It is simple to use and when the predictor is selected",
                  "the plot is updated putting the new fit.")),
        
        # plot and output
        mainPanel(
                div(h2("Developing Data Products: Coursera Project", style="color:#ff6600;margin:-65px 0px 10px 20px;")),
                h4('Summary of Attributes Selected'),
                h4(verbatimTextOutput("summary")),
                h4(textOutput('text')),
                plotOutput('myPlot'))
        
))