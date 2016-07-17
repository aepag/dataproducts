library(shiny)
shinyUI(pageWithSidebar(
  headerPanel ("BMI Calculator"),
  sidebarPanel(
    h3('Instructions'),
    p('Enter the height (in cm), and weight (in kg).  
      The calculated BMI will be shown to the right.'),
    h3('Please enter predictors of BMI below.'),
    numericInput(inputId = "height", label = 'Height (cm)', value = 170),
    numericInput(inputId = "weight", label = 'Weight (kg)', value = 80)
   ),
  mainPanel(
    p('Height'), textOutput("height"),
    p('Weight'), textOutput("weight"),
    p('BMI'), textOutput("result")
  )
))