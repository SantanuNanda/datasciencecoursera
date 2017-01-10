directory <- 'C:/Users/I321508/Desktop/R Practice/C2W2/specdata'
complete <- function(directory, id = 1:332) {
  completeDF <- data.frame()
  for(i in id){
    filename <- sprintf("%03d", i) # add leading zeros if reqd
    filepath <- paste(directory, "/", filename, ".csv", sep="")
    df <- read.csv(filepath)
    df <- df[complete.cases(df),] # Remove non complete cases
    completeDF <- rbind(completeDF, c(i, nrow(df))) # Add vector that contains id and num rows to DF
  }
  colnames(completeDF) <- c('id', 'nobs') # Add column names
  completeDF
}