package Utils;

import Properties.User;

import java.sql.*;

public class ConnectionDatabase {
		
		private static final String DRIVER = "com.mysql.jdbc.Driver";
		private static final String CONNECTION_URL = "jdbc:mysql://localhost/proje";
		private static final String USERNAME = "root";
		private static final String PASSWORD = "";
		
		static Connection con=null;
		static{
			try{
				Class.forName(DRIVER);
				con=DriverManager.getConnection(CONNECTION_URL,USERNAME,PASSWORD);
				}catch(Exception e){}
		}
		public static Connection getCon(){
			return con;
		}
		
		public static int resetPass(User u , String sql){
			int i=0;
			Connection con = ConnectionDatabase.getCon();
			try{
				PreparedStatement p1 = con.prepareStatement(sql);
				p1.setString(1, u.getSifre());
				p1.setString(2, u.getAd());
				i = p1.executeUpdate();
				
			}catch(SQLException e) {
				e.printStackTrace();
			}
			return i;
		}
	}


