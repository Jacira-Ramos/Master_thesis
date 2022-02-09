for(i in 1:8){
  #print(table3.csv[i,])
  table3.csv[i,] <- gsub("Inactive",'Negative',table3.csv[i,])
}
#gsub was used to change observation in dataframe where observations labelled inactive were changed to negative
#For loop  was used to changes in multiples sites at the same time, in this case from row 1 to 8 
for(i in 1:5){
     #print(table3.csv[i,])
     table3.csv[i,] <- gsub("Negative",'Bad',table3.csv[i,])
}
#gsub was used to change observation in dataframe where observations labelled negative were changed to bad
#For loop  was used to changes in multiples sites at the same time, in this case from row 1 to 5 

Table_7 <- read.csv("Table_7.csv",header = T,sep = ",",dec = ".")
View(Table_7)

####I WAS WRONGLY SELECTING THE NUMBER OF COLOUMNS IN THIS SECTION
for (i in 1:29) {
  na.rm=TRUE(Table_7[i,])
}
#Error in TRUE(Table_7[i, ]) : attempt to apply non-function

Table7_update <- na.omit(Table_7[,i])

 for (i in 1:29) {
    Table_7[i,] <-  na.omit(Table_7[i,])
   }
#Error in x[[jj]][iseq] <- vjj : replacement has length zero
 
> for (i in 1:29) {
  +  Table_7[,i] <-  na.omit(Table_7[,i])
  + }
#Error in `[<-.data.frame`(`*tmp*`, , i, value = c(12.5836406, 9.059691358,  :  replacement has 27 rows, data has 29

as.data.frame(Table7_update <- na.omit(Table_7[,i]))

## The command above eliminated two rows.. not what I wanted

for (i in 1:29) {
  as.data.frame(Table7_update <- na.omit(Table_7[,i]))
   }
#Error in `[.data.frame`(Table_7, , i) : undefined columns selected

 for (i in 1:29) {
   as.data.frame(Table7_update <- na.omit(Table_7[,1:29]))
     }
#Error in `[.data.frame`(Table_7, , 1:29) : undefined columns selected
#After this last error I understood that I selecting the wrong number of columns!
##################################------------------
#I DID IT! i WROTE THE COMMAND BELOW ALONE

> for (i in 1:16) {
  as.data.frame(Table7_update <- na.omit(Table_7[,1:16]))
       }
> View(Table7_update)

#final output is 25 rows(4 rows were omitted) and 16 columns without NA

