#Descriptive Statistics
#MOde is preferred for categorical/count vars
#Mean & median--continuous vars
#For large data, the obs lie 68.2% within the mean (34.1% each), 13% another 1 SD & 1% another SD

#Use dataset "cars"
c<-data(cars)
dim(c)  
head(c)  
summary(c)
summary(cars$dist)
hist(cars$dist)
sd(cars$dist)
length(c$dist)

library(ggplot2)
ggplot(cars, aes(x=dist)) + geom_density()

summary(c$speed)
ggplot(cars, aes(x=speed)) + geom_density()


#Correlation
cor(c$speed, c$dist)

#Writing summary stats to CSV
speed<-c(summary(c$speed),sd(c$speed),length(c$speed))

ompirt
dir
file
write.csv(write.csv))


dist<-c(summary(c$dist),sd(c$dist),length(c$dist))

cars_output<-rbind(speed,dist)

#Excel output
setwd("C:\\Users\\Fredrick\\Box Sync\\Fredrick Otiato\\iHub Data Jam\\Week1")
write.table(speed_output, file=paste("speed_output.csv",sep="/"),row.names=F, col.names=T,sep=",")
row.names=data.frame(variable=c("speed", "distance"))

cars_output2<-cbind(row.names,cars.output)
names(cars.output2)<-()
