package com.admin.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.admin.dao.MemberAdminDao;
import com.admin.domain.MemberAdmin;
import com.admin.mail.SendEmailToAll;
import com.admin.mail.SendEmailToEach;
import com.admin.service.MemberAdminService;

// 회원관리(목록,삭제)할때 쓰는 Controller
@Controller
@RequestMapping(value="/admin/member")
public class MemberAdminController extends AdminController<MemberAdmin, Long, MemberAdminService, MemberAdminDao>{
	
	@RequestMapping (value="/show/{period}", method=RequestMethod.GET)
	public String show(Model model, MemberAdmin member, @PathVariable("period") Long period, MemberAdminService service, MemberAdminDao dao) {
		List<MemberAdmin> list = ((MemberAdminService) service).show(dao, period);
		model.addAttribute("memberadminList", list);
		return "/admin/memberadmin/show";
	}
	//전체 회원 조회 Controller
	@RequestMapping (value="/showWhole/{period}", method=RequestMethod.GET)
	public String showWhole(Model model, MemberAdmin member, @PathVariable("period") Long period, MemberAdminService service, MemberAdminDao dao) {
		List<MemberAdmin> list = ((MemberAdminService) service).showWhole(dao, period);
		model.addAttribute("memberadminList", list);
		return "/admin/memberadmin/show";

	}
	//기간별 조회 데이터 Controller
	@RequestMapping (value="/showPeriod/{periodStart}/{periodEnd}", method=RequestMethod.GET)
	public String showPeriod(Model model, MemberAdmin member, @PathVariable("periodStart") String periodStart,@PathVariable("periodEnd") String periodEnd, MemberAdminService service, MemberAdminDao dao) {
		List<MemberAdmin> list = ((MemberAdminService) service).showPeriod(dao, periodStart, periodEnd);
		model.addAttribute("memberadminList", list);
		return "/admin/memberadmin/show";
	}
	
	@RequestMapping(value="/email")
	public String showEmail(){	
		return "admin/memberadmin/email";
	}
	
	@RequestMapping(value="/email/send", method=RequestMethod.POST)
	public String sendEmail(Model model, MemberAdminService service, MemberAdminDao dao, HttpServletRequest request){
		String recipients = request.getParameter("recipients");
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		
		// 회원 목록이 비었으면 전체전송이고 아니면 개별전송(전체 목록을 가져와 한명한명에게 메일전송)
		if(recipients == ""){
			List<MemberAdmin> list = ((MemberAdminService) service).send(dao);
			SendEmailToAll toAll = new SendEmailToAll();
			for (MemberAdmin m : list) {
				toAll.send(m, title, contents);
			}
			model.addAttribute("sendEmailList", list);
		} else {
			// 보낼 회원의 목록이","로 합쳐져 있으므로 자른다
			StringTokenizer token = new StringTokenizer(recipients, ",");
			SendEmailToEach toEach = new SendEmailToEach();
			
			List<MemberAdmin> list = new ArrayList<MemberAdmin>();
			
			while(token.hasMoreTokens()){
				String str = token.nextToken();
				
				// 개개인의 E-mail정보를 담기위해 선언
				MemberAdmin member = new MemberAdmin();
				member.setEmail(str);
				
				list.add(member);
				toEach.send(str, title, contents);
			}
			
			model.addAttribute("sendEmailList", list);
		}
		return "admin/memberadmin/sendResult";
	}
	
@RequestMapping(value="/email/autocomplete/{email_add}", method=RequestMethod.POST)
	public String emailAutocomplete(Model model, @PathVariable("email_add") String email_add, MemberAdmin member, MemberAdminService service, MemberAdminDao dao){
		List<MemberAdmin> list = ((MemberAdminService) service).searchAddress(dao, email_add);
		model.addAttribute("searchList", list);
		
		return "admin/memberadmin/searchEmailList";
	}
}
