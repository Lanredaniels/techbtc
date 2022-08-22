#start
library(factoextra)
library(dplyr)
class(AirPassengers)
?dplyr
?iris
View(iris$Species)

table(iris$Species)
cf<-iris[,c(1,2,3,4)]
View(cf)

cf<-scale(cf)  

kl<-kmeans(cf,centers=3,nstart = 5)
d<-kl$cluster
?fviz_cluster
fviz_cluster(list(cluster=d,data = cf))
#or
fviz_cluster(kl,data=cf)
rownames(cf) = paste(cf$Species, 1:dim(iris)[1], sep = "_")
                                                                                                                                                                                                                                                                                                                print(R)
View(R)
kl$cluster
kl$iter
