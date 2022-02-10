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
    importedfile<-read.csv(filename,header=t,sep=";")
    }
  else if(fileformat=="tsv"){
    importedfile<-read.delim(filename,header=T,sep="\t")
    }
    else if(fileformat=="txt"){
      importedfile<-read.delim2(filename,header=T,sep="\t",dec=".")
      }
      else(fileformat=="url"){
        url<-"https://pubchem.ncbi.nlm.nih.gov/sdq/sdqagent.cgi?infmt=json&outfmt=csv&query=
              {%22download%22:%22*%22,%22collection%22:%22bioactivity%22,%22where%22:{%22ands%22:[{%22cid%22:%2224764%22}]},
              %22order%22:[%22acvalue,asc%22],%22start%22:1,%22limit%22:10000000,%22downloadfilename%22:%22CID_24764_bioactivity%22,
              %22nullatbottom%22:1}"
       importedfile <- "C:/Users/JaciraRamos/Desktop/output.csv" #review this part, i think smth is not correct
       download.file(url,importedfile)
       }
       return(importedfile)
      }
