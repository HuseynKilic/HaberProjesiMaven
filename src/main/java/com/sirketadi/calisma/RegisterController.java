package com.sirketadi.calisma;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Properties.EmailDAO;

import Properties.User;
import Properties.UserDAO;

@Controller
public class RegisterController {
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "admin/register";
	}
	

	@RequestMapping(value = "/register2", method = RequestMethod.POST)
	public String giris(@RequestParam String sifre, Model model, 
			HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("text/html;charset=UTF-8");
	
	response.setContentType("text/html;charset=UTF-8");
    
    
    UserDAO userDAO = new UserDAO();
   
    	User user = new User();
       
        user.setAd(request.getParameter("ad"));
        user.setSoyad(request.getParameter("soyad"));
        try {
        	sifre = request.getParameter("sifre");
        	String hashword = null;
            MessageDigest md5 = MessageDigest.getInstance("MD5");
          
            md5.update(sifre.getBytes());
            BigInteger hash = new BigInteger(1, md5.digest());
            hashword = hash.toString(16);
            user.setSifre(hashword);
            
            } catch (NoSuchAlgorithmException nsae) {
            System.out.println(nsae);
            }
        	user.setEmail(request.getParameter("email"));
        
        userDAO.ekle(user);

        EmailDAO emailDAO = new EmailDAO();
        emailDAO.sendEmail(request.getParameter("email"));
	return "admin/giris";
}
}