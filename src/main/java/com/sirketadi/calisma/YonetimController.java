package com.sirketadi.calisma;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class YonetimController {
	
	@RequestMapping(value = "/yonetim", method = RequestMethod.GET)
	public String yonetim(Model model) {
		model.addAttribute("id", "2");
		return "admin/yonetim";
	}
	
	@RequestMapping(value = "/yonetim2", method = RequestMethod.GET)
	public String yonetim2(Model model) {
		model.addAttribute("id", "2");
		return "admin/yonetim2";
	}

}
