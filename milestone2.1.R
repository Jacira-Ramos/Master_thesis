#Create empty result table of dimension 29 by 2
#Using “For loop” extract each row of distance metrics, convert the row values to numeric
#each_row = as.numeric(TABLE_7[1,])
#temp_results = sort(each_row, index.return=TRUE)

k_value <- 1
sorted_distance <- matrix(ncol = k_value+1,nrow = nrow(euclidean_distance_table))

for(i in 1:nrow(euclidean_distance_table)){
 col_ind <- seq(1,ncol(euclidean_distance_table))
 col_ind <- col_ind[-i]
 each_row <- as.numeric(euclidean_distance_table[i,col_ind])
 temp_results <- sort(each_row,index.return=TRUE)
 sorted_distance[i,1] <-c(i)
 sorted_distance[i,2] <- temp_results$ix[1:k_value]

}


