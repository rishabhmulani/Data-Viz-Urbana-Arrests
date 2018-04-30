
# This is the user-interface definition of the Shiny web application.
#
#
# 
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Urbana Arrest data"),

  # Sidebar
  sidebarLayout(
    sidebarPanel(
      #radio buttons
      radioButtons("x", "Select X axis:",
                   list("YEAR OF ARREST"='a', "CRIME CATEGORY DESCRIPTION"='b', "ARREST TYPE"='c', "DISPOSITION DESCRIPTION"='d',
                        "AGE AT ARREST"='e', "ARRESTEE SEX"='f', "ARRESTEE RACE"='g', "ARRESTEE EMPLOYMENT"='h',
                        "ARRESTEE RESIDENCY"='i', "ARRESTEE HOME CITY"='j', "ARRESTEE RESOLUTION"='k')),
      radioButtons("y", "Select Y axis:",
                   list("YEAR OF ARREST"='a1', "CRIME CATEGORY DESCRIPTION"='b1', "ARREST TYPE"='c1', "DISPOSITION DESCRIPTION"='d1',
                        "AGE AT ARREST"='e1', "ARRESTEE SEX"='f1', "ARRESTEE RACE"='g1',  "ARRESTEE EMPLOYMENT"='h1',
                        "ARRESTEE RESIDENCY"='i1', "ARRESTEE HOME CITY"='j1', "ARRESTEE RESOLUTION"='k1'))
    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))
