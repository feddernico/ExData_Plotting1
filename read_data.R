# downloads data and extracts the content
temp <- tempfile()
download.file("http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",temp)
file <- unzip(temp)
unlink(temp)

# reads the raw data file and converts it to a dataset
data <- read.table(file, header = T, 
                   sep = ";", nrows = 2075259)

# transforms the date and time string variable to a DateTime value
data$DateTime <- strptime(paste(data$Date, " ", data$Time), 
                          format = "%d/%m/%Y %H:%M:%S")

# transforms date string value into Date value
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

# selects only rows between "2007-02-01" and "2007-02-02"
data <- data[(data$Date=="2007-02-01") | (data$Date=="2007-02-02"), ] 

# transforms factor variables to numeric
data$Global_active_power <- as.numeric(as.character(data$Global_active_power))
data$Global_reactive_power <- as.numeric(as.character(data$Global_reactive_power))
data$Voltage <- as.numeric(as.character(data$Voltage))
data$Global_intensity <- as.numeric(as.character(data$Global_intensity))
data$Sub_metering_1 <- as.numeric(as.character(data$Sub_metering_1))
data$Sub_metering_2 <- as.numeric(as.character(data$Sub_metering_2))
data$Sub_metering_3 <- as.numeric(as.character(data$Sub_metering_3))