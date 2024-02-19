package Daopack;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



import connpack.Myconnection;
import loginBean.User;

public class UserDao {
       
	public static boolean isValidUser(String username, String password) {
		
		boolean status = false;
		try {
			Connection con = Myconnection.Mydb();
			String sql = "select * from login where uname = ? and passwd = ?";
			PreparedStatement pstm = con.prepareStatement(sql);
			pstm.setString(1, username);
			pstm.setString(2, password);
			ResultSet rs = pstm.executeQuery();
			if(rs.next()) {
				status = true;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return status;
	}
	
	public static boolean addUser(User u) {
		
		boolean status = false;
		
		try {
			
			Connection con = Myconnection.Mydb();
			String sql = "insert into login values(?, ?, ?)";
			PreparedStatement pstm = con.prepareStatement(sql);
			pstm.setString(1, u.getUname());
			pstm.setString(2, u.getEmail());
			pstm.setString(3, u.getPasswd());
			int rows = pstm.executeUpdate();
			if(rows > 0) {
				status = true;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
