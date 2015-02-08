plot3 <- function()
{
  data=read.table("household_power_consumption.txt",header=T,sep=";",na.strings="?");
  data=data[data[,1]=='1/2/2007' | data[,1]=='2/2/2007',];
  plot(strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S"),data[,7],ylab='Energy sub metering', xlab='', type='l',col="black");
  lines(strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S"),data[,8],col="red");
  lines(strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S"),data[,9], col="blue");
  legend('topright',legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),col=c('black','red','blue'),lty='solid');
}
