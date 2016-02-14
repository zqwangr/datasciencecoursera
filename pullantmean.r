pollutantmean <- function (directory,pollutant,id) 
   {
  
        totaldata<-dir(directory)
         
        setwd(directory)
        totalframe <- do.call(rbind,lapply(totaldata,read.csv))
        subframe <- subset(totalframe,ID %in% id)
        if(pollutant=='sulfate')  { mean(subframe$sulfate,na.rm=TRUE)} 
    
           else if(pollutant=='nitrate') { mean(subframe$nitrate,na.rm=TRUE)}
    
      }
