## Start Assignment  
##    unzip("specdata.zip")
##    read.csv("specdata/001.csv")

pollutantmean <- function(directory, pollutant, id = 1:332) {
      ##'directory' is a character vector of length 1 indicating
      ##'the location of the CSV files
      
      allfiles <- list.files(paste(getwd(),"/", directory, sep = ""), full.names=TRUE)
      
      tables <- lapply(allfiles, read.csv)
      do.call(rbind, complete.cases(tables))
      
      subset(tables, tables[,ID] == id, select = pollutant)
     ##'pollutant' is a character vector of length 1 indicating
     ##'the name of the pollutant for which we will calculate the
     ##'mean; either "sulfate" or "nitrate"
     ##' 

            ## mean(read.csv(paste(getwd(),"/", directory, "/", y[i], sep = "")))

      ##'
      ##''id' is an integer vector indicating the monitor ID numbers
      ##'to be used
      
      
      ##'
      ##'Return the mean of the pollutant across all monitors list
      ##'in the 'id' vector (ignoring NA values)
      ##'NOTE: Do not round the result!
      ##'
   
}