library(shiny)


shinyUI(fluidPage(

  titlePanel("title panel"),

  sidebarLayout(
    sidebarPanel( "sidebar panel"),
    mainPanel("main panel", h1("First level title"),
               h2("Second level title"),
               h3("Third level title"),
               h4("Fourth level title"),
               h5("Fifth level title"),
               h6("Sixth level title")
              )
  )

))


# creates a paged app looking UI
# shinyUI(navbarPage("App Title",
#                    tabPanel("Plot"),
#                    navbarMenu("More",
#                               tabPanel("Summary"),
#                               tabPanel("Table")
#                    )
# ))