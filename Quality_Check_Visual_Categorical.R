quality_check_categorical <- function(data){
	

	#Bar chart counts
	par(mfrow = c(2,4))
	for(i in 2: 9){
		counts <- table(data[,i])
		name <- names(data)[i]
		barplot(counts, main=name)
	}

	#chart missing data points
	missmap(data, col=c("black","grey"), legend=FALSE)	
}