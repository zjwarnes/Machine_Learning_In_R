#takes in input data
#returns a boolean vector based on what columns are integers

inttype <- function(data){
	dateCheck <- sapply(data, 
		function(x) !all(is.na(as.factor(x))))
}