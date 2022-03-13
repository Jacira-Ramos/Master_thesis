#Create empty result table of dimension 29 by 2
#Using “For loop” extract each row of distance metrics, convert the row values to numeric
#each_row = as.numeric(TABLE_7[1,])
#temp_results = sort(each_row, index.return=TRUE)

empty_table <- matrix(nrow = nrow(data),ncol=2)

for (i in 1:nrow(data)){
  extract <-as.numeric(data[1,])
  sorted <- sort(extract, index.return=TRUE)
  print(sorted)
 }
 
for (i in 1:nrow(euclidean_distance_table)){
  each_row <-as.numeric(euclidean_distance_table[1,])
  temp_results <- sort(extract, index.return=TRUE)
  print(temp_results)
}

#to see the distances by order and with the index

test1_results$x
test1_results$ix

#save it
sorted_distance <- matrix(ncol = 2,nrow = nrow(euclidean_distance_table))

sorted_distance[,2] <- test1_results$x
sorted_distance[,1] <- test1_results$ix
