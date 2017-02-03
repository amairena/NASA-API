shinyServer(function(input,output,session){
  observe({
    date<-input$date
    url <- paste('https://api.nasa.gov/planetary/apod?date=',date,'&api_key=ZJ2KQMxhyK4FzrJvyyVfxe8XnSaMaqz5g39vMrjS',sep='')
    response<-GET(url)
    body<-content(response,'text')
    body<-toJSON(fromJSON(body))
    #print(body)
    session$sendCustomMessage('nasaInfo',body)
    
  })#closes observe
  output$Title<-renderUI({
      #fromJSON(input$nasaInfo)
      title<-fromJSON(input$title)
      h3(title)
  })
  output$myImage <- renderUI({
    imgURL<-fromJSON(input$imageURL)
    img(src = imgURL$url[[1]])
  })
  output$description<-renderUI({
    #fromJSON(input$nasaInfo)
    description<-fromJSON(input$explanation)
    p(description)
  })
  
  
  
})