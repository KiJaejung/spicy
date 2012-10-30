package com.spicy.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spicy.service.GenericService;

public abstract class GenericController<Domain, ID, Service, Dao> extends GenericService<Domain, ID, Dao> {
	
	private String className = this.getClass().getSimpleName().toLowerCase();
	private int classNameLength = className.length();
	private final int controllerLength = 10; 
	private String domainName = className.substring(0, classNameLength - controllerLength);
	private String listName = domainName.concat("List");
	
	
	@RequestMapping (method=RequestMethod.GET)
	public String index(Model model, Service service, Dao dao) {
		List<Domain> domainList = ((GenericService) service).index(dao);
		model.addAttribute(listName, domainList);
		model.addAttribute(domainName +"Navi", "true");
		return domainName.concat("/index");
	}
	
	// POST		class/
	@RequestMapping (method=RequestMethod.POST)
	public String create(Model model, Domain domain, Service service, Dao dao) {
		boolean result = ((GenericService) service).create(domain, dao);
		model.addAttribute("result", result);
		return domainName.concat("/create");
	}
	
	// PUT		class/1
	@RequestMapping (value="/{id}", method=RequestMethod.PUT)
	public String update(Model model, Domain domain, @PathVariable("id") ID id, Service service, Dao dao) {
		boolean result = ((GenericService) service).update(domain, id, dao);
		model.addAttribute("result", result);
		return domainName.concat("/update");
	}
	
	// DELETE	class/
	@RequestMapping (value="/{id}", method=RequestMethod.DELETE)
	public String delete(Model model, @PathVariable("id") ID id, Service service, Dao dao) {
		boolean result = ((GenericService) service).delete(id, dao);
		model.addAttribute("result", result);
		return domainName.concat("/delete");
	}
}
