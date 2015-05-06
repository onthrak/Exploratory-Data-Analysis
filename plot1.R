setwd("C:/Users/Azmodan/Desktop/R/Exploratory Data Analysis/data")
library(datasets)
x=read.table("data2.txt", sep=";" , header=TRUE)
y=subset(x, select = Global_active_power )
y1=y[2:2880,]

hist(y1, col="red", xlab="Global active power (kilowatts)" , main="Global active power")
dev.copy(png,filename="plot1.png", width=480, height=480);
dev.off ()
