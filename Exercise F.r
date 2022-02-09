###############EXERCISE F 
Table_8<-read.csv("Table_8.csv", header = TRUE, sep = ",", dec=".")
View(Table_8)

standardize <- function(x){
  return((x-mean(x,na.rm=TRUE))/sd(x,na.rm = TRUE))
}
std_table8 <- as.data.frame(apply(Table_8[2:5],2,standardize))
#trying the standardization from colum 2 to 5 
#na.rm to remove any  missing values

std_table8 <- as.data.frame(apply(Table_8[2:10],2,standardize))
 View(std_table8)
 #from column 2 to 10 
 
 std_table8 <- as.data.frame(apply(Table_8[1:1444],2,standardize))
 #Error in x - mean(x, na.rm = TRUE) : 
# non-numeric argument to binary operator
 #In addition: Warning message:
  # In mean.default(x, na.rm = TRUE) :
   #argument is not numeric or logical: returning NA
 
 #Why do I get this error when I increase the number the columns to standardize???
 
 is.character(Table_8)
 [1] FALSE
 #so there is no character in table8, why do we have an error?