
setwd("C:/projects/Coursera/Exploratory Data Analysis/Assignment/week1/work/ExData_Plotting1/")

# if you have already read the data you can skip the following line
source("./readDataset.R")

png(filename="plot1.png", width=480, height=480, units="px", bg="White")

par(mfrow=c(1,1), mar=c(5,4,2,1))
hist(data$Global_active_power, main="Global Active Power", col="red", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency")

dev.off()
