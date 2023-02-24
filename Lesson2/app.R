# Lesson 2
library(shiny)

# Define UI for app that draws a histogram ----
ui <- fluidPage(
  titlePanel("Lesson 2"),
  sidebarLayout(position="right",
    sidebarPanel(
      h1("BIG EARTH", align = "center"),
      img(src = "Earthr_2.gif"),
      br(),
      br(),
      br(),
      br(),
      br(),
      br(),
      h6("small earth", align = "center"),
      img(src = "earth05.gif"),
    ),
    
    mainPanel(
      h1("Earth"),
      p(strong(span("Earth", style="color:blue")), " is an ellipsoid with a circumference of about", em("40,000"), "km. It is the densest planet in the Solar System."),
      p("How to print \"Earth\" is JavaScript:"),
      code("console.log('\\uD83C\\uDF0D')"),
      br(),
      
      h2("Features"),
      p(span("-Water", style="color:blue")),
      p(span("-Ground", style="color:green")),
      br(),
      
      p("Source: ", a("wikipedia", href="https://en.wikipedia.org/wiki/Earth")),
      
    )
  )
)

# Define server logic required to draw a histogram ----
server <- function(input, output) {
  
}

shinyApp(ui = ui, server = server)