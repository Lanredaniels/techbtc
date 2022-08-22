library(odbc)
library(dplyr)
library(Hmisc)
library(factoextra)

con <- dbConnect(odbc(),
                 Driver='SQL Server',
                 server="DESKTOP-KD9T284",
                 Database="pwcbtcmp",
                 port=1433)

testdata=tbl(con,'Movies')
testdata=collect(testdata)

View(testdata)

#bring out column names
colnames(testdata)

#summary of table
summary(testdata)
?str #full info about table
str(testdata)

#colsums- sum of column values
#to give test whic is not available
colSums(is.na(testdata))>0
names(which(colSums(is.na(testdata))> 0)) #print columns that dont have column
                                          #-sum which are text columns

#slicing columns
df<-select(testdata,c(-1:-12,-14,-17))# -ve sign to not select column index
lapply(df,class)#displays field or column data type to be sure they are numeric

colnames(df) <- c('movie-rating','open_theatres','max_theatres','global_box_office',
                  'us_box_office','intl_box_office','budget','profit','open_weekend',
                  'us_sales')
#omit null rows
df=na.omit(df)
#change data type from nvarchar to int or numeric
df$`movie-rating`<-as.numeric(df$`movie-rating`)



#variable df is now cleaned

#plot histogram
par(hist.data.frame(df))
