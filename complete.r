complete <- function(directory, id)
  {
        setwd(directory)
        
          allfiles<-dir(directory)
          
            comoutput<-data.frame()
             
              for (index in id)
                       
                      
                   { 
                             indata <- read.csv(allfiles[index])
                             
                                   csum<-sum(as.numeric(complete.cases(indata)))
                                  
                                         comoutput<-rbind(comoutput, data.frame(index, csum))
                                    }
            colnames(comoutput)<- c('id', 'nobs')
        print(comoutput)}
