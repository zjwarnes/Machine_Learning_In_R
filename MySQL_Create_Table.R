my.SQL.create.table <- function(usr, pass, database.name, table.name, data.frame){
	
	#create a table in a database using a dataframe
	mySQLconnection = dbConnect(MySQL(), user = usr, password = pass, 
		dbname = database.name, host = 'localhost')

	dbWrite(mySQLconnection,  table.name, data.frame, overwrite = TRUE)
}