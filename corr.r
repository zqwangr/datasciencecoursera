 corr <- function(directory, threshold=1) {
 setwd(directory)
 
 allfiles<-dir(directory)
 
 corroutput <-c()
 
 for (index in c(1:length(allfiles))) 
     
 { 
     indata <- read.csv(allfiles[index])
     
     csum<-sum(as.numeric(complete.cases(indata)))
     
     if (csum >= threshold)
     {  
         ##attach(indata)
         corroutput <- c(corroutput, cor(indata$sulfate, indata$nitrate, use = "complete.obs"))
     }
     
     
 } 
  corroutput}
