quality_check_statistics <- function(data){
	#For each numerical value

	#Correlations
	#logic required to identify these values
	print(cor(data[x:y]))

	#Skewness of data
	#Further distribution of the skew value from zero, 
	#the larger left skew, negative skew
	#Right, positive skew
	print(apply(data[x:y], 2, skewness)

	
	#Standard deviations
	print(sapply(data, sd))
	


}