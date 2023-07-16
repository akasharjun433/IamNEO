package com.neo.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	   private static String DB_URL = "jdbc:mysql://localhost:3306/iamneo";
	   private static String USER = "root";
	   private static String PASS = "Naveen@10";
	   private static String DBdriver="com.mysql.cj.jdbc.Driver";		
		
	   public static Connection getConnection() throws ClassNotFoundException {
		  Class.forName(DBdriver);
		  Connection con=null;
		   try {
			con=DriverManager.getConnection(DB_URL,USER,PASS);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		   
		return con;		   
	   }
}
