quality_check <- function(data, path.file){
	pdf(path.file)

	#missing values table
	missing <- data.frame(rbind(Non.Null = colSums(!is.na(data)), Null.Values = colSums(is.na(data))))
	grid.table(missing)
	dev.off()


	select_grobs <- function(lay) {
  		id <- unique(c(t(lay))) 
  		id[!is.na(id)]
	} 


	pdf(path.file)
	dList <- rbind()
	sList <- rbind()
	for(i in 1:length(iris)){
		#distinct values
		#min max and distribution

		dList <- rbind(dList, (unique = length(unique(data[[i]]))))
		sList <- rbind(sList, summary(iris[[i]]))
	}
	grid.arrange(dList, layout_matrix=dList)
	#grid.arrange(grobs=gs[select_grobs(dList)], layout_matrix=dList)
	dev.off()

	pdf(path.file)
	tList <- rbind()
	for(i in 1:length(iris)){
		#frequency of each variable
		tList <- rbind( tList, data.frame( sort( cbind( freq=table(data[[i]]), 
			percentage=prop.table(table(data[[i]]))*100), decreasing=TRUE)[1:20]))
	}
	grid.arrange(grobs=gs[select_grobs(tList)], layout_matrix=tList)	
	dev.off()
}
