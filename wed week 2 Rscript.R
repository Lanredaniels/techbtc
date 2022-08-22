#problem statement- to use featires of flowwers
#to predict species of flowers
#approach is by clustering
#rm(list=)
install.packages(c("Hmisc","factoextra"))
library(odbc)
library(dplyr)
library(Hmisc)
library(factoextra)

con



?labels #finds labels in object

#clustering
?iris
View(iris)
table(iris$Species)#distinct count of column 

#view labels
iris.labels = iris$Species
View(iris.labels)
new<-iris.labels
View(new)
    -#variable categorization
table(iris.labels)

#remove labels
iris_data=iris[1:4]
View(iris_data)

#scale data to remove outliers inorder to normalize
iris_data_scale=scale(iris_data)
print(iris_data_scale)

#distance between observations
?dist
iris_data_dist=dist(iris_data_scale)

#calculate clusters needed using withing sum squares method
#determining nad visualizing no of clusters 
?fviz_nbclust
fviz_nbclust(iris_data_scale,kmeans,method="wss")+ #(wss)within sum of squares
  labs(subtitle = "Elbow method")

#kmeans picking 3 centroids
km_out= kmeans(iris_data_scale,centers = 3)


#visualize clustering
km_cluster=km_out$cluster 
?fviz_cluster
fviz_cluster(list(data=iris_data_scale,cluster=km_cluster))

table(km_cluster,iris$Species)
