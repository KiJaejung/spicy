package com.admin.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.with.service.MasterService;
// 관리자화면 처음 접근할 때 쓰는 Controller
@Controller
@RequestMapping(value="/admin")
public class AdminStartController {
	@RequestMapping(method=RequestMethod.GET)
	public String index() {	
		return "/admin/todaylog/index";		
	}
}
