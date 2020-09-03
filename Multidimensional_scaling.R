#Multidimensional Scaling - Distance between cities (in KM)
#Ordination analysis
#Respresent the distance among objects using Principal coordinate analysis

#Import dataset
city_data = read.csv("indian_cities.csv", sep=",", row.names=1)
#Convert to matrix form
city_data_matrix <- as.matrix(city_data) 
#Replace empty spaces with 0
city_data_matrix[is.na(city_data_matrix)]  <- 0 

#find the coordinates of the points chosen to represent the dissimilarities
fit <-cmdscale(city_data_matrix, k=2) #k is the number of dimension

#Distance between points are equal to dissimilarities
#plotting
library(ggfortify)
autoplot(cmdscale(city_data_matrix, eig=TRUE,k=2),label = TRUE, label.size = 5)

#This analysis is much suitable when there are large number of points and 
#it is difficult to manually find out the dissimilarity between the points
