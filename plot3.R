
all <- read.table("exdata_data_household_power_consumption/household_power_consumption.txt", header =T, sep = ";")
df <- subset(a, Date %in% c("1/2/2007", "2/2/2007"))

df$datetime <-   as.POSIXct(paste(df$Date, df$Time), format = "%d/%m/%Y %H:%M:%S")

png("plot3.png", width = 480, height = 480)
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
dev.off()
