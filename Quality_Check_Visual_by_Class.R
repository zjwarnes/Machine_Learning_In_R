quality_check_visual_by_class <- function(numericValues, categoryField){
	#values to be plotted
	X <- numericValues
	Y <- categoryField
	
	scales <- list(x=list(relation="free"), y=list(relation="free"))
	featurePlot(x=X, y=Y, plot="density", scales=scales)

	featurePlot(x=X, y=Y, plot="box")

}