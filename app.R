# Testing calling a user-written program hosted within a private Github repo

library(shiny)
library(covoid)

# Define UI for application that draws a histogram
ui <- fluidPage(

    titlePanel("Can we call the covoid package?"),

    textOutput("test")
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$test <- renderText({
        covoid::age_distributions_un()
    })

}

# Run the application
shinyApp(ui = ui, server = server)
