data1 <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subdata1 <- data1[data1$Date %in% c("1/2/2007","2/2/2007") ,]
gapower <- as.numeric(subdata1$Global_active_power)
png("plot2.png", width =480, height = 480)
data2 <- strptime(paste(subdata1$Date, subdata1$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
plot(data2, gapower,ylab='Global Active Power (kilowatts)', xlab='', type='l')
dev.off()
