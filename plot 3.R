library(dplyr)
library(data.table)

setwd("C:/Users/bruce/Desktop/Data/Coursera/exploratory data analysis/project 1")

data<- fread("household_power_consumption.txt") 

data <- subset(data, Date %in% c("1/2/2007","2/2/2007"))

Datetime <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")

data$Datetime<-as.POSIXct(Datetime)

text =  c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
dev.new(width = 480, height = 480, unit = "px")
  plot(data$Sub_metering_1~data$Datetime, type="l",
       ylab="Energy sub metering", xlab="")
  lines(data$Sub_metering_2~data$Datetime,col='Red')
  lines(data$Sub_metering_3~data$Datetime,col='Blue')

legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
       legend=text)