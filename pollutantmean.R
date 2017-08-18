
#Calculates the mean of a pollutant 
pollutantmean<- function(directory, pollutant, id = 1:332){
    #figure out the csv file name for the id 
    bind<-data.frame()
    for (i in id){
        if (i<10){
            newid <- paste("00", i, ".csv", sep="")
        }
        else if (i>=10 && i<100){
            newid <- paste("0", i, ".csv", sep="")
        }
        path <- paste(directory, "/", newid, sep="")
        data <- read.csv(path)
        bind<-rbind(bind,data) ##merge all the data frames 
    }
    
    # nitrate 
    if (pollutant == "nitrate"){
        m<-mean(bind$nitrate, na.rm=TRUE)
    }
    #sulfate 
    else if (pollutant == "sulfate"){
        m<-mean(bind$sulfate, na.rm=TRUE)
    }
    m
}