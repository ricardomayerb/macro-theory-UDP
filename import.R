library(ggplot2)
library(tables)
library(knitr)
library(rdatamarket)
booktabs()

opts_chunk$set(fig.align="center",  message=FALSE, warning=FALSE)

tc <- read.csv("tcanual.csv")

# make "base" plot, will add features below
plot_tcnom=qplot(year,tcnom, data=tc,geom= "path")#normally one would only show the final version of the plot, so this call to print wouldn't exist
print(plot_tcnom) # prints means here to show in screen

# add a smoothed mean to the base plot
plot2 = plot1 + geom_smooth(se=TRUE, linetype=2)# (... neither would this one)
print(plot2)# change labels of the axes and legend

plot3= plot2 + labs(x='Año', y="Tipo de Cambio Nominal")
print(plot3) # this is the one you should 'print' 
# now a table# na.omit is needed since otherwise mean and sd return NA
mytable = tabular( (tcnom + 1) ~ (n=1) + Format(digits=2)*(tcnom + tcnom_multi + tcreal)*(mean+sd))

