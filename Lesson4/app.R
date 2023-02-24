# Lesson 4
library(shiny)

# Define UI for app that draws a histogram ----
ui <- fluidPage(
  titlePanel("Lesson 4"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Demographics map of Census USA from 2010"),
      selectInput("var", strong("Choose the variable:"), 
                  choices = c("% white", "% black",
                                 "% hispanic", "% asian"),
                  selected = "% white"),
      sliderInput("range", strong("Range to show:"),
                  min = 0, max = 100, value = c(0, 100))
    ),
    
    mainPanel(
      textOutput("static"),
      textOutput("selected_var"),
      textOutput("selected_range"),
    )
  )
)

# Define server logic required to draw a histogram ----
server <- function(input, output) {
  output$static <- renderText({"server has wrote this"})
  
  output$selected_var <- renderText({paste("you have chosen the", input$var)})
  
  output$selected_range <- renderText({paste("and the range shall go between", input$range[1], "and", input$range[2])})
}

shinyApp(ui = ui, server = server)