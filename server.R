library(shiny)
shinyServer(
  function(input,output) {
    output$height <- renderText(input$height) 
    output$weight <- renderText(input$weight)
    #10000 below because height was given in centimeters
    output$result <- reactive({input$weight/(input$height*input$height/10000)})
  }
)