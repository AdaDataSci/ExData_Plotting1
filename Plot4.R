library(dplyr)
Elec <- read.table("/Users/angelina/Desktop/CouseEra3/
household_power_consumption.txt",sep=";",header=TRUE)
feb<-filter(Elec,Date =='1/2/2007' | Date=='2/2/2007')
par(mfrow = c(2,2))
with(feb, plot(Datetime, as.numeric(as.character(Global_active_power)) 
               ,ylab="Global Active Power",type="l"))
with(feb, plot(Datetime, as.numeric(as.character(Voltage))
               ,ylab="Voltage",type="l"))
with(feb, plot(Datetime, as.numeric(as.character(Sub_metering_1))
               ,ylab="Energy Sub metering",type="l"))
with(feb, lines(Datetime, as.numeric(as.character(Sub_metering_2))
                ,type="l",col='red'))
with(feb, lines(Datetime, as.numeric(as.character(Sub_metering_3))
                ,type="l",col='blue'))
legend("topright",lty=c(1,1,1), cex=0.8,col=c("black","red","blue"),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
with(feb, plot(Datetime, as.numeric(as.character(Global_reactive_power))
               ,ylab="Global_reactive_power",type="l"))
dev.copy(png, file = "Plot4.png")
dev.off()