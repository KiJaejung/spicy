package com.spicy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PagesController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		
		return "home";
	}
	
	@RequestMapping(value = "/prologue", method = RequestMethod.GET)
	public String prologue(Model model) {
		model.addAttribute("prologueNavi", "true");
		return "prologue";
	}
	
	@RequestMapping(value = "/rest", method = RequestMethod.GET)
	public String rest(Model model) {
		model.addAttribute("restNavi", "true");
		return "rest";
	}
}
