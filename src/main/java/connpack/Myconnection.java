package connpack;

import java.sql.Connection;
import java.sql.DriverManager;

public class Myconnection {
        
	 public static Connection Mydb(){
		 
		 Connection con = null;
		 
		 String DB_URL = "jdbc:mysql://localhost/newdb";
		 String USER = "root";
		 String PASS ="Jishan@9136";
		 
		 try {
			 // load driver class this method is now depricated
			 con = DriverManager.getConnection(DB_URL, USER, PASS);
		 }
		 catch(Exception e) {
			 e.printStackTrace();
		 }
		 
		 
		 return con;
	 }
}