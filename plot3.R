
## Reading the Data from the given Dataset and filtering as per requirement 

plot <- subset(read.table("household_power_consumption.txt",sep=";",header = TRUE) , 
               strptime(Date,format ="%d/%m/%Y") >= strptime("2007-02-01",format ="%Y-%m-%d" ) 
               & strptime(Date,format ="%d/%m/%Y") <= strptime("2007-02-02",format ="%Y-%m-%d" ))

# Opening the Plotting device 
png("plot3.png",width = 480, height = 480)


# Plotting the required line Graph  and adding other signals to it ,also legend 


plot(x=strptime(paste(plot$Date,plot$Time),format = "%d/%m/%Y %H:%M:%S"),
     y=plot$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
lines(x=strptime(paste(plot$Date,plot$Time),format = "%d/%m/%Y %H:%M:%S"),
      y=plot$Sub_metering_2,col="red")
lines(x=strptime(paste(plot$Date,plot$Time),format = "%d/%m/%Y %H:%M:%S"),
      y=plot$Sub_metering_3,col="blue")
legend("topright", legend =c("Sub_metering_1","Sub_metering_2" ,"Sub_metering_3"),
       lty=1 ,col=c("black","red","blue"))

#Making the device off

dev.off()