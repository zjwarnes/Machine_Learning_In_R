#takes in input data and a date format
#returns a boolean vector based on what columns satisfy the format given

datetype <- function(data, dateFormat = "%d/%m/%y"){
	dateCheck <- sapply(data, 
		function(x) !all(is.na(as.Date(as.character(x), format=dateFormat))))
}