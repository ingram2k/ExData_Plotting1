library(dplyr)
library(data.table)

setwd("C:/Users/bruce/Desktop/Data/Coursera/exploratory data analysis/project 1")

data<- fread("household_power_consumption.txt") 

data <- subset(data, Date %in% c("1/2/2007","2/2/2007"))

Datetime <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")

data$Datetime<-as.POSIXct(Datetime)


  plot(data$Global_active_power~data$Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")

