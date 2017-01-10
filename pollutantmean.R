path <- "C:/Users/I321508/Desktop/R Practice/C2W2/specdata"
files <- c(paste("00",2:9,".csv",sep=""),
           paste("0",10:99,".csv",sep=""), 
           paste(100:332,".csv",sep="")
)
#Read first file to create variables in a data frame
data <- read.csv(paste(path,"001.csv",sep="/"))

#Read remaining files and rbind them to dataset

#my_data <- sapply(rbind,data,read.csv(paste(path, files, sep="/")))
