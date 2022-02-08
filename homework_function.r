## Write function to import all files: csv,xlsx,tsv,text,url

##csv - table3
first_function<-function(filename){
  read.file <- read.csv("table3.csv.csv",header = T,sep = ";")
  return(read.file)
}
 my_output <- first_function("table3.csv.csv")
 View(my_output)
 
##csv -table_4
second_function <- function(frog){
  Table_4 <- read.csv(frog,header = T,sep = ";")
  return(Table_4)
}
my_output <- second_function("Table_4.csv")
View(my_output)

##tsv- table_2
fourth_function <- function(favouritefile){
  Table_2 <- read.delim2(favouritefile,header = T,sep = "\t")
  return(Table_2)
  }
my_output <- fourth_function("Table_2.tsv")
View(my_output)

##tsv - table5
fifth_function <- function(filename){
  Table_5<- read.delim(filename, skip = 2, header = TRUE, sep = "\t", dec = ".")
  return(Table_5)
}
output <- fifth_function("Table_5.tsv")
> View(output)

##text file
one_function <- function(first){
  Table_1 <- read.delim(first,header = T)
  return(Table_1)
}
output2 <- one_function("Table_1.tsv")
View(output2)

##excel file
sixth_function <- function(filename){
  sixthtable <- read_excel(filename)
  return(sixthtable)
}
output6 <- sixth_function("sixthtable.xlsx")
 View(output6)
 
## url file
 seven_function <- function(filename){
   url <- "https://pubchem.ncbi.nlm.nih.gov/sdq/sdqagent.cgi?infmt=json&outfmt=csv&query={%22download%22:%22*%22,%22collection%22:%22bioactivity%22,%22where%22:{%22ands%22:[{%22cid%22:%2224764%22}]},%22order%22:[%22acvalue,asc%22],%22start%22:1,%22limit%22:10000000,%22downloadfilename%22:%22CID_24764_bioactivity%22,%22nullatbottom%22:1}"
   destfile <- 'C:/Users/Jacira Ramos/Desktop/R ASSIGNMENT/download_file.txt'
   download.file(url, destfile, method='auto', quiet = FALSE, mode = "w", cacheOK = TRUE, extra = getOption("download.file.extra"))
   return(url)
 }
 
 output7 <- seven_function("url")
 #Content type 'application/save-to-disk;charset=UTF-8' length unknown
 downloaded 204 KB
 # it downloaded values instead of data