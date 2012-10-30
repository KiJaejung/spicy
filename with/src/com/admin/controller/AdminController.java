package com.admin.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.admin.service.MasterService;

@Controller
public abstract class AdminController<Domain, ID, Service, Dao>{
	
	
	// 스프링 뷰 리졸브에서 jsp 파일의 경로,이름
	// Model 에서 사용할 파라미터 이름을 만들기 위해 하위 클래스의 이름을 기준으로 스트링 변수를 만든다
	private String className = this.getClass().getSimpleName().toLowerCase();
	private int classNameLength = className.length();
	private final int controllerLength = 10; 
	private String domainName = "/admin/"+className.substring(0, classNameLength - controllerLength);
	private String listName = domainName.concat("List");
	
	// GET		class/1
	@RequestMapping (value="/index", method=RequestMethod.GET)
	public String index(Model model, Service service, Dao dao) {
		//List<Domain> domainList = ((MasterService) service).index(dao);
		//model.addAttribute(listName, domainList);
		return domainName.concat("/index");
	}
	
	@RequestMapping (value="/show", method=RequestMethod.GET)
	public String show(Model model, Long id, Service service, Dao dao) {
		//List<Domain> domainList = ((MasterService) service).index(dao);
		//model.addAttribute(listName, domainList);
		List<Domain> list = ((MasterService) service).show(id, dao);
		System.out.println(listName);
		model.addAttribute(listName, list);
		return domainName.concat("/index");
	}
	
	// DELETE	class/1
	@RequestMapping (value="/{id}{id2}", method=RequestMethod.DELETE)
	public String delete(Model model, @PathVariable("id") Long id, Service service, Dao dao) {
		String result = ((MasterService) service).delete(id, dao);
		model.addAttribute("result", result);
		return domainName.concat("/delete");
	}
		
	/*// GET		class/show/1
	@RequestMapping (value="/show/{id}", method=RequestMethod.GET)
	public String show(Model model, @PathVariable("id") ID id, Service service, Dao dao) {
		Domain domain = (Domain) ((MasterService) service).show(id, dao);
		model.addAttribute(domainName, domain);
		return domainName.concat("/show");
	}
	
	// GET		class/1/find/2
	@RequestMapping (value="{id1}/find/{id2}", method=RequestMethod.GET)
	public String find(Model model, @PathVariable("id1") ID id1, @PathVariable("id2") ID id2, Service service, Dao dao) {
		Domain domain = (Domain) ((MasterService) service).find(id1, id2, dao);
		model.addAttribute(domainName, domain);
		return domainName.concat("/show");
	}
	
	// GET		class/new
	@RequestMapping (value="/new", method=RequestMethod.GET)
	public String newly(Service service, Dao dao) {
		return domainName.concat("/new");
	}
	
	// GET		class/1/edit
	@RequestMapping (value="/{id}/edit", method=RequestMethod.GET)
	public String edit(@PathVariable("id") ID id, Service service, Dao dao) {
		Domain domain = (Domain) ((MasterService) service).edit(id, dao);
		return domainName.concat("/edit");
	}
	
	// POST		class/1/edit
	@RequestMapping (method=RequestMethod.POST)
	public String create(Model model, Domain domain, Service service, Dao dao) {
		String result = ((MasterService) service).create(domain, dao);
		model.addAttribute("result", result);
		return domainName.concat("/create");
	}
	
	// PUT		class/1
	@RequestMapping (value="/{id}", method=RequestMethod.PUT)
	public String update(Model model, Domain domain, @PathVariable("id") ID id, Service service, Dao dao) {
		String result = ((MasterService) service).update(domain, id, dao);
		model.addAttribute("result", result);
		return domainName.concat("/update");
	}*/
}
