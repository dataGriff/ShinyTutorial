library(shiny)


shinyUI(fluidPage(

  titlePanel("title panel"),

  sidebarLayout(
    sidebarPanel( "sidebar panel"),
    mainPanel(
      h6("Episode IV", align = "center"),
      h6("A NEW HOPE", align = "center"),
      h5("It is a period of civil war.", align = "center"),
      h4("Rebel spaceships, striking", align = "center"),
      h3("from a hidden base, have won", align = "center"),
      h2("their first victory against the", align = "center"),
      h1("evil Galactic Empire.")
    )
   
    )
  )

)


# creates a paged app looking UI
# shinyUI(navbarPage("App Title",
#                    tabPanel("Plot"),
#                    navbarMenu("More",
#                               tabPanel("Summary"),
#                               tabPanel("Table")
#                    )
# ))