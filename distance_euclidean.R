#Euclidean distance using the distance () function
require(philentropy)

distance(Table_7,method = "euclidean")

Table7_stand <- subset(Table7_stand, select = - c(NumRadicalElectrons)) #drop NaN column

euclidean_test <- distance(Table7_stand,method = "euclidean")

#Euclidean diastance using a nested loop
#this will be applied in the standardized Table 7 (Table7_stand)
#because one of the columns had NaN number, we have to eliminate it 

Table7_stand <- subset(Table7_stand, select = - c(NumRadicalElectrons))

#After removing all the missing values and NaN values, we'll have a table with 15 columns and 25 rows
#We have to create a 25x25 matrix to store the distance values

euclidean_distance_table <- matrix(nrow = nrow(Table7_stand),ncol = nrow(Table7_stand))

#To facilitate the application of the formula, we'll use a function

euclidean_distance <- function(a, b) sqrt(sum((a - b)^2)) 

for (i in 1:nrow(Table7_stand)) {
  point <- Table_7[i,]
  
  for (j in 1:nrow(Table7_stand)) {
    point2 <- Table_7[j,]
    euclidean_distance_table[i,j] <- euclidean_distance(point, point2)
    
  }
}
