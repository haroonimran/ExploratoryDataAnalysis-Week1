#Week 1 : Graded assignment.
#---------------------------
#Download the dataset into the current working directory:
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip","household_power_consumption.zip")

#unzip the file, and store it in an object.
unzipped <- read.table(unzip("household_power_consumption.zip"),sep = ";",header = TRUE,stringsAsFactors = FALSE)

#extract only the dates"1/2/2007" and "2/2/2007".
household_data <- unzipped[(unzipped$Date == "1/2/2007" | unzipped$Date == "2/2/2007"),]

#converting all numbers formatted as CHAR variables back into numeric ones.
household_data$Global_active_power <- as.numeric(household_data$Global_active_power)
household_data$Global_reactive_power <- as.numeric(household_data$Global_reactive_power)
household_data$Voltage <- as.numeric(household_data$Voltage)
household_data$Global_intensity <- as.numeric(household_data$Global_intensity)
household_data$Sub_metering_1 <- as.numeric(household_data$Sub_metering_1)
household_data$Sub_metering_2 <- as.numeric(household_data$Sub_metering_2)
household_data$Sub_metering_3 <- as.numeric(household_data$Sub_metering_3)

#----------------------------
# Creating "Plot 1"

# The first plot is essentially a histogram that displays the frequency of the column "Global Active Power".
# To be noted that thw Histogram is colored red.

png('plot1.png',width = 480,height = 480)
hist(household_data$Global_active_power,col = "red",xlab = "Global Active Power (kilowatts)", main = "Gobal Active Power")
dev.off()


