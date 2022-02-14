##Example
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
###################################################################
complicated_function<-function(filename,fileformat){
  if(fileformat=="csv"){
    importedfile<-read.csv(filename,header=T,sep=";")
    }
  else if(fileformat=="tsv"){
    importedfile<-read.delim(filename,header=T,sep="\t")
    }
    else if(fileformat=="txt"){
      importedfile<-read.delim2(filename,header=T,sep="\t",dec=".")
      }
        else if(filefromat=="xlsx"){
      importedfile<- read_excel(filename,header=T)
      }
      else {fileformat=="url"
        url<-"filename"}
       importedfile <- getwd()
      #"C:/Users/JaciraRamos/Desktop/output.csv" #review this part, i think smth is not correct
       download.file(url,importedfile)
       }
       return(importedfile)
      }
csvtable3<-complicated_funtion("table3.csv.csv","csv")
View(csvtable)
csvtable4<-complicated_function("Table_4.csv","csv")
View(csvtable4)
tsvtable5<-complicated_function("Table_5.tsv","tsv")
View(tsvtable5)
tsvtable2<-complicated_function("Table_2.tsv","csv")
View(tsvtable2)
txttable<-complicated_function("Table_1.tsv","txt")
View(txttable)
urltable<-complicated_function("url","url") #not sure about this part either, have to review
View(urltable)
