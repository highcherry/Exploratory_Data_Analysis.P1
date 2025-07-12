
library(data.table)
all <- read.table("exdata_data_household_power_consumption/household_power_consumption.txt", header =T, sep = ";")
df <- subset(a, Date %in% c("1/2/2007", "2/2/2007"))

head(df)

png("plot1.png", width = 480, height = 480)
hist(as.numeric(sub$Global_active_power),
     col = "red",
     xlab = "Global_active_power (KW)",
     ylab = "Frequency",
     main = "Global active power",)
dev.off()
