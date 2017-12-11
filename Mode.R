#returns the value with the highest number of occurences in a dataset

mode.default <- function(data){
	#pull the distinct values from the data	
	distinct.values <- unique(data)

	#use the distinct values to count occurences and return the max
	distinct.values[which.max(tabulate(match(data, distinct.values)))]

	#can be modified to return the minimum reccurences of variations of what quantitites
}
