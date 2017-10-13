data1 <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subdata1 <- data1[data1$Date %in% c("1/2/2007","2/2/2007") ,]
gapower <- as.numeric(subdata1$Global_active_power)
data2 <- strptime(paste(subdata1$Date, subdata1$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot3.png", width =480, height = 480)
plot(data2,subdata1$Sub_metering_1, type='l',xlab='',ylab='Energy sub metering')
lines(data2, subdata1$Sub_metering_2, type="l", col="red")
lines(data2, subdata1$Sub_metering_3, type="l", col="blue")
legend('topright',c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()

