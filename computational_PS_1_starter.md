library(ggplot2)
library(tables)
library(knitr)
library(rdatamarket)
booktabs()

opts_chunk$set(fig.align="center",  message=FALSE, warning=FALSE)

pwdata <- read.csv("pwt71_w_country_names.csv")

selectediso = c("ARG","CHL", "BRA") ;
myselection=subset(pwdata,isocode %in% selectediso)# 
myselection = droplevels(myselection) #use this in case that void levels for country or iso give you problems


# make "base" plot, will add features below
plot1=qplot(year,rgdpch, data=myselection,geom= "path", colour=country)
#normally one would only show the final version of the plot, so this call to print wouldn't exist
print(plot1) # prints means here to show in screen


# add a smoothed mean to the base plot
plot2 = plot1 + geom_smooth(se=TRUE, linetype=2)
# (... neither would this one)
print(plot2)

# change labels of the axes and legend
plot3= plot2 + labs(colour = "Countries", x='', y="GDP per capita (PPP), $ of 2005")

print(plot3) # this is the one you should 'print' 

# now a table
# na.omit is needed since otherwise mean and sd return NA
mytable = tabular( (country + 1) ~ (n=1) + Format(digits=2)*(kc + ki)*(mean+sd), data= na.omit(myselection))



oilinfo = dminfo("http://data.is/NoT2Sd")
oilzoo = dmseries(oilinfo)
oildf = dmlist(oilinfo)

oilsmalldf =  dmlist(oilinfo, "Country" = c("Algeria","Brazil","Venezuela"))
oilsmallzoo =  dmseries(oilinfo, "Country" = c("Algeria","Brazil","Venezuela"))


plotoil1=qplot(Year,Value, data=oilsmalldf,geom= "path", colour=Country)
print(plotoil1)

plot(oilsmallzoo, plot.type="single", lty=1:3, col=1:3)
legend(x="bottomright",legend=colnames(oilsmallzoo), lty=1:3, col=1:3)

plot(oilsmallzoo, plot.type="multiple")


