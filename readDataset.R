
setwd("C:/projects/Coursera/Exploratory Data Analysis/Assignment/week1/work/ExData_Plotting1/")

# download and unzip the data file
fileUrl = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl, destfile="./exdata-data-household_power_consumption.zip", method="auto")
unzip(zipfile="./exdata-data-household_power_consumption.zip", exdir=".")


library(sqldf)

inFile = file("./household_power_consumption.txt")

data = sqldf("select * from inFile where Date in (\"1/2/2007\", \"2/2/2007\")", 
                file.format=list(sep=";", header=T))

close(inFile)


data$Date2 = as.Date(data$Date, format="%d/%m/%Y")
data$DateTime = strptime(paste(data$Date,data$Time), format="%d/%m/%Y %H:%M:%S")

# There is no missing value in the selected dates, so I'm not worrying about it
