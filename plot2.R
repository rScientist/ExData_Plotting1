source_dir <- "./household_power_consumption.txt"
source_data <- read.table(source_dir, header = TRUE, sep = ";", stringsAsFactors=FALSE)
feb_data <- source_data[source_data$Date %in% c("1/2/2007", "2/2/2007") ,]
global_active_power <- as.numeric(feb_data$Global_active_power)
date_time <- strptime(paste(feb_data$Date, feb_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot2.png", width = 480, height = 480)
plot(date_time, global_active_power, main = "", xlab = "", ylab = "Global Active Power (kilowatts)", type="l")
dev.off()
