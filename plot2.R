## Plot2.R
## This file creates the second chart

# creates the png file into the current working directory
png('plot2.png', width = 480, height = 480, units = "px")

# creates the histogram
plot(data$DateTime, data$Global_active_power, type = "l", xlab = "", 
     ylab = "Global Active Power (kilowatts)") 

# closes the PNG device
dev.off()
