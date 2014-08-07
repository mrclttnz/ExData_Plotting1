
setwd("C:/projects/Coursera/Exploratory Data Analysis/Assignment/week1/work/ExData_Plotting1/")

# if you have already read the data you can skip the following line
source("./readDataset.R")

png(filename="plot4.png", width=480, height=480, units="px", bg="White")

par(mfrow=c(2,2), mar=c(5,5,1,1))
#par(mfrow=c(1,1), mar=c(5,4,1,1))


# Graph at top-left
with(data, plot(DateTime, Global_active_power, xlab="", ylab="Global Active Power", type="l"))


# Graph at top-right
with(data, plot(DateTime, Voltage, xlab="datetime", ylab="Voltage", type="l"))


# Graph at bottom-left
with(data, plot(DateTime, Sub_metering_1, xlab="", ylab="Energy sub metering", type="n"))
with(data, lines(DateTime, Sub_metering_1, type="l", col="black"))
with(data, lines(DateTime, Sub_metering_2, type="l", col="red"))
with(data, lines(DateTime, Sub_metering_3, type="l", col="blue"))
legend("topright", pch=NULL, col=c("black", "red", "blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=c(1,1,1), bty="n")


# Graph at bottom-right
with(data, plot(DateTime, Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type="l"))

dev.off()

