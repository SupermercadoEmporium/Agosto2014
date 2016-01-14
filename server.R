#Segundo Semestre
#install.packages("shiny")
library(shiny)

shinyServer(function(input, output) {
  
  
  output$Agosto<-renderPrint({
    y<-input$select
    paste(y,round(a_matrix_Agosto[y,y], digits=4))
  })
  
  output$Agosto2<-renderPrint({
    y<-input$select2
    paste(y,round(a_matrix_Agosto[y,y], digits=4))
  }) 
  
  output$confidenceAgosto<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Confidence",round(a_matrix_Agosto[x,y]/a_matrix_Agosto[x,x], digits=4))
  })
  
  output$liftAgosto<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Lift",round(round(a_matrix_Agosto[x,y], digits=4)/(round(a_matrix_Agosto[x,x], digits=4)*round(a_matrix_Agosto[y,y], digits=4)), digits=4))
  })
  
  output$tablanamecat1Agosto<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Agosto,
                                 Agosto.Categoriaf3==input$select,
                                 select=c(Agosto.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
  })
  
  output$tablaprobcat1Agosto<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Agosto,
                                 Agosto.Categoriaf3==input$select,
                                 select=c(Agosto.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[1], digits=4))
  })
  
  output$tablanamecat2Agosto<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Agosto,
                                 Agosto.Categoriaf3==input$select,
                                 select=c(Agosto.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
  })
  
  output$tablaprobcat2Agosto<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Agosto,
                                 Agosto.Categoriaf3==input$select,
                                 select=c(Agosto.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[2], digits=4))
  })
  
  output$tablanamecat3Agosto<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Agosto,
                                 Agosto.Categoriaf3==input$select,
                                 select=c(Agosto.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
  })
  
  output$tablaprobcat3Agosto<-renderText({
    
    Subconjuntos<-na.omit(subset(catg_sin_rep_Agosto,
                                 Agosto.Categoriaf3==input$select,
                                 select=c(Agosto.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[3], digits=4))
  })
  
  output$tablanamecat4Agosto<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Agosto,
                                 Agosto.Categoriaf3==input$select,
                                 select=c(Agosto.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:4]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:4){
      nam[i]<-names(t[i])
    }
    paste( names(t[4]))
  })
  
  output$tablaprobcat4Agosto<-renderText({
    
    Subconjuntos<-na.omit(subset(catg_sin_rep_Agosto,
                                 Agosto.Categoriaf3==input$select,
                                 select=c(Agosto.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:4]/length(sub)
    paste( round(t[4], digits=4))
  })

  output$tablanamecat5Agosto<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Agosto,
                                 Agosto.Categoriaf3==input$select,
                                 select=c(Agosto.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[5]))
  })
  
  output$tablaprobcat5Agosto<-renderText({
    
    Subconjuntos<-na.omit(subset(catg_sin_rep_Agosto,
                                 Agosto.Categoriaf3==input$select,
                                 select=c(Agosto.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    paste( round(t[5], digits=4))
  })
  
  output$tabla1namecat1Agosto<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Agosto,
                                 Agosto.Categoriaf3==input$select2,
                                 select=c(Agosto.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
  })
  
  output$tabla1probcat1Agosto<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Agosto,
                                 Agosto.Categoriaf3==input$select2,
                                 select=c(Agosto.CATEGORIA1)))  
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[1], digits=4))
  })
  
  output$tabla1namecat2Agosto<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Agosto,
                                 Agosto.Categoriaf3==input$select2,
                                 select=c(Agosto.CATEGORIA1)))  
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
  })
  
  output$tabla1probcat2Agosto<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Agosto,
                                 Agosto.Categoriaf3==input$select2,
                                 select=c(Agosto.CATEGORIA1)))  
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[2], digits=4))
  })
  
  output$tabla1namecat3Agosto<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Agosto,
                                 Agosto.Categoriaf3==input$select2,
                                 select=c(Agosto.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
  })
  
  output$tabla1probcat3Agosto<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Agosto,
                                 Agosto.Categoriaf3==input$select2,
                                 select=c(Agosto.CATEGORIA1)))  
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[3], digits=4))
  })
  
  output$tabla1namecat4Agosto<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Agosto,
                                 Agosto.Categoriaf3==input$select2,
                                 select=c(Agosto.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:4]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:4){
      nam[i]<-names(t[i])
    }
    paste( names(t[4]))
  })
  
  output$tabla1probcat4Agosto<-renderText({
    
    Subconjuntos<-na.omit(subset(catg_sin_rep_Agosto,
                                 Agosto.Categoriaf3==input$select2,
                                 select=c(Agosto.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:4]/length(sub)
    paste( round(t[4], digits=4))
  })

  output$tabla1namecat5Agosto<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Agosto,
                                 Agosto.Categoriaf3==input$select2,
                                 select=c(Agosto.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[5]))
  })
  
  output$tabla1probcat5Agosto<-renderText({
    
    Subconjuntos<-na.omit(subset(catg_sin_rep_Agosto,
                                 Agosto.Categoriaf3==input$select2,
                                 select=c(Agosto.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    paste( round(t[5], digits=4))
  })
  
  
})


#Agosto
catg_Agosto<-data.frame(Agosto$CATEGORIA1, Agosto$Categoriaf3,
                        Agosto$SLSEQ, Agosto$TICKET)

catg_sin_rep_Agosto<-unique(catg_Agosto)
