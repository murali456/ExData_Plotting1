data1 <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subdata1 <- data1[data1$Date %in% c("1/2/2007","2/2/2007") ,]
gapower <- as.numeric(subdata1$Global_active_power)
png("plot1.png", width =480, height = 480)
hist(gapower,main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red")
dev.off()
