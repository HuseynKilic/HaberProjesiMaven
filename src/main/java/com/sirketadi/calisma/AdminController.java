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

import Properties.Admin;


@Controller
public class AdminController {
	
	@RequestMapping(value = "/admins", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "admin/wpadmin";
	}
	
	@RequestMapping(value = "/wpadmin2", method = RequestMethod.POST)
	public String giris(@RequestParam String sifre, Model model, 
			HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("text/html;charset=UTF-8");
        
        try 
        {
        	Admin admin = new Admin();
            
            admin.setAd(request.getParameter("ad"));
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
            
            if(Admin.AdminUser(request.getParameter("ad"),sifre))
            {
            	response.setContentType("text/html;charset=UTF-8");
                Admin ad = new Admin();
                ad.setAd(String.valueOf(request.getParameter("ad")));
                ad.getAd();

                HttpSession sessionUser = request.getSession();
                sessionUser.setAttribute("ad",ad.getAd());

                return "redirect:/yonetim2";
            }  
            else
            {	
            	model.addAttribute("hata", "kullanýcý adý yada þifre hatalý!");
            }    
        } finally {}
        
        return "admin/wpadmin";
	}

}
