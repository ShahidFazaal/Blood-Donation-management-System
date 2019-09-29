package com.fazaal;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

public class Database {
	// Define the databasee properties
		private static final String userName ="root";
		private static final String password = "fazaal95143";
		private static final String jdbcurl = "jdbc:mysql://localhost:3306/bldbank";
		private static final String driver ="com.mysql.jdbc.Driver";
		public static Connection connection;
		static PrintWriter out = null;
		
		// Define the static method
		
		public static Connection openConnection() {
			// check the connection
			if(connection != null) {
				return connection;
				
			}else {
			
			try {
				//load the driver
				Class.forName(driver);
				// get the connection
				connection = DriverManager.getConnection(jdbcurl, userName, password);
				
				 
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			// return connection
			return connection;
			}
		}
		
		// Add Delete Update to the database
		public static void setData (String sql)throws Exception{
			Database.openConnection().createStatement().executeUpdate(sql);
		}
	
		// Search data in the database
		public static  ResultSet getData (String sql)throws Exception{
			ResultSet executeQuery = Database.openConnection().createStatement().executeQuery(sql);
			return executeQuery;
		}

	}

