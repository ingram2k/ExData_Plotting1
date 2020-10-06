library(dplyr)
library(data.table)

setwd("C:/Users/bruce/Desktop/Data/Coursera/exploratory data analysis/project 1")

data<- fread("household_power_consumption.txt") 

data <- subset(data, Date %in% c("1/2/2007","2/2/2007"))


hist(as.numeric(data$Global_active_power), main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

