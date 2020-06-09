setwd("D:\\apprentissageskills\\coursera\\exploratary data analysis\\assignment1")
hhpc <- read.table("household_power_consumption.txt", dec = ".", stringsAsFactors = FALSE, colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"), header = TRUE, sep = ";", na.strings = "?")
library(dplyr)
hhpcd <- filter(hhpc, Date %in% c("1/2/2007", "2/2/2007"))
rm(hhpc)
png("plot1.png", width=480, height=480)
hist(hhpcd$Global_active_power, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", ylim = c(0,1200), 
     xlim = c(0,6), breaks = 12)
dev.off()
