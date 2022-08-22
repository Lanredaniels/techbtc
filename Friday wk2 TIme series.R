?UKgas
install.packages("tseries")
install.packages("forecast")
library(tseries)
library(forecast)
help(package="datasets")

?UKgas
?mtcars
?AirPassengers

#To check the classs of datats=time series, data.frame
class(UKgas)
classs(mtcars)
class(AirPassengers)

summary(UKgas)
View(UKgas)
(UKgas)
collect(table(UKgas))

plot(AirPassengers)
Plot(Ukgas)


par(mar = c(1,1,1,1)) #to scale easily
plot(AirPassengers)
cycle(AirPassengers)
plot(aggregate(Ukgas,FUN=mean))
view(Passengers)

cycle(UKgas)
plot(UKgas)


plot(aggregate(UKgas,FUN=mean))
# to test for styationarity
adf.test(UKgas) #to get pvalue, should be < or= 0.05
adf.test(AirPassengers)

?lag
#to convert it to stationary
UKgas2<-diff(UKgas,lag=4)
adf.test(UKgas2)
?diff
UKgas78 <-diff(UKgas,lag=4)
adf.test(UKgas78)
result=auto.arima(UKgas)# auto regression
result
?arima #univariate time series
forecast=forecast(result,level=c(95),h=8) #c= confidence level h= interval
forecast
autoplot(forecast)
 


#run time series on popular movies


