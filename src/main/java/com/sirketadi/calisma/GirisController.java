package com.sirketadi.calisma;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Properties.User;


@Controller
public class GirisController {
	

	@RequestMapping(value = "/giris", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "admin/giris";
	}
	
	@RequestMapping(value = "/giris2", method = RequestMethod.POST)
	public String giris(@RequestParam String sifre, Model model, 
			HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("text/html;charset=UTF-8");
        
        try 
        {
        	User user = new User();
            
            user.setAd(request.getParameter("ad"));
            sifre = request.getParameter("sifre");
            String hashword = null;
            try {
            MessageDigest md5 = MessageDigest.getInstance("MD5");
            md5.update(sifre.getBytes());
            BigInteger hash = new BigInteger(1, md5.digest());
            hashword = hash.toString(16);
            } catch (NoSuchAlgorithmException nsae) {
            System.out.println(nsae);
            }
            sifre = hashword;
            
            if(User.LoginUser(request.getParameter("ad"),sifre))
            {
            	response.setContentType("text/html;charset=UTF-8");
                User us = new User();
                us.setAd(String.valueOf(request.getParameter("ad")));
                us.getAd();

                HttpSession sessionUser = request.getSession();
                sessionUser.setAttribute("ad",us.getAd());

                return "redirect:/";
            }  
            else
            {	
            	model.addAttribute("hata", "kullanýcý adý yada þifre hatalý!");
            }    
        } finally {}
        
        return "admin/giris";
	}
}
