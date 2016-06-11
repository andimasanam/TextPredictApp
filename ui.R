library("ggvis")

shinyUI(fluidPage(
  theme = "bootstrap.css",
  verticalLayout(
    titlePanel("Coursera Data Science Capstone: Text Prediction Project"),
    #h4("Introduction"),
    HTML("<p>This Shiny App was built to fulfill the requirement for Coursera Data Science Specialization project. It provides a basic text prediction capability that is supported by a n-gram language model. </p>"),
    h4("Single Prediction Mode"),
    textInput("entry1", "Please enter at least two words", ""),
    actionButton("submitButton1", "Predict the Next Word"),
    #textOutput("singlePredict"),
    verbatimTextOutput("singlePredict"),
    h4("Continuous Prediction Mode"),
    p("This mode will take a whole sentence, consecutively predict all the words, and visualize the performance in the following plot. You can type in a sentence or randomly choose one from the database."),
    textInput("entry2", "", "The guy in front of me just bought a pound of chicken, bacon, a bouquet, and a case of beer."),
    
    actionButton("submitButton3", "Random Sentence"),
    actionButton("submitButton2", "Evaluate Prediction"),
    HTML("<p>Each time the model will produce 5 choices with decreasing probabilities. <br/>Score criteria: 5 = correct word is the first choice; 4 = second choice ... 0 = missed. (Hence, higher score means better prediction.)</p>"),
    ggvisOutput("plot")
  )
))
