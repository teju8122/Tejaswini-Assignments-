package edu.products.dbase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
	public static Connection initializeDatabase() throws SQLException, ClassNotFoundException{
		
			//Initialize all the information regarding Db connection
			
			String dbDriver = "com.mysql.jdbc.Driver";
			String dbURL="jdbc:mysql://localhost:3306/";
			
			//DB name to access
            String dbName = "Product";
            String dbUsername = "root";
            String dbPassword = "123456";
            
            Class.forName(dbDriver);
            Connection con = DriverManager.getConnection(dbURL+dbName, dbUsername,dbPassword);
            return con;
		}
	}
