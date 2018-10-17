
##  > source("complete.R")
## takes a directory of data files
## and a threshold for complete cases
## calculates the correlation between sulfate and nitrate 
## for monitor locations where the number of completely observed cases (on all variables) is greater than the threshold
## The function should return a vector of correlations for the monitors that meet the threshold requirement. 
##  If no monitors meet the threshold requirement, then the function should return a numeric vector of length 0. 


corr <- function(directory, threshold = 0) {
      #y <- list.files(paste(getwd(),"/", "specdata", sep = ""), full.names=TRUE)
     #lapply(y, read.csv2)
      #sum(complete.cases(as.data.frame(CHKdata[1])))
      #lapply(CHKdata, function(x)sum(complete.cases(as.data.frame(x)))>150)
      #subset(CHKdata, unlist(CHKlist))
      MyData1 <- NULL
      MyData2 <- NULL
      MyData1 <- lapply(list.files(paste(getwd(),"/", directory, sep = ""), full.names=TRUE), read.csv)
      MyData2 <- sapply(MyData1, function(x) sum(complete.cases(x))>threshold)
      
      if(sum(MyData2)==0){
            return(vector(mode="numeric", length=0))
      }
            else {
      MyData2 <- MyData1[MyData2]
      MyData3 <- NULL
      for(i in 1:length(MyData2)) {
           
            MyData3[i] = cor(data.frame(MyData2[i])[, 2], data.frame(MyData2[i])[, 3], use = 'complete.obs')
            
        }
      return(MyData3)
      
      }
}

