#takes in input data, boolean vecotr and date format
#returns data with the integer columns formatted to decimal 'numerics'

numericConvert <- function(data, booleanVec){
	for(i in 1: length(booleanVec)){
		if(booleanVec[[i]]){
			data[[i]] <- as.numeric(data[[i]])
		}
	}
	data
}