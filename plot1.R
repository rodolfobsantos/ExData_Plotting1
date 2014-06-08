## Plot1.R
## Script that read the data and build the Global Active Power histogram

data <- read.table("household_power_consumption.txt", header=T, sep=";",
                   stringsAsFactors=F, na.strings="?")

d1 <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")
hist(d1$Global_active_power, col = 'red', main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.copy(png, file = "plot1.png")
dev.off()