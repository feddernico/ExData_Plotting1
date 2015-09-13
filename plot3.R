## Plot3.R
## This file creates the third chart

# creates the png file into the current working directory
png('plot3.png', width = 480, height = 480, units = "px")

# creates the histogram without showing it
plot(data$DateTime, data$Sub_metering_1, type = "n", xlab = "", 
     ylab = "Energy sub metering") 
# adds the three lines
lines(data$DateTime, data$Sub_metering_1)
lines(data$DateTime, data$Sub_metering_2, col = "red")
lines(data$DateTime, data$Sub_metering_3, col = "blue")
# adds a legend to the chart
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty = c(1, 1, 1), col = c("black", "red", "blue")) 

# closes the PNG device
dev.off()
