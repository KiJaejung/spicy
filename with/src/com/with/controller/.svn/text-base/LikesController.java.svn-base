package com.with.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.with.dao.LikesDao;
import com.with.domain.Likes;
import com.with.domain.Member;
import com.with.service.LikesService;

@Controller
@RequestMapping (value="/likes")
public class LikesController extends MasterController<Likes, Long, LikesService, LikesDao> {
	
	//재중 : 필요한 메서드 전부 새로 추가
	@RequestMapping(value="/check", method=RequestMethod.POST)
	public String check(Model model, Likes domain, LikesService service,LikesDao dao, HttpSession session, Member member){
		String result = service.check(domain, dao, session, member);
		model.addAttribute("result", result);
		return "likes/show";
	}
	
	@RequestMapping(value="/up", method=RequestMethod.POST)
	public String create(Model model, Likes domain, LikesService service,LikesDao dao, HttpSession session, Member member){
		service.create(domain, dao, session, member);
		return "likes/show";
	}
	@RequestMapping (value="/result/{id}", method=RequestMethod.GET)
	public String show(Model model, @PathVariable("id") int id, LikesService service, LikesDao dao) {
		int result = service.show(id, dao);
		model.addAttribute("result", result);
		return "likes/show";
	}
}
