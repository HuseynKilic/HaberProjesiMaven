package com.sirketadi.calisma;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.binary.Base64;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Properties.EncryptionUtil;
import Properties.User;
import Properties.UserDAO;
import Utils.ConnectionDatabase;

@Controller
public class YenisifreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static EncryptionUtil encryptionUtil = new EncryptionUtil();
	
	
	@RequestMapping(value = "/ResetPass", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "admin/ResetPass";
	}
	
	@RequestMapping(value = "/ResetPass2", method = RequestMethod.GET)
	public String giris(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
		
			
			response.setContentType("text/html;charset=UTF-8");
		
			String id = request.getParameter("id"); 
			byte[] bytes = new Base64(Integer.MAX_VALUE,null,true).decode(id);
			String cipherText = encryptionUtil.decrypt(bytes);
	
				System.out.println(cipherText);
	
			String newpass = request.getParameter("newpass");
			String renewpass = request.getParameter("renewpass");
	if(newpass.equals(null)||newpass==""||renewpass.equals(null)||renewpass==""){
			
			request.setAttribute("msg", "Tüm alanlarý doldurun...");
			getServletContext().getRequestDispatcher("/ResetPass.jsp").forward(request, response);
	}
	else if(!newpass.equals(renewpass)){
		
			request.setAttribute("msg", "Þifreler ayný deðil...Tekrar deneyin...");
			getServletContext().getRequestDispatcher("/ResetPass.jsp").forward(request, response);
	}
	else {
		UserDAO userDAO = new UserDAO();
		User user = null;
		try {
			user = userDAO.getUserByMail(cipherText);
		    
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		try {
			Connection con =ConnectionDatabase.getCon();
			String sql = "UPDATE user SET sifre=? WHERE id=?";
			PreparedStatement p1 = con.prepareStatement(sql);
			String sifre = newpass;
        	String hashword = null;
			try {
            	
                MessageDigest md5 = MessageDigest.getInstance("MD5");
                md5.update(sifre.getBytes());
                BigInteger hash = new BigInteger(1, md5.digest());
                hashword = hash.toString(16);
                
                } catch (NoSuchAlgorithmException nsae) {
                	System.out.println(nsae); 
                } 
			
				p1.setString(1, hashword);
				p1.setInt(2,user.getId());
				p1.executeUpdate();
			
	
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	return "admin/giris";
}

	}
		

	
	