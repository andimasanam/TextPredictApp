library("ggvis")

shinyUI(fluidPage(
  theme = "bootstrap.css",
  verticalLayout(
    titlePanel("Data Science Capstone: Text Prediction"),
    #h4("Introduction"),
    HTML("<p>This Shiny App was built to fulfill the requirement for Coursera Data Science Specialization. It provides a basic text prediction capability (\"assistive typing\") that is supported by a n-gram language model. The source code of this project can be found on <a href='https://github.com/lifan0127/DSCapstoneProject'>GitHub</a>.</p>"),
    h4("Single Prediction Mode"),
    textInput("entry1", "Please enter at least two words", ""),
    actionButton("submitButton1", "Predict the Next Word"),
    #textOutput("singlePredict"),
    verbatimTextOutput("singlePredict")
  )
))

