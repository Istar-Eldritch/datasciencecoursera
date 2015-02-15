pollutantmean <- function(directory, pollutant, id = 1:332, na = FALSE) {
    
    csv <- directoryfiles(directory)
    
    data <- data.frame()
    for(i in id) {
        data <- rbind(data, csv(i))
    }
    
    mean(data[[pollutant]], na.rm = !na)
}