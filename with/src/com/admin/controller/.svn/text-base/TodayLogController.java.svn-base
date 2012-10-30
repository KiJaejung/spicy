package com.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.admin.dao.TodayLogDao;
import com.admin.domain.TodayLog;
import com.admin.service.TodayLogService;


/*extends AdminController<TodayLog, Long, 
TodayLogService, TodayLogDao>{
*/

@Controller
@RequestMapping(value = "/admin/todaylog")
public class TodayLogController extends AdminController<TodayLog, Long, TodayLogService, TodayLogDao>{

	@RequestMapping(value = "showss")
	public String show(Model model, TodayLogService service, TodayLogDao dao)
	{
		TodayLog bean =service.showStatistics(dao);
		model.addAttribute("bean", bean);
		
		return "/admin/todaylog/showResult";		
	}
	@RequestMapping(value="showssAll")
	public String show_all(Model model, TodayLogService service, TodayLogDao dao)
	{
		TodayLog bean_all =service.showAllStatistics(dao);
		model.addAttribute("bean_all", bean_all);
	/*	System.out.println(bean_all.getDropcount());
		System.out.println(bean_all.getPostscount());
		System.out.println(bean_all.getSignupcount());
		System.out.println(bean_all.getVisitcount());*/
		
		
		return "/admin/todaylog/showAllResult";
	}
	@RequestMapping(value="showIndex")
	public String show_index(Model model, TodayLogService service, TodayLogDao dao)
	{
		TodayLog bean =service.showStatistics(dao);
		model.addAttribute("bean", bean);		
		return "/admin/root/showResult";		
	}
	

}
