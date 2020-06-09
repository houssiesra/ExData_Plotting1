png("plot4.png", width=480, height=480)
par(mfrow = c(2,2))
plot(x=hhpcd$date_time, y = hhpcd$Global_active_power, type="l", col = "black", xlab="", ylab="Global active power")
plot(x=hhpcd$date_time, y = hhpcd$Voltage, type="l", col = "black", ylab="Voltage", xlab = "datetime")
with(hhpcd, 
     { plot(x=date_time, y = Sub_metering_1, type="l", col = "black", xlab="", ylab="Energy sub metering")
       lines(x=date_time, y = Sub_metering_2, type="l", col = "red")
       lines(x=date_time, y = Sub_metering_3, type="l", col = "blue")
       legend("topright", lty = "solid", col = c("black", "red", "blue"), 
              legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
     })
plot(x=hhpcd$date_time, y = hhpcd$Global_reactive_power, type="l", col = "black", ylab="Global_reactive_power", xlab = "datetime")
dev.off()
