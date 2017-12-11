#data contains the values you want the median of

#na.rm if set to FALSE will cuase NA to return when missing values are present

median.default <- function(data, clean = TRUE){
	#defults remove missing values	
	d.median <- median(x = data, na.rm = clean)

	print(d.median)
	d.median
}