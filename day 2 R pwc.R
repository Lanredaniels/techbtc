install.packages(c("odbc","dplyr"))
library(odbc)
library(dplyr)
library(corrplot)
con <- dbConnect(odbc(),
                 Driver='SQL Server',
                 server="DESKTOP-KD9T284",
                 Database="pwcbtcmp",
                 port=1433)

#test if table is working
dbListTables(con) #Tables in 
dbListFields(con,"'Movies'")

#view data
View("'Movies'")


testdata=tbl(con,"'Movies'")
testdata=collect(testdata)


#view data
View(testdata)

#corelation btwn budhet and profit average weak +ve 0.45
cor(testdata$`Adj# Profit ($)`,testdata$`Adj# Budget ($)`)

#seperating numeric columns away from major table 
nums <- unlist(lapply(testdata, is.numeric),use.names = FALSE)

#running a regression model btwn profit and budget
model4 <- lm(testdata$`Adj# Profit ($)`~testdata$`Adj# Budget ($)`)
summary(model4)

#multiple corellation plot of numeric colunmns seperated from main table
nums <- unlist(lapply(testdata, is.numeric),use.names = FALSE)
corrplot(cor(testdata[nums]),method = 'number',tl.cex = 0.05)

#slicing columns
df<-select(testdata)


testdata$`MovieLens Rating`





