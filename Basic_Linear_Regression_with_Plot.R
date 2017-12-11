#relation is the function to be graphed
#xData and yData are the points in the dataset to be plotted
#xName and yName are the labels for each of the axis
#main.Title is the title of the graph and the name of the saved file
#data.colors is the color of points in the dataset
graph.regression <- function(relation, xData, yData, xName, yName, main.Title, data.colors){

	#give the graph a name to save
	png(file = cat(sprintf('\'%s\'.png, main.Title)))

	plot(yData, xData, col = data.colors, main = main.Title,
		abline( lm(xData, yData)), cex = 1.3, pch = 16, xlab = xName, ylab = yName)

	#save the file
	dev.off()
}