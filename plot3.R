setwd("C:/Users/Azmodan/Desktop/R/Exploratory Data Analysis/data")
library(datasets)
x=read.table("data2.txt", sep=";" , header=TRUE)
y1=subset(x, select = Sub_metering_1 )
y2=subset(x, select = Sub_metering_2 )
y3=subset(x, select = Sub_metering_3 )
Sub_metering_1=y1[2:2880,]
Sub_metering_2=y2[2:2880,]
Sub_metering_3=y3[2:2880,]
plot(Sub_metering_1, type="l", xaxt = "n", ylab="Energy sub metering" ,xlab="")
lines(Sub_metering_2, col="red")
lines(Sub_metering_3, col="blue")
axis(1, at=c(1,1440,2879), labels=c("Thu","Fri","Sat"))
legend("topright",lty=1, col = c("black","red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.copy(png,filename="plot3.png", width=480, height=480);
dev.off ()
png(filename = "plot3.png",width = 480, height = 480, units = "px", pointsize = 12, bg = "white") 
