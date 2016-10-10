# set working directory and load the data
setwd('~/Source Code/GitHub/Exploratory-Data-Analysis')
source('scripts/get_and_clean_data.R')
png(filename='plots/plot1.png',width=480,height=480,units='px')
hist(power.consumption$GlobalActivePower,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red')
# Turn off device - never forget said Roger !!  
x<-dev.off()