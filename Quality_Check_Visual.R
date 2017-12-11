quality_check_visual <- function(data, path.file){
	
	#need to separate for numeric values

	#histograms
	pdf(path.file)
	par(mfrow=c(1,4))
	for( i in 1:4){
		hist(data[,i], main=names(data)[i])
	}

	#density plots
	par(mfrow=c(1,4))
	for( i in 1:4){
		plot(density(data[,i]), main=names(data)[i])
	}

	#Box plots
	par(mfrow=c(1,4))
	for( i in 1:4){
		boxplot(data[,i], main=names(data)[i])
	}
	dev.off()	
}
