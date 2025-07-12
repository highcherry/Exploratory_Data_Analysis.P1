
all <- read.table("exdata_data_household_power_consumption/household_power_consumption.txt", header =T, sep = ";")
df <- subset(a, Date %in% c("1/2/2007", "2/2/2007"))

df$datetime <-   as.POSIXct(paste(df$Date, df$Time), format = "%d/%m/%Y %H:%M:%S")


png("plot2.png", width = 480, height = 480)
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
dev.off()
