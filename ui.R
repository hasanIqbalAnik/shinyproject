shinyUI(
  pageWithSidebar(
    #Application title
    headerPanel("BMI calculation"),
    sidebarPanel(
      #input height 
      numericInput('height', 'Enter your height in meters', 0, min = 0, max = 10, step = .5),
      #input weight
      numericInput('weight', 'Enter your weight in KGs', 0, min = 0, max = 500, step=1),
      #submit button to ensure that calculation doesn't happen instantly
      submitButton('Submit')
    ),
    mainPanel(
      h3('Calculated BMI: '),
      h4('You entered: '),
      #feedback the user their inputs
      verbatimTextOutput("inputHeight"),
      verbatimTextOutput("inputWeight"),
      h4('Which resulted in BMI: '),
      verbatimTextOutput("bmi"),
      h5("========================================================================================"),
      h3("Doc: How to use this system: "),
      h5("This software takes your height and weight as input and calculates the BMI according to those inputs. In the left panel, you can enter those two values. After hitting the submit button, a R function at the server shall calculate the BMI and return the result in the right side of the screen. You would also get the input values as confirmation.")
    )
  )
)