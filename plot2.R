# set working directory and pull data in
setwd('~/Source Code/GitHub/Exploratory-Data-Analysis')
source('scripts/get_and_clean_data.R')
png(filename='plots/plot2.png',width=480,height=480,units='px')
plot(power.consumption$DateTime,power.consumption$GlobalActivePower,ylab='Global Active Power (kilowatts)', xlab='', type='l')
# close device as intsructed by Roger
x<-dev.off()