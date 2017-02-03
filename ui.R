shinyUI(
  fluidPage(
    tags$head(
      tags$script(
        src='local.js'
      ),
      tags$link(
        href='https://fonts.googleapis.com/css?family=Ubuntu',
        rel='stylesheet'
      )
    ),
    HTML('<h1 style="color:steelBlue;font-family: Ubuntu, sans-serif;"> NASA Photo of the Day </h1>'),
    dateInput("date", label = h3("Select Date:")),
    hr(),
    uiOutput("Title"),
    uiOutput("myImage"),
    br(),
    uiOutput('description')
    
    #<link href='https://fonts.googleapis.com/css?family=Ubuntu' rel='stylesheet' type='text/css'>
  )
)