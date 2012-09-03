#Carga de paquetes
library(ggplot2)
library(tables)
library(gdata)
library(knitr)
library(rdatamarket)
booktabs()

opts_chunk$set(fig.align="center",  message=FALSE, warning=FALSE)

#Importar base de datos 1
db1 <- read.csv("pwt71_w_country_names.csv")

selectediso = c("GER","CAN", "GRC") ;
gcgsel=subset(db1,isocode %in% selectediso)# 
gcgsel = droplevels(gcgsel) #use this in case that void levels for country or iso give you problems

#Pregunta 1
  #Gráficos
    #Para GDP per capita (PPP) $ of 2005
      # make "base" plot, will add features below
      plot1=qplot(year,rgdpch, data=gcgsel,geom= "path", colour=country)
      #normally one would only show the final version of the plot, so this call to print wouldn't exist
      print(plot1) # prints means here to show in screen

      # add a smoothed mean to the base plot
      plot2 = plot1 + geom_smooth(se=TRUE, linetype=2)
      # (... neither would this one)
      print(plot2)
      
      # change labels of the axes and legend
      plot3= plot2 + labs(colour = "Countries", x="Year", y="GDP per capita (PPP), $ of 2005")
      
      print(plot3) # this is the one you should 'print' 

    #Para Consumption Share of PPP Converted GDP Per Capita at 2005 constant prices [rgdpl]
      plot4=qplot(year,kc, data=gcgsel,geom= "path", colour=country) + geom_smooth(se=TRUE, linetype=2) + labs(colour = "Countries", x="Year", y="Consumption Share of PPP Converted GDP(pc) 2005")
      print(plot4) 

    #Para Government Consumption Share of PPP Converted GDP Per Capita at 2005 constant prices [rgdpl]
      plot5=qplot(year,kg, data=gcgsel,geom= "path", colour=country) + geom_smooth(se=TRUE, linetype=2) + labs(colour = "Countries", x="Year", y="Government Consumption Share of PPP Converted GDP(pc) 2005")
      print(plot5) 

  #Tablas
    # now a table
    # na.omit is needed since otherwise mean and sd return NA
    table1 = tabular((country + 1) ~ (n=1) + Format(digits=2)*(kc+ki+kg+openk) * (mean+sd), data=na.omit(gcgsel))
    table1

#Pregunta 2: DataMarket
  #Para Real Effective Exchange Rate. Sources: World Bank (citing: World Bank staff calculations based on Datastream and IMF International Finance Statistics data.)
    erinfo = dminfo("http://data.is/OKBWv1")
    erzoo = dmseries(erinfo)
    erdf = dmlist(erinfo)
    
    ersmalldf =  dmlist(erinfo, "Country" = c("Australia","Belize","Uganda"))
    ersmallzoo =  dmseries(erinfo, "Country" = c("Australia","Belize","Uganda"))
    
    plot1_er=qplot(Year,Value, data=ersmalldf,geom= "path", colour=Country)
    print(plot1_er)
    
    plot(ersmallzoo, plot.type="single", lty=1:3, col=1:3)
    legend(x="bottomright",legend=colnames(ersmallzoo), lty=1:3, col=1:3)
    
    plot(ersmallzoo, plot.type="multiple")

  #Para Current Account Balance (% of GDP). Sources: World Bank (citing: International Monetary Fund, Balance of Payments Statistics Yearbook and data files, and World Bank and OECD GDP estimates.)
    cainfo = dminfo("http://data.is/Q2PnYu")
    cazoo = dmseries(cainfo)
    cadf = dmlist(cainfo)
    
    casmalldf =  dmlist(cainfo, "Country" = c("Angola","Estonia","Fiji"))
    casmallzoo =  dmseries(cainfo, "Country" = c("Angola","Estonia","Fiji"))
    
    plot1_ca=qplot(Year,Value, data=casmalldf,geom= "path", colour=Country)
    print(plot1_ca)
    
    plot(casmallzoo, plot.type="single", lty=1:3, col=1:3)
    legend(x="bottomright",legend=colnames(casmallzoo), lty=1:3, col=1:3)
    
    plot(casmallzoo, plot.type="multiple")

#Importar base de datos 2
db2 <- read.csv("tcanual.csv")

#Pregunta 3
  #Gráficos
    #Para Tipo de Cambio Nominal 
      plot6=qplot(year,tcnom, data=db2, geom= "path") + geom_smooth(se=TRUE, linetype=2) + labs(x="Año", y="Tipo de Cambio Nominal (dólar observado $/USD)")
      print(plot6)

    #Para Tipo de Cambio Real
      plot7=qplot(year,tcreal, data=db2, geom= "path") + geom_smooth(se=TRUE, linetype=2) + labs(x="Year", y="Tipo de Cambio Real (índice 1986=100)")
      print(plot7)

  #Tablas
    data2 <- matrix(c("TC_Nominal Promedio","TC_Real Promedio",mean(db2$tcnom),mean(db2$tcreal)),ncol=2,byrow=TRUE)
    table2 <- as.table(data2)
    table2

