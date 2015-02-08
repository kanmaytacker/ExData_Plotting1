plot2 <- function()
{
  data=read.table("household_power_consumption.txt",header=T,sep=";",na.strings="?");
  data=data[data[,1]=='1/2/2007' | data[,1]=='2/2/2007',];
  plot(strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S"),data[,3],ylab='Global Active Power (kilowatts)', xlab='', type='l');
}
