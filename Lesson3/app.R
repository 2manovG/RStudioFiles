# Lesson 3
library(shiny)

# Define UI for app that draws a histogram ----
ui <- fluidPage(
  titlePanel("Lesson 3"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Demographics map of Census USA from 2010"),
      selectInput("var", strong("Choose the variable:"), 
                  choices = list("% white" = 1, "% black" = 2,
                                 "% hispanic" = 3, "% asian" = 4),
                  selected = 1),
      sliderInput("range", strong("Range to show:"),
                  min = 0, max = 100, value = c(0, 100))
    ),
    
    mainPanel(
      p("Nothing here (for now)")
    )
  )
)

# Define server logic required to draw a histogram ----
server <- function(input, output) {
  
}

shinyApp(ui = ui, server = server)