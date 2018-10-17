## Start Assignment  
##    unzip("specdata.zip")
##    read.csv("specdata/001.csv")

pollutantmean <- function(directory, pollutant, id = 1:332) {
      ##'directory' is a character vector of length 1 indicating
      ##'the location of the CSV files
      ##do.call(rbind, lapply(list.files(paste(getwd(),"/", "specdata", sep = ""), full.names=TRUE), read.csv))
      
      allfiles <- as.vector(paste(getwd(),"/", directory, "/", sep = "", sapply((sapply(id, formatC, width = 3, format = "d", flag = "0")), paste, ".csv", sep = "")))
     
      
      tables <- do.call(rbind, lapply(allfiles, read.csv))
     
      
      tables <- subset(tables, select = pollutant)
    
      
      mean(tables[ ,1], na.rm = TRUE)

}