package com.sirketadi.calisma;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AnasayfaController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String anasayfa(Model model) {
		
		model.addAttribute("id", "1");
		return "anasayfa";
	}
	
}
