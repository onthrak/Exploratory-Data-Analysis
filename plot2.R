setwd("C:/Users/Azmodan/Desktop/R/Exploratory Data Analysis/data")
library(datasets)
x=read.table("data2.txt", sep=";" , header=TRUE)
y=subset(x, select = Global_active_power )
y1=y[2:2880,]
plot(y1, type="l", ylab="Global active power (kilowatts)" ,xlab="", xaxt = "n")
axis(1, at=c(1,1440,2879), labels=c("Thu","Fri","Sat"))
dev.copy(png,filename="plot2.png", width=480, height=480);
dev.off ()

