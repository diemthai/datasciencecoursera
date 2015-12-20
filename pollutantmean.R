pollutantmean <- function(directory, pollutant, id = 1:332) {
  data = lapply(id, function(i) read.csv(paste(directory, "/", formatC(i, 
                                                                       width = 3, flag = "0"), ".csv", sep = ""))[[pollutant]])
  
  return(mean(unlist(data), na.rm = TRUE))
}
pollutantmean("specdata", "nitrate", 23)

pollutantmean("specdata", "sulfate", 1:10)
[1] 4.064128
> pollutantmean("specdata", "nitrate", 70:72)
[1] 1.706047
> pollutantmean("specdata", "nitrate", 23)
[1] 1.280833
pollutantmean("specdata", "nitrate", 200:300)
[1] 1.563453
