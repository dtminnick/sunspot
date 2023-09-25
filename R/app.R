
library("shiny")

data(sunspot)

ui <- fluidPage(

      titlePanel("Sunspot Dataset"),

      tabsetPanel(

            tabPanel("View Sunspot Data",

                     sidebarLayout(

                           sidebarPanel(),

                           mainPanel()

                     ) # sidebarLayout

            ), # tabPanel

            tabPanel("Forecast"),

            tabPanel("About")

      ) # tabsetPanel

) # fluidPage

server <- function(input, output, session) {



}

shinyApp(ui, server)
