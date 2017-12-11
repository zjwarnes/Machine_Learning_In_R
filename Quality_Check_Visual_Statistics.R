quality_check_visual_statistics <- function(data){
	#creates correlation plots where the intensity of color represents the correlation
	correlations <- cor(iris[,1:4])
	corrplot(correlations, method="circle")

	#scatter plot
	#Plots two variables against one another
	pairs(data)

	#If a category label is desired we can perform a scatter plot that is colored by category
	pairs(CategoryField~., data=data, col=data$CategoryField)

}