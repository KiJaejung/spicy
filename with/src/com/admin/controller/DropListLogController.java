package com.admin.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.admin.dao.DropListLogDao;
import com.admin.domain.DropListLog;
import com.admin.service.DropListLogService;

//회원탈퇴 시키는 Controller
@Controller
@RequestMapping(value="/member")
public class DropListLogController extends AdminController<DropListLog, Long, DropListLogService, DropListLogDao>{
	
	@RequestMapping(value="/delete/", method=RequestMethod.DELETE)
	public String delete(DropListLog doamin, DropListLogService service, DropListLogDao dao, HttpSession session) {
		String result = service.delete(doamin, dao);
		session.invalidate();
		return "/member/delete";
	}
	
}
