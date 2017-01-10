directory <- '/Users/mehulmandania/Dropbox/sandbox/RProgramming/Week1/specdata'
corr <- function(directory, threshold = 0) {
  correlations <- numeric() ## Vector to collate correlation data
  for(i in 1:332){
    filename <- sprintf("%03d", i) # add leading zeros if reqd
    filepath <- paste(directory, "/", filename, ".csv", sep="")
    df <- read.csv(filepath)
    df <- df[complete.cases(df),] # Remove non complete cases
    if(nrow(df) > threshold) {
      ## calculate cor and add to correlations vector
      correlation <- cor(df$sulfate, df$nitrate)
      correlations <- c(correlations, correlation)
    }
  }
  correlations
}

corr(directory)