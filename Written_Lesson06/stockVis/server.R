# server.R

library(quantmod)
source("helpers.R")

shinyServer(function(input, output) {

  ##here is the reactive expression
  dataInput <- reactive({ 
     getSymbols(input$symb, src = "yahoo",
      from = input$dates[1],
      to = input$dates[2],
      auto.assign = FALSE)
    })
  
  finalInput <- reactive({
    if(!input$adjust) return (dataInput()) 
    adjust(dataInput())
  })
  
  output$plot <- renderPlot({
  chartSeries(finalInput(), theme = chartTheme("white"), 
        type = "line", log.scale = input$log, TA = NULL)
  })
  
    # output$plot <- renderPlot({
    #   data <= datainput()
    #   if(input$adjust) data <- adjust(dataInput())
    
  #here it was originally and non-reactive
  # output$plot <- renderPlot({
  #   data <- getSymbols(input$symb, src = "yahoo", 
  #     from = input$dates[1],
  #     to = input$dates[2],
  #     auto.assign = FALSE)
                 
   ## chartSeries(data, theme = chartTheme("white"), 
  ##    type = "line", log.scale = input$log, TA = NULL)
  
})