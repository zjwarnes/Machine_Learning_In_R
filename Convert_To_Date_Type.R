#takes in input data, boolean vector and date format
#returns data with date columns formatted

dateConvert <- function(data, booleanVec, dateFormat){
	for(i in 1:length(booleanVec)){
		if(booleanVec[[i]]){
			print(data[[i]])
			data[[i]] <- as.Date(data[[i]] , dateFormat)
		}
	}
	data
}