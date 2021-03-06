setwd("D:\\apprentissageskills\\coursera\\exploratary data analysis\\assignment1")
hhpc <- read.table("household_power_consumption.txt", dec = ".", stringsAsFactors = FALSE, colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"), header = TRUE, sep = ";", na.strings = "?")
library(dplyr)
hhpcd <- filter(hhpc, Date %in% c("1/2/2007", "2/2/2007"))
rm(hhpc)
hhpcd$Date <- as.Date(hhpcd$Date, "%d/%m/%Y")
hhpcd <- mutate(hhpcd, date_time = as.POSIXct(paste(hhpcd$Date, hhpcd$Time, sep=" "), template = "%d/%m/%Y %H:%M:%S", tz = Sys.timezone()))
png("plot2.png", width=480, height=480)
plot(x=hhpcd$date_time, y = hhpcd$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
