package com.with.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.with.service.MasterService;


// 마스터 컨트롤러
// 추상 클래스이며 제네릭으로 4개의 타입을 가지고 있다
// 하위 컨트롤러 클래스들은 상속받을 때 각자가 원하는 타입으로 상속받는다

// 추상 클래스인 마스터 서비스를 상속받으며 상속받을 때, 자신의 제네릭 1번째, 2번째, 4번째의 타입으로 상속받는다

// 클래스에는 @RequestMapping 이 없으며 상속받는 하위 클래스에서 클래스 단위의 @RequestMapping을 한다
// 마스터 컨트롤러에서는 메서드의 @RequestMapping만 한다.

// 도메인 데이터의 가공은 컨트롤러에서 하지 않는다!

@SuppressWarnings("unchecked")
@Controller
public abstract class MasterController<Domain, ID, Service, Dao> extends MasterService<Domain, ID, Dao>  {
		
	// 스프링 뷰 리졸브에서 jsp 파일의 경로,이름
	// Model 에서 사용할 파라미터 이름을 만들기 위해 하위 클래스의 이름을 기준으로 스트링 변수를 만든다
	private String className = this.getClass().getSimpleName().toLowerCase();
	private int classNameLength = className.length();
	private final int controllerLength = 10; 
	private String domainName = className.substring(0, classNameLength - controllerLength);
	private String listName = domainName.concat("List");
	
	// GET		class/1
	@RequestMapping (value="/{id}", method=RequestMethod.GET)
	public String index(Model model, @PathVariable("id") ID id, Service service, Dao dao) {
		List<Domain> domainList = ((MasterService) service).index(id, dao);
		model.addAttribute(listName, domainList);
		return domainName.concat("/index");
	}
	
	// GET		class/show/1
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
		return domainName.concat("/find");
	}
	
	// GET		class/new
	@RequestMapping (value="/new", method=RequestMethod.GET)
	public String newly(Service service, Dao dao) {
		return domainName.concat("/new");
	}
	
	// GET		class/{id}/edit - id의 정보를 수정하는 메소드
	@RequestMapping (value="/{id}/edit", method=RequestMethod.GET)
	public String edit(@PathVariable("id") ID id, Service service, Dao dao) {
		Domain domain = (Domain) ((MasterService) service).edit(id, dao);
		return domainName.concat("/edit");
	}
	
	// POST		class/
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
	}
	
	// DELETE	class/
	@RequestMapping (value="/{id}", method=RequestMethod.DELETE)
	public String delete(Model model, @PathVariable("id") ID id, Service service, Dao dao) {
		String result = ((MasterService) service).delete(id, dao);
		model.addAttribute("result", result);
		return domainName.concat("/delete");
	}
}