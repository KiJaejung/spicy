package com.admin.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.admin.dao.WrittenLogDao;
import com.admin.domain.WrittenLog;
import com.admin.service.WrittenLogService;

// 작성된글 통계할때 쓰는 Controller
@Controller
@RequestMapping(value="/admin/writtenlog")
public class WrittenLogController extends AdminController<WrittenLog, Long, WrittenLogService, WrittenLogDao>{
	@RequestMapping(value ="/showss", method = RequestMethod.POST)
	public String show(Model model, @RequestParam("period")int period, 
			@RequestParam("startPeriod")String start, 
			@RequestParam("endPeriod")String end, WrittenLogService service, WrittenLogDao dao){
		
		List<WrittenLog> list = service.showStatistics(period, start, end, dao);

		model.addAttribute("list", list);
		return "/admin/writtenlog/showResult";
		
	}
}
