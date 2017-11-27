
##  > source("complete.R")


complete <- function(directory, id = 1:332) {
      nobs <- NULL
      for (i in id) {
            x <- read.csv(paste(directory, "/", formatC(i, width=3, flag="0"), ".csv", sep = ""))
            nobs <- append(nobs, (nrow(x[complete.cases(x), ])))
      }

      cbind(1:length(id), id, nobs)
   
}