library(shiny)

# Define UI for slider demo application
shinyUI(fluidPage(
  shinyjs::useShinyjs(),
    #  Application title
  headerPanel("Foreign Policy Survey"),
  
  sidebarPanel(
    # This is intentionally an empty object.
    h5("Created by:"),
    tags$a("The Institute for Quantitative Social Science", 
           href="http://www.iq.harvard.edu"),
    h5("Please do not close this window until you have received your Response Code! Some questions may take a minute to load."),
    h5(tags$b("Please do not skip any questions! You will be unable to complete the survey."))#,
    # Display the page counter text.
    #h5(textOutput("counter"))
  ),
  
  
  # Show a table summarizing the values entered
  mainPanel(
    # Main Action is where most everything is happenning in the
    # object (where the welcome message, survey, and results appear)
    uiOutput("MainAction"),
    # This displays the action putton Next.
    actionButton("Click.Counter", "Next")    
  )
))