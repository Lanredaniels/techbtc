library(odbc)
library(dplyr)
library(tidyverse)
library(corrplot)
library(modeldata)
library(Metrics)
library(ggeffects)
library(leaps) 
con <- dbConnect(odbc::odbc(),
                 Driver = "SQL SERVER",
                 Server = "DESKTOP-KD9T284",
                 Database = "HomePrediction",
                 Port = 1433)

dbListTables(con)
dbListFields(con, 'train')

testdata <- tbl(con, 'train')
testdata <-collect(testdata)
View(testdata)

num <- unlist(lapply(testdata, is.numeric), use.names = FALSE) 
corrplot(cor(testdata[num]))
custom_min <- function(x) {if (length(x)>0) min(x) else Inf}
