directory <- 'C:/Users/I321508/Desktop/R Practice/C2W2/specdata'
pollutantmean <- function(directory, pollutant, id = 1:332) {
  totalPollutants <- numeric() ## Vector to collate pollutant data
  for (i in id) {
    filename <- sprintf("%03d", i) ## add leading zeros if reqd
    filepath <- paste(directory, "/", filename, ".csv", sep="")
    df <- read.csv(filepath)
    pollutant_data <- na.omit(df[pollutant])
    if(pollutant=='sulfate'){
      totalPollutants <- c(totalPollutants, pollutant_data$sulfate)
    } else {
      totalPollutants <- c(totalPollutants, pollutant_data$nitrate)
    }
  }
  round(mean(totalPollutants), 3)
}
