shinyServer(

    function(input, output) {
    output$motherHeight <- renderText({input$motherHeight})
    output$fatherHeight <- renderText({input$fatherHeight})

    output$text3 <- renderText({
        if (input$goButton == 0) 
            "Prediction comes here."
        else {
            input$goButton
            isolate( predict_h(input$motherHeight, input$fatherHeight) )
        }

    })
  }
)