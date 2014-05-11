# source("datasource4plot.R")

png("plot4.png", width = 480, height = 480, bg = "transparent")

par(mfrow = c(2, 2))

with(datasource, {
    # 1
    plot(Time, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
    # 2
    plot(Time, Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
    # 3
    plot(Time, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
    
    lines(Time, Sub_metering_2, type = "l", col = "red")
    lines(Time, Sub_metering_3, type = "l", col = "blue")
    
    legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1, bty = "n")
    # 4
    plot(Time, Global_reactive_power, type = "l", xlab = "datetime")
})

graphics.off() 
