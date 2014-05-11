# source("datasource4plot.R")

png("plot2.png", width = 480, height = 480, bg = "transparent")

with(datasource, plot(Time, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)"))

graphics.off() 
