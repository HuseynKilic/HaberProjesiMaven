package Properties;
import java.sql.*;

import Utils.ConnectionDatabase;
import Properties.User;



public class UserDAO {
	public void ekle(User i){
		
		try{
			Connection con =ConnectionDatabase.getCon();
			
			String sql = "INSERT INTO user (ad,soyad,sifre,email) VALUES(?,?,?,?)";
			PreparedStatement p1 = con.prepareStatement(sql);
			p1.setString(1,i.getAd());
			p1.setString(2,i.getSoyad());
			p1.setString(3,i.getSifre());
			p1.setString(4, i.getEmail());
			
			int sonuc=p1.executeUpdate();
			if(sonuc==1)
				System.out.println("Kayit Eklendi");
			else
				System.out.println("Kayit Eklenemedi");
			p1.close();
		}catch (Exception e){
			e.printStackTrace();
		}
	}
	
	public User getUserByMail(String mail) throws SQLException{
		
		User user = new User();
		
		try
		{
			Connection con =ConnectionDatabase.getCon();
			String sql = "SELECT * FROM user WHERE email=?";
			PreparedStatement p1 = con.prepareStatement(sql);
			p1.setString(1,mail);
			ResultSet sonuc = p1.executeQuery();
			while(sonuc.next()){
				user.setId(sonuc.getInt("id"));
				user.setAd(sonuc.getString("ad"));
				user.setSoyad(sonuc.getString("soyad"));
				user.setSifre(sonuc.getString("sifre"));
				user.setEmail(sonuc.getString("email"));
			}
		
		p1.close();
		
	}catch (Exception e){
		e.printStackTrace();
	}
		return user;
	}
}