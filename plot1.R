# source("datasource4plot.R")

png("plot1.png", width = 480, height = 480, bg = "transparent")

with(datasource, hist(Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)"))

graphics.off()
# dev.off() 
