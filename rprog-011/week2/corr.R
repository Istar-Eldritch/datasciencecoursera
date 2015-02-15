corr <- function(directory, threshold = 0) {
    
    csv <- directoryfiles(directory)
    
    c <- complete(directory, 1:length(list.files(directory)))
    
    correlations <- numeric()
    for(i in 1:nrow(c)) {
        if(c[i,2] > threshold) {
            d <- csv(c[i,1])
            correlations[i] <- cor(d['sulfate'],d['nitrate'], use="complete.obs")[1,1]
        }
    }
    correlations
}