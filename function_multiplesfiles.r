my_nextlevel_function <- function(filename,fileformat){
  if(fileformat=="csv"){
    fileoutput <- read.csv(filename, header = T,sep = ";")
  }
  else if(fileformat=="tsv"){
    fileoutput <- read.delim(filename, header=T, sep = "\t")
  }
  else{
    print("The given file format is not acceptable")
    fileoutput <- "NA"
  }
  return(fileoutput)
}

# aa <- my_nextlevel_function("Table_4.csv","csv")
#View(aa)
#bb <- my_nextlevel_function("Table_2.tsv","tsv")
#View(bb)