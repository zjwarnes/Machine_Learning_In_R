#formula is the symbol representation of the relation between x and y
#data contains the values that you want to use linear regression on


#returns formula of a line that passes through the data
lin.Regression <- function(xData, yData){
	relation <- lm(xData~yData)

	print(summary(relation))

	relation

}