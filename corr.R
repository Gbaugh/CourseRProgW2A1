
##  > source("complete.R")
## takes a directory of data files
## and a threshold for complete cases
## calculates the correlation between sulfate and nitrate 
## for monitor locations where the number of completely observed cases (on all variables) is greater than the threshold
## The function should return a vector of correlations for the monitors that meet the threshold requirement. 
##  If no monitors meet the threshold requirement, then the function should return a numeric vector of length 0. 


corr <- function(directory, threshold = 0) {
      y <- list.files(paste(getwd(),"/", directory, sep = ""))
      
      for (i in 1:length(y)) {
            ## y <- append(y, read.csv(paste(directory, "/", formatC(i, width=3, flag="0"), ".csv", sep = ""))[[pollutant]])
            x <- read.csv(paste(directory, "/", y[i], sep = ""))

            if (sum(complete.cases(x)) > threshold) {
                  
                  ## good <- complete.cases(x)
                  z <- data.frame(x[complete.cases(x), 2:3])
                  print(cor(z)##zNitr <- good["nitrate"]
                  ## print(cor(zSulf, zNitr))
                  ##&cor(x[["sulfate"]], x[["nitrate"]]
                  
                  } ##else {
                  c(0)  ##    print(FALSE)
                  ##}
                         
      }
      
}

