source_dir <- "./household_power_consumption.txt"
source_data <- read.table(source_dir, header = TRUE, sep = ";", stringsAsFactors=FALSE)
feb_data <- source_data[source_data$Date %in% c("1/2/2007", "2/2/2007") ,]
global_active_power <- as.numeric(feb_data$Global_active_power)
sub_metering_1 <- as.numeric(feb_data$Sub_metering_1)
sub_metering_2 <- as.numeric(feb_data$Sub_metering_2)
sub_metering_3 <- as.numeric(feb_data$Sub_metering_3)
date_time <- strptime(paste(feb_data$Date, feb_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot3.png", width = 480, height = 480)
plot(date_time, sub_metering_1, main = "", xlab = "", ylab = "Energy sub metering", type="l")
lines(date_time,sub_metering_2,type="l",col="red")
lines(date_time,sub_metering_3,type="l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=1, col=c("black","red","blue"))
dev.off()
