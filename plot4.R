plot4 <- function()
{
  data=read.table("household_power_consumption.txt",header=T,sep=";",na.strings="?");
  data=data[data[,1]=='1/2/2007' | data[,1]=='2/2/2007',];
  par(mfrow=c(2,2));
  plot(strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S"),data[,3],ylab='Global Active Power (kilowatts)', xlab='', type='l');
  
  plot(strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S"),data[,5],xlab='datetime',ylab='Voltage',type='l');
  
  plot(strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S"),data[,7],ylab='Energy sub metering', xlab='', type='l',col="black");
  lines(strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S"),data[,8],col="red");
  
  lines(strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S"),data[,9], col="blue");
  
  
  plot(strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S"),data[,4],xlab='datetime',ylab='Global_reactive_power',type='l');
  
}
