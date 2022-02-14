#####Function to import multiples files

complicated_function<-function(filename,fileformat){
  if(fileformat=="csv"){
    importedfile<-read.csv(filename,header=T,sep=";")
  }
  else if(fileformat=="tsv"){
    importedfile<-read.delim(filename,header=T,sep="\t",dec = ".")
  }
  else if(fileformat=="txt"){
    importedfile<-read.delim2(filename,header=T,sep="\t",dec=".")
  }
  else if(fileformat=="xlsx"){
    importedfile<- xlsx::read.xlsx(filename,header=T)
  }
  else {
    url<-".txt"
    getwd(filename("C://")) #Ihad file.path instead of filename but I'm not sure if this is correct.
    importedfile <- filename ##should I use the filename somewhere around here?
      download.file(url,importedfile)
  }
  return(importedfile)
  }

csvtable3<-complicated_function("Table_3.csv","csv")
View(csvtable3)
csvtable4<-complicated_function("Table_4.csv","csv")
View(csvtable4)
tsvtable5<-complicated_function("Table_5.tsv","tsv")
View(tsvtable5)
tsvtable2<-complicated_function("Table_2.tsv","tsv")
View(tsvtable2)
txttable<-complicated_function("Table_1.tsv","txt")
View(txttable)
urltable<-complicated_function("url","txt") 
View(urltable)
table6 <- complicated_function("Table_6.xlsx","xlsx")
View(table6))
