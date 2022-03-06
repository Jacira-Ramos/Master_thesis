Table_7 <- read.csv('Table_7.csv', sep = ',', header = T)
Table_7 <- na.omit(Table_7)

empty_res <- matrix(nrow = 2, ncol = ncol(Table_7))
colnames(empty_res) <- names(Table_7) 

for(i in 1:16){
  res <- mean(Table_7[,i], na.rm = T)
  res1 <- sd(Table_7[,i],na.rm = T)
  empty_res[1,i] <- res 
  empty_res[2,i] <- res1 
}

mean_centering <- matrix(nrow = nrow(Table_7),ncol = ncol(Table_7))
colnames(mean_centering) <- names(Table_7)

for (i in 1:ncol(empty_res)){
  temp_mean <- empty_res[1,i] 
  for(j in 1:nrow(Table_7)){
    mean_centering[j,i] <- (Table_7[j,i] - empty_res[1,i])
  }
}

Table7_stand <- matrix(nrow =nrow(mean_centering),ncol =ncol(mean_centering))
colnames(Table7_stand) <- names(Table_7)

for (i in 1:ncol(empty_res)){
  temp_sd <- empty_res[2,i]
  for(j in 1:nrow(mean_centering)){
    Table7_stand[j,i] <- (mean_centering[j,i]/empty_res[2,i])
  }
}

