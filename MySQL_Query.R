my.SQL.query <- function(MySQLconnection, SQLStatement){
	results <- dbSendQuery(MySQLconnection, SQLStatement)

	#store query results in a dataframe 
	data.frame = fetch(results, n = -1)

	#show the top 5 results of the query
	head(data.frame)

	#return the query results
	data.frame
}