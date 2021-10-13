
## Reading the Data from the given Dataset and filtering as per requirement 


plot <- subset(read.table("household_power_consumption.txt",sep=";",header = TRUE) , 
               strptime(Date,format ="%d/%m/%Y") >= strptime("2007-02-01",format ="%Y-%m-%d" ) 
               & strptime(Date,format ="%d/%m/%Y") <= strptime("2007-02-02",format ="%Y-%m-%d" ))

# Opening the Plotting device 
png("plot2.png",width = 480, height = 480)

# Plotting the required line Graph 
plot(x=strptime(paste(plot$Date,plot$Time),format = "%d/%m/%Y %H:%M:%S"),
     y=plot$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")


#Making the device off
dev.off()
