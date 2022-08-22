library(odbc)
library(dplyr)
library(Hmisc)

library(DBI)
library(corrplot)
con <- dbConnect(odbc(),
                 Driver='SQL Server',
                 server="DESKTOP-KD9T284",
                 Database="HomePrediction",
                 port=1433)



View(train)
predict<-tbl(con,'train')
class(test)
class(predict)
View(predict)

p<-collect(predict)
View(p)
View(p$SalePrice)
hist(p$SalePrice)



cor.test(pr)
class(p)
typeof(predict$SalePrice)

cor(predict$SalePrice, predict$LotArea, method = "pearson", use = "complete.obs")
p$SalePrice<-as.numeric(p$SalePrice)
p$LotArea<-as.numeric(p$LotArea)

typeof(p$SalePrice)
class(p$SalePrice)

cor(p$LotArea,p$SalePrice)
print(predict$Saleprice)
is.na(p)
hist(p$SalePrice)
View(p$SalePrice)



cor(x, y, method = "pearson", use = "complete.obs")


corrplot(cor(p))
labelen
