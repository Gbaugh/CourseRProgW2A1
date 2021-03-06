
##  > source("complete.R")


complete <- function(directory, id = 1:332) {

      #MyData1 <- lapply(as.vector(paste(getwd(),"/", directory, "/", sep = "", sapply((sapply(id, formatC, width = 3, format = "d", flag = "0")), paste, ".csv", sep = ""))), read.csv)
      #lapply(MyData1, function(x) sum(complete.cases(x)))
      
      MyData1 <- lapply(list.files(paste(getwd(),"/", directory, sep = ""), full.names=TRUE), read.csv)
      nobs <- unlist(lapply(MyData1[id], function(x) sum(complete.cases(x))))
      data.frame(id, nobs)
      
}