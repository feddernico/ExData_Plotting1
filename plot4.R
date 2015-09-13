## Plot4.R
## This file creates the fourth chart

# creates the png file into the current working directory
png('plot4.png', width = 480, height = 480, units = "px")

# displays two charts per row
par(mfrow = c(2, 2))

## creates the first chart (topleft):
plot(data$DateTime, data$Global_active_power, type = "l", xlab = "", 
     ylab = "Global Active Power (kilowatts)") 

## creates the second chart (topright):
plot(data$DateTime, data$Voltage, type = "l", xlab = "datetime", 
     ylab = "Voltage") 

## creates the third chart (bottomleft):
# creates the histogram without showing it
plot(data$DateTime, data$Sub_metering_1, type = "n", xlab = "", 
     ylab = "Energy sub metering") 
# adds the three lines
lines(data$DateTime, data$Sub_metering_1)
lines(data$DateTime, data$Sub_metering_2, col = "red")
lines(data$DateTime, data$Sub_metering_3, col = "blue")
# adds a legend to the chart
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty = c(1, 1, 1), col = c("black", "red", "blue"), cex = 0.6, bty = "n") 

## creates the fourth chart (bottomright):
plot(data$DateTime, data$Global_reactive_power, type = "l", xlab = "datetime", 
     ylab = "Global_reactive_power", yaxt = "n") 
axis(2,cex.axis=0.85)

# closes the PNG device
dev.off()
