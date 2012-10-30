package com.with.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
@RequestMapping(value ="/FAQ", method=RequestMethod.GET)
public class FaqController {
	@RequestMapping(value="/index")
	public String index()
	{		
		System.out.println("들어오나요");
		return "FAQ/index";
	}
	
	@RequestMapping(value="/faq")
	public String faq()
	{
		return "FAQ/faq";
	}
	

}
