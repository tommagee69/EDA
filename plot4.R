# set working directory (change this to fit your needs)
setwd('~/Source Code/GitHub/Exploratory-Data-Analysis')
source('scripts/get_and_clean_data.R')
png(filename='plots/plot4.png',width=480,height=480,units='px')
# Settig up the 4 plot view
par(mfrow=c(2,2))
# top left graph
plot(power.consumption$DateTime,power.consumption$GlobalActivePower,ylab='Global Active Power',xlab='',type='l')
# top right graph
plot(power.consumption$DateTime,power.consumption$Voltage,xlab='datetime',ylab='Voltage',type='l')
# bottom left
lncol<-c('black','red','blue')
lbls<-c('Sub_metering_1','Sub_metering_2','Sub_metering_3')
plot(power.consumption$DateTime,power.consumption$SubMetering1,type='l',col=lncol[1],xlab='',ylab='Energy sub metering')
lines(power.consumption$DateTime,power.consumption$SubMetering2,col=lncol[2])
lines(power.consumption$DateTime,power.consumption$SubMetering3,col=lncol[3])
# bottom right
plot(power.consumption$DateTime,power.consumption$GlobalReactivePower,xlab='datetime',ylab='Global_reactive_power',type='l')
x<-dev.off()