#object is the formula for a line from a model
#new data contains the value you want to predict

linear.predict <- function(relation, data){
	result <- predict(relation, data)
	print(result)
	
	result
}