#data contain the values you want the mean of
#trim will drop values from either end of the sorted values, ie. 0.3, removes three values from teach end
#na.rm if set to FALSE will cuase NA to return when missing values are present

mean.default <- function(data, trm = 0, clean = TRUE){
	#defults remove missing values
	d.mean <- mean(x = data, trim = trm, na.rm = clean)

	print(d.mean)
	d.mean
}