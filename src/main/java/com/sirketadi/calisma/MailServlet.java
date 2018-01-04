package com.sirketadi.calisma;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Properties.ForgotPass;
import Properties.User;


@Controller
public class MailServlet {
	
	
	
	@RequestMapping(value = "/forgotpass", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "admin/forgotpass";
	}
	

	@RequestMapping(value = "/forgotpass2", method = RequestMethod.GET)
	public String giris(HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("text/html;charset=UTF-8");
	
		User user = new User();
		user.setEmail(request.getParameter("email"));
		
		ForgotPass forgotPass = new ForgotPass();
		forgotPass.emailSend(request.getParameter("email"));
		
		response.setContentType("text/html;charset=UTF-8"); 
		

	return "admin/giris";
}
		
		
		
		
	

}
