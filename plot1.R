## Plot1.R
## This file creates the first chart

# creates the png file into the current working directory
png('plot1.png', width = 480, height = 480, units = "px")

# creates the histogram
hist(data$Global_active_power, col = "red",  xlab = "Global Active Power (kilowatts)", 
     main = "Global Active Power")

# closes the PNG device
dev.off()