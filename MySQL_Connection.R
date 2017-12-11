my.SQL.connect <- function(usr, pass, database){
	install.packages("RMySQL")
	
	#create conncetion object to MySQL database 
	mysqlconnection = dbConnect(MySQL(), user = usr, password = pass, dbname = databse,
		host = 'localhost'

	#list all available tables in the database
	dblistTables(mysqlconnection)

	mysqlconnection
}