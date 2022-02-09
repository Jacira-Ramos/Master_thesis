# add extra column
# import Table_4.csv as Table_4
Table_4_A <- Table_4[,1:5]
Table_4_A[,'New_column'] <- c('a','b','c','d','e','f','g','h')
# add new row
Table_4_A[9,] <- c('a','b','c','d','e','f')
# extract column names
names(Table_4_A)
# to change column names

names(Table_4_A)[6] <- c('jacira_col')
# print row names
row.names(Table_4_A)
# change row name
# write code by yourself

# remove column
Table_4_A_2 <- Table_4_A[,-2]


# for loop
#print(Table_a[i,])


for(i in 1:8){
  #print(Table_a[i,])
  Table_a[i,] <- gsub("Inactive",'Negative',Table_a[i,])
}