
setwd("C:/projects/Coursera/Exploratory Data Analysis/Assignment/week1/work/ExData_Plotting1/")

# if you have already read the data you can skip the following line
source("./readDataset.R")

png(filename="plot3.png", width=480, height=480, units="px", bg="White")

par(mfrow=c(1,1), mar=c(3,4,1,1))

with(rawData, plot(DateTime, Sub_metering_1, xlab="", ylab="Energy sub metering", type="n"))

with(rawData, lines(DateTime, Sub_metering_1, type="l", col="black"))
with(rawData, lines(DateTime, Sub_metering_2, type="l", col="red"))
with(rawData, lines(DateTime, Sub_metering_3, type="l", col="blue"))

legend("topright", pch=NULL, col=c("black", "red", "blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=c(1,1,1))

dev.off()


par(mfrow=c(1,1))
with(airquality, plot(Wind,Ozone, main="Ozone and Wind in New York City", type="n"))
with(subset(airquality, Month==5), lines(Wind, Ozone, col="blue", type="l"))
with(subset(airquality, Month!=5), lines(Wind, Ozone, col="red", type="l"))
legend("topright", pch=1, col=c("blue", "red"), legend=c("May", "Other Months"))
