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

import com.with.dao.MemberDao;
import com.with.domain.Member;
import com.with.mail.SendEmail;
import com.with.service.MasterService;
import com.with.service.MemberService;

@Controller
@RequestMapping (value="/member")
public class MemberController extends MasterController<Member, Long, MemberService, MemberDao> {
	
	// 메인페이지에서 회원가입을 요구했을 때 간단한 유효성 검사를 하고 인증메일을 보낸다.
	// 지금은 유효성 검사도 엉터리이기 때문에 나중에 다시 바꿔라
	@RequestMapping (value="/new", method=RequestMethod.POST)
	public String newly(Model model, Member member, MemberService service, MemberDao dao, HttpSession session) {
		if (member.getName().length() == 0 || member.getName() == null) {
			model.addAttribute("singupFault", "Incorrect Email address format");
			return "session/index";
		} else if (!(member.getEmail().contains("@"))) {
			model.addAttribute("singupFault", "Insert into Name");
			return "session/index";
		} else if (member.getPassword().length() < 8 ) {
			model.addAttribute("singupFault", "Use at least 8 characters to Password");
			return "session/index";
		} else {
			SendEmail mail = new SendEmail();
			mail.send(member);
			session.setAttribute("memberReady", member);
			return "member/new";
		}
	}
	
	@RequestMapping (value="/create", method=RequestMethod.GET)
	public String create(Member member, MemberService service, MemberDao dao, HttpSession session) {
		member = (Member) session.getAttribute("memberReady");
		session.setAttribute("member", member);	
		member.setPicture("default");;
		String result = service.create(member, dao);
		return "session/timeline";
	}
	
	// GET		class/1/find/2
	@RequestMapping (value="search/{name}", method=RequestMethod.GET)
	public String search(Model model, @PathVariable("name") String name, MemberService service, MemberDao dao) {
		List<Member> searchList = service.search(name, dao);
		model.addAttribute("searchList", searchList);
		return "member/search";
	}
	
	// PUT		회원정보수정
	@RequestMapping (value="/update/{id}", method=RequestMethod.PUT)
	public String update(/*@RequestParam("image") MultipartFile file,*/ @PathVariable("id") Long id, @RequestParam("tempBirth") String birthday, Member member, MemberService service, MemberDao dao, HttpSession session){
		System.out.println("1. MemberController당!!");
		
		member.setId(id);
		
		// String -> Date 형식으로
		java.sql.Date date = java.sql.Date.valueOf(birthday);
		member.setBirth(date);

		String result = service.update(member, dao/*, file*/);
		session.setAttribute("member", member);
		return "member/edit";
	}
	// POST		회원사진수정
	@RequestMapping (value="/updateImage/{id}", method=RequestMethod.POST)
	public String updateImage(@RequestParam("image") MultipartFile file, @PathVariable("id") Long id, Member member, MemberService service, MemberDao dao, HttpSession session){
		member.setId(id);
		String result = service.updateImage(member, dao, file);
		session.setAttribute("member", member);
		
		return "member/edit";
	}
}