plot1 <- function()
{
  data=read.table("household_power_consumption.txt",header=T,sep=";",na.strings="?");
  data=data[data[,1]=='1/2/2007' | data[,1]=='2/2/2007',];
  hist(data[,3],main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red');
  
}