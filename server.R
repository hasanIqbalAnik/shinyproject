#calculation formula: bmi = weight/(height*height)
bmiCalculation <- function(height, weight) (weight/(height*height))

shinyServer(
  function(input, output){
    #get height from input
    output$inputHeight <- renderPrint({input$height})
    #get weight from input
    output$inputWeight <- renderPrint({input$weight})
    #output the calculated bmi
    output$bmi <- renderPrint({bmiCalculation(input$height, input$weight)})
  }
)