library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Emporium 2014"),
  
  fluidRow(
    
    column(3,
           selectInput("select", label = h3("Primera Categoria(Antecedente)", style ="color:#297418;"), 
                       choices =  c(vec_aux1[(3:30)],vec_aux1[(32:41)])), tableOutput("Agosto")),
    column(3,
           selectInput("select2", label = h3("Segunda Categoria (Consecuente)", style = "color:#dd21d5;"), 
                       choices = c(vec_aux1[(3:30)],vec_aux1[(32:41)])), tableOutput("Agosto2"))
  ),
    

  titlePanel("Agosto"),
  sidebarLayout(
    sidebarPanel( "Resumen Agosto",
                  style = "color:#2183dd;",
                  tableOutput("confidenceAgosto"),
                  tableOutput("liftAgosto")
    ),
    mainPanel()
  ),
  
  sidebarLayout(
    sidebarPanel( "Productos más vendidos",
                  textOutput("tablanamecat1Agosto"),
                  style = "color:#297418;",
                  textOutput("tablaprobcat1Agosto"),
                  textOutput("tablanamecat2Agosto"),
                  textOutput("tablaprobcat2Agosto"),
                  textOutput("tablanamecat3Agosto"),
                  textOutput("tablaprobcat3Agosto"),
                  textOutput("tablanamecat4Agosto"),
                  textOutput("tablaprobcat4Agosto"),
                  textOutput("tablanamecat5Agosto"),
                  textOutput("tablaprobcat5Agosto")),
    
    
    sidebarPanel( "Productos más vendidos",
                  textOutput("tabla1namecat1Agosto"),
                  style = "color:#dd21d5;",
                  textOutput("tabla1probcat1Agosto"),
                  textOutput("tabla1namecat2Agosto"),
                  textOutput("tabla1probcat2Agosto"),
                  textOutput("tabla1namecat3Agosto"),
                  textOutput("tabla1probcat3Agosto"),
                  textOutput("tabla1namecat4Agosto"),
                  textOutput("tabla1probcat4Agosto"),
                  textOutput("tabla1namecat5Agosto"),
                  textOutput("tabla1probcat5Agosto"))
  )
  
  
))
