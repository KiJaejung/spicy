package com.admin.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.admin.dao.MemberLogDao;
import com.admin.domain.MemberLog;
import com.admin.service.MemberLogService;


@Controller
@RequestMapping(value="/admin/memberlog")
public class MemberLogController extends AdminController<MemberLog, Long, MemberLogService, MemberLogDao> {

	@RequestMapping(value="/show/exam",method=RequestMethod.POST)
	public String show(Model model, @RequestParam("period")int period, 
			@RequestParam("startPeriod")String start, @RequestParam("endPeriod")String end, MemberLog domain, MemberLogService service, MemberLogDao dao){
		List<MemberLog> list	= service.show(period,start,end,dao);
		model.addAttribute("memberLogList", list);
		return "/admin/memberlog/show";
	}
}
