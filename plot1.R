source_dir <- "./household_power_consumption.txt"
source_data <- read.table(source_dir, header = TRUE, sep = ";", stringsAsFactors=FALSE)
feb_data <- source_data[source_data$Date %in% c("1/2/2007", "2/2/2007") ,]
global_active_power <- as.numeric(feb_data$Global_active_power)
png("plot1.png", width = 480, height = 480)
hist(global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
dev.off()

