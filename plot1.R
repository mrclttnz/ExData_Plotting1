
setwd("C:/projects/Coursera/Exploratory Data Analysis/Assignment/week1/work/ExData_Plotting1/")

# if you have already read the data you can skip the following line
source("./readDataset.R")


hist(rawData$Global_active_power, main="Global Active Power", col="red", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency")

