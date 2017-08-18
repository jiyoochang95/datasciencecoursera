#read the directoryof files and reads the number of completely observed cases 
complete <- function(directory, id=1:332) {
    nobs<-c()
    for (i in id){
        if (i<10){
            newid <- paste("00", i, ".csv", sep="")
             } 
        else if (i>=10 && i<100){
             newid <- paste("0", i, ".csv", sep="")
             }
        path <- paste(directory, "/", newid, sep="")   
        data <- read.csv(path)
        id<-c(id)
        use <- sum(!is.na(data$sulfate) & !is.na(data$nitrate)) #number of complete cases 
        nobs <- append(nobs,use)
    }
    cbind(id,nobs)
}
