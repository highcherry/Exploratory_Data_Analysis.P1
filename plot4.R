
all <- read.table("exdata_data_household_power_consumption/household_power_consumption.txt", header =T, sep = ";")
df <- subset(a, Date %in% c("1/2/2007", "2/2/2007"))

df$datetime <-   as.POSIXct(paste(df$Date, df$Time), format = "%d/%m/%Y %H:%M:%S")

png("plot4.png", width = 480, height = 480)
par(mfrow = c(2, 2)) 


plot(df$datetime, df$Global_active_power,
     type = "l",  # Line plot
     col = "black",
     xaxt = "n", 
     main = "",
     xlab = "",
     ylab = "Global_active_power (KW)")

axis(1, 
     at = df$datetime, 
     labels = format(df$datetime, "%a")) 

plot(df$datetime, df$Voltage,
     type = "l",  # Line plot
     col = "black",
     xaxt = "n", 
     main = "",
     xlab = "",
     ylab = "Voltage")

axis(1, 
     at = df$datetime, 
     labels = format(df$datetime, "%a")) 

plot(df$datetime, df$Sub_metering_1,
     type = "l",  # Line plot
     col = "black",
       ylim = c(0, 40),
     xaxt = "n", 
     main = "",
     xlab = "",
     ylab = "")
par(new = TRUE) 

plot(df$datetime, df$Sub_metering_2,
     type = "l",  # Line plot
     col = "red",
       ylim = c(0, 40),
     xaxt = "n", 
     main = "",
     xlab = "",
     ylab = "")
par(new = TRUE) 


plot(df$datetime, df$Sub_metering_3,
     type = "l",  # Line plot
     col = "blue",
       ylim = c(0, 40),
     xaxt = "n", 
     main = "",
     xlab = "",
     ylab = "Energy Sub metering")
axis(1, 
     at = df$datetime, 
     labels = format(df$datetime, "%a")) 


plot(df$datetime, df$Global_reactive_power,
     type = "l",  # Line plot
     col = "black",
     xaxt = "n", 
     main = "",
     xlab = "",
     ylab = "Global_reactive_power (KW)")

dev.off()
