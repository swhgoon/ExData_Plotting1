# Our overall goal here is simply to examine how household energy usage varies over a 2-day period in February, 2007.
rm(list = ls())

datarange <- function() {
    df <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
    i <- which(df$Date == "2/2/2007" | df$Date == "1/2/2007")
    print(range(i))
}

# faster
datarange1 <- function() {
    i <- grep("^[1-2]/2/2007", readLines("household_power_consumption.txt"))
    print(range(i) - 1)
}

# print(system.time(datarange())) [1] 66637 69516 user system elapsed 14.196 0.060 14.266

# print(system.time(datarange1())) [1] 66637 69516 user system elapsed 9.669 0.033 9.696 
