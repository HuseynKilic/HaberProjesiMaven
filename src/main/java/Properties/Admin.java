package Properties;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Admin {

	int id;
	String ad;
	String sifre;
	
	public Admin() {
		
	}
	
	public Admin(int id, String ad, String sifre) {
		this.id = id;
		this.ad = ad;
		this.sifre = sifre;
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAd() {
		return ad;
	}

	public void setAd(String ad) {
		this.ad = ad;
	}

	public String getSifre() {
		return sifre;
	}

	public void setSifre(String sifre) {
		this.sifre = sifre;
	}
	
	public static boolean AdminUser(String ad,String sifre) 
    {
            boolean check =false;
            try 
            {     
            	Class.forName("com.mysql.jdbc.Driver");
    			
    			Connection bag = DriverManager.getConnection
    					("jdbc:mysql://localhost/proje","root","");    
    			
    			String sql = "SELECT * FROM admin WHERE ad=? and sifre=?";    
            	
    			PreparedStatement p1 = bag.prepareStatement(sql);
    			p1.setString(1, ad);
    			p1.setString(2, sifre);
    			ResultSet sonuc = p1.executeQuery();
            	check = sonuc.next();
                
            	p1.close();
    			bag.close();

            }catch(Exception e){e.printStackTrace();}
            
            return check;    
    }
}
