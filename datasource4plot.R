rm(list = ls())

datasource4plot <- function(file = "household_power_consumption.txt") {
    # Range got by 'test.R' source('test.R') i <- datarange1()
    i <- c(66637, 69516)
    rskip <- i[1] - 1
    rread <- i[2] - rskip
    df <- read.table(file, sep = ";", skip = rskip, nrows = rread)
    # Field Name
    names(df) <- unlist(strsplit(readLines(file, 1), ";"))
    # Data & Time
    df$Time <- strptime(paste(df$Date, df$Time), format = "%d/%m/%Y %H:%M:%S")
    df$Date <- as.Date(df$Date, format = "%d/%m/%Y")
    df
}
datasource <- datasource4plot() 
