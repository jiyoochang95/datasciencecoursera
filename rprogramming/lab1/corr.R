#calculates the correlation between sulfate and nitrate ?
corr <- function(directory, thresehold =0){
    threhold>

    path <- paste(directory, "/", sep="")   
    data<-read.csv(path)
    nitr<- data$nitrate
    sulf<-data$sulfate
    cr<-cor(nitr,sulf,na.rm=TRUE)
}
