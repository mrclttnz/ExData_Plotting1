
setwd("C:/projects/Coursera/Exploratory Data Analysis/Assignment/week1/work/ExData_Plotting1/")

library(sqldf)

inFile = file("./household_power_consumption.txt")

rawData = sqldf("select * from inFile where Date in (\"1/2/2007\", \"2/2/2007\")", 
                file.format=list(sep=";", header=T))

close(inFile)


rawData$Date2 = as.Date(rawData$Date, format="%d/%m/%Y")
rawData$DateTime = strptime(paste(rawData$Date,rawData$Time), format="%d/%m/%Y %H:%M:%S")

# There is no missing value in the selected dates, so I'm not worrying about it
