Elec <- read.table("/Users/angelina/Desktop/CourseEra
/household_power_consumption.txt",sep=";",header=TRUE)
library(dplyr)
feb<-filter(Elec,Date =='1/2/2007' | Date=='2/2/2007')
dim(feb)
head(feb)
summary(as.numeric(as.character(feb$Global_active_power)))
hist(as.numeric(as.character(feb$Global_active_power)),col='red', 
     main="Global Active Power",xlab="Global Active Power (Kilowatts)")
dev.copy(png, file = "Plot.png")
dev.off()