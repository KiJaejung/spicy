package com.with.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.with.dao.FriendDao;
import com.with.domain.Friend;
import com.with.domain.Member;
import com.with.service.FriendService;

@Controller
@RequestMapping (value="/friend")
public class FriendController extends MasterController<Friend, Long, FriendService, FriendDao> {
	
	// Friend 라인이지만 리턴타입은 멤버이기 때문에 새로 만듬
	@RequestMapping (value="/", method=RequestMethod.GET)
	public String index(Model model, HttpSession session ,Member member, FriendService service, FriendDao dao) {
		member = (Member) session.getAttribute("member");		
		List<Member> domainList = service.indexx(member.getId(), dao);
		model.addAttribute("friendList", domainList);
		return "friend/index";
	}
		
	@RequestMapping (value="/{me}/delete/{friend}", method=RequestMethod.DELETE)
	public String delete(Model model, @PathVariable("me") Long me, @PathVariable("friend") Long friend, FriendService service, FriendDao dao) {
		String result = service.delete(me, friend, dao);
		model.addAttribute("result", result);
		return "friend/delete";
	}
}