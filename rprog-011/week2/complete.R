complete <- function(directory, id = 1:332) {
    
    csv <- directoryfiles(directory)
    
    nobs <- numeric()
    for(i in 1:length(id)) {
        d <- csv(id[i])
        nobs[i] <- length(d[[1]][complete.cases(d)])
    }
    
    data.frame(id,nobs)
}