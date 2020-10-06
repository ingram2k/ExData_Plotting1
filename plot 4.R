par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))


  plot(data$Global_active_power~data$Datetime, type="l", 
       ylab="Global Active Power (kilowatts)", xlab="")
  
  plot(data$Voltage~data$Datetime, type="l", 
       ylab="Voltage (volt)", xlab="datetime")
  
  plot(data$Sub_metering_1~data$Datetime, type="l", 
       ylab="Global Active Power (kilowatts)", xlab="")
  lines(data$Sub_metering_2~data$Datetime,col='Red')
  lines(data$Sub_metering_3~data$Datetime,col='Blue')
  legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n",
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  
  plot(data$Global_reactive_power~data$Datetime, type="l", 
       ylab="Global Rective Power (kilowatts)",xlab="datetime")
