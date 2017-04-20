Library(dplyr)
Elec <- read.table("/Users/angelina/Desktop/CouseEra3/
household_power_consumption.txt",sep=";",header=TRUE)
feb<-filter(Elec,Date =='1/2/2007' | Date=='2/2/2007')
feb$Datetime<-strptime(paste(feb$Date,feb$Time), 
                       format="%d/%m/%Y %H:%M:%S")
feb<-mutate(feb,wkday =weekdays(as.Date(Date, format ="%d/%m/%Y"),
                                abbreviate=TRUE))
with(feb, plot(Datetime, as.numeric(as.character(Global_active_power)),
               ylab="Global Active Power(kilowatts)",type="l"))
dev.copy(png, file = "Plot2.png")
dev.off()