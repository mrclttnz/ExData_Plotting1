
setwd("C:/projects/Coursera/Exploratory Data Analysis/Assignment/week1/work/ExData_Plotting1/")

# if you have already read the data you can skip the following line
source("./readDataset.R")

png(filename="plot2.png", width=480, height=480, units="px", bg="White")
par(mfrow=c(1,1), mar=c(3,4,1,1))
with(rawData,plot(DateTime, Global_active_power, type="l", 
     ylab="Global Active Power (kilowatts)", xlab=""))
dev.off()
