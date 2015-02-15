getfilefromurl <- function(url) {
    tail(strsplit(url,'%2F|/')[[1]], n = 1)
}

getdata <- function(dataset_url, file = NULL) {
    if(is.null(file)) {
        file = getfilefromurl(dataset_url)
    }
    download.file(dataset_url, file)
    unzip(file)
}

directoryfiles <- function(directory) {
    files = list.files(directory, full.name = TRUE)
    function(pos) {
        read.csv(files[pos])
    }
}