library(shiny)

ui <- fluidPage(

  titlePanel("Cool Title"),

  sidebarLayout(

    sidebarPanel(
      h1("Hello world"),
      h2("Smaller Hello world", style="color: red;"),
      p("lorem ipsum dolor sit amet"),
      
      actionButton("button", "Submit"),
      textInput("text", "Type something in here"),
      selectInput(
        inputId = "variable",
        label = h5("Choose a variable to display"),
        choices = list("Percent White" = 1, "Percent Black" = 2, "Percent Hispanic"=3, "Percent Asian" = 4)
      ),
      radioButtons(
        inputId = "radio",
        label = "Some Radio Buttons",
        choices = list("Abraham Lincoln" = 1, "Thomas Jefferson" = 2, "George Washington" = 3)
      ),
      sliderInput(
        label = "Ages",
        inputId = "ages",
        min = 0,
        max = 100,
        value = c(0, 100)
      )
    ),
    mainPanel(
      h1("Main Panel")
    )
  )
)

server <- function(input, output) {

}

shinyApp(ui = ui, server = server)
