package com.with.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.with.dao.FriendStandbyDao;
import com.with.domain.Friend;
import com.with.domain.FriendStandby;
import com.with.domain.Member;
import com.with.service.FriendService;
import com.with.service.FriendStandbyService;
import com.with.service.MasterService;

@Controller
@RequestMapping (value="/friendstandby")
public class FriendStandbyController extends MasterController<FriendStandby, Long, FriendStandbyService, FriendStandbyDao>{
	
	// FriendStandby 클래스이지만 실제 DAO 에서 리턴받는 타입은 Member 이기 때문에 새로 만들었다
	@RequestMapping (value="/requestList/{id}", method=RequestMethod.GET)
	public String requestList(Model model, @PathVariable("id") Long id, FriendStandbyService service, FriendStandbyDao dao) {
		List<Member> domainList = service.requestList(id, dao);
		model.addAttribute("requestList", domainList);
		return "friendstandby/requestList";
	}
	
	// DELETE 변수가 2개 필요해서 새로 추가
	// 변수 2개를 파라미터로 받지 않고, 그냥 객체 타입으로 받았다
	@RequestMapping (method=RequestMethod.DELETE)
	public String delete(Model model, FriendStandby domain, FriendStandbyService service, FriendStandbyDao dao) {
		String result = service.delete(domain, dao);
		List<Member> domainList = service.requestList(domain.getAccept(), dao);
		model.addAttribute("result", domainList.size());
		return "friendstandby/delete";
	}
	
	// 친구 대기 테이블에서 대기열 삭제
	// 친구 테이블에 2열 삽입
	@RequestMapping (method=RequestMethod.PUT)
	public String done(Model model, FriendStandby domain, FriendStandbyService service, FriendStandbyDao dao) {
		String result = service.delete(domain, dao);
		model.addAttribute("result", result);
		
		FriendService friendSerive = new FriendService();
		Friend fDomian = new Friend();
		fDomian.setAccept(domain.getAccept().intValue());
		fDomian.setRequest(domain.getRequest().intValue());
		String result1 = friendSerive.create(fDomian);
		
		fDomian.setAccept(domain.getRequest().intValue());
		fDomian.setRequest(domain.getAccept().intValue());
		String result2 = friendSerive.create(fDomian);	
		return "friendstandby/done";
	}
}
