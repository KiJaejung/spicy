package com.with.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.admin.service.VisitListLogService;
import com.with.dao.FriendDao;
import com.with.dao.FriendStandbyDao;
import com.with.dao.PostsDao;
import com.with.dao.SessionDao;
import com.with.domain.Member;
import com.with.service.FriendStandbyService;
import com.with.service.PostsService;
import com.with.service.SessionService;

@Controller
public class SessionController implements HttpSessionAttributeListener, HttpSessionListener {
	
	private static HashMap<String,String> loginIndex = new HashMap<String,String>();
	private static HashMap<String,String> chatRoomIndex = new HashMap<String,String>();
	
	@RequestMapping (value="/", method=RequestMethod.GET)
	public String index(Model model, PostsService service, PostsDao dao, HttpSession session, Member member) {

		if (session.getAttribute("member") == null) {
			return "session/index";
		} else {
			return "session/timeline";
		}
	}
	
	@RequestMapping (method=RequestMethod.POST)
	public String login(Model model, Member member, PostsService service, HttpSession session, SessionDao dao, PostsDao postsDao, FriendStandbyService friendStandbyService, FriendStandbyDao friendStandbyDao) {	
		member = dao.login(member);
		if (member != null) {
			if (member.getName().equals("error")) {
				model.addAttribute("loginFault", "name");
				return "session/index";
			} else if(member.getPassword().equals("error")) {
				model.addAttribute("loginFault", "password");
				return "session/index";
			} else {
				VisitListLogService log = new VisitListLogService();
				log.create(member);
				loginIndex.put(member.getName(),"true");
				session.setAttribute("member", member);
				return "session/timeline";
			}
			
		} else if (member == null) {
			
			//다른 조에 회원으로 되어있다. 가입시킨다.
			return "session/timeline";
		} else {
			// 회원 가입이 어디에도 없다. 가입하라고 띄운다.
			return "session/timeline";
		}
		
		
		/*if (member.getEmail().equals("error")) {
			model.addAttribute("loginFault", "email");
			return "session/index";
		} else if(member.getPassword().equals("error")) {
			model.addAttribute("loginFault", "password");
			return "session/index";
		} else {
			
			List<Posts> domainList = service.index(member.getId(), postsDao);
			model.addAttribute("postsList", domainList);
			session.setAttribute("member", member);
			
			List<Member> friendStandbyList = friendStandbyService.indexMember(member.getId(), friendStandbyDao);
			session.setAttribute("friendStandbyList", friendStandbyList);
			session.setAttribute("friendStandbyListNumber", friendStandbyList.size());
			return "session/timeline";
		}*/
	}
	
	@RequestMapping (method=RequestMethod.DELETE)
	public String delete(Model model, Member member, HttpSession session) {
		member = (Member) session.getAttribute("member");
		loginIndex.remove(member.getName());
		session.removeAttribute("member");
		session.invalidate();
		return "session/index";
	}

	@RequestMapping (value="/loginList/{id}", method=RequestMethod.GET)
	public String loginList(@PathVariable("id") Long id, Model model, SessionService service, Member member, FriendDao dao) {
		List<Member> domainList = service.loginList(id, dao, loginIndex);
		model.addAttribute("loginList", domainList);
		return "session/loginList";
	}
	
	@RequestMapping (value="/{me}/chatRequest/{you}", method=RequestMethod.GET) 
	public String chatRequest(@PathVariable("me") String me, @PathVariable("you") String you, Model model, SessionService service, Member member, FriendDao dao) {
		chatRoomIndex.put(you, "http://203.233.196.177:52273?name="+you+"&room="+me.concat("_").concat(you));
		model.addAttribute("chatResult", "http://203.233.196.177:52273?name="+me+"&room="+me.concat("_").concat(you));
		return "session/chatRequest";
	}
	
	@RequestMapping (value="/chatResponse/{me}", method=RequestMethod.GET) 
	public String chatResponse(@PathVariable("me") String me, Model model, SessionService service, Member member, FriendDao dao) {
		if(chatRoomIndex.get(me) != null) {
			model.addAttribute("result", chatRoomIndex.get(me));
			System.out.println(chatRoomIndex.get(me));
			chatRoomIndex.remove(me);
		}
		return "session/chatResponse";
	}
	
	@RequestMapping (value="/chatAccept/{me}", method=RequestMethod.GET) 
	public String chatAccept(@PathVariable("me") String me, Model model, SessionService service, Member member, FriendDao dao) {
		chatRoomIndex.remove(me);
		return "session/chatRoomIndex";
	}
	
	
	@Override
	public void attributeAdded(HttpSessionBindingEvent arg0) {
		
	}

	@Override
	public void attributeRemoved(HttpSessionBindingEvent arg0) {
		
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent event) {
		
//		HttpSession session = event.getSession();
//		Member member = (Member) session.getAttribute("member");
//		System.out.println(member.getName());
	}

	@Override
	public void sessionCreated(HttpSessionEvent arg0) {
	}

	@Override
	public void attributeReplaced(HttpSessionBindingEvent arg0) {
		// TODO Auto-generated method stub
		
	}
}