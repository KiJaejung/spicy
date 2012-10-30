package com.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.admin.dao.SignupLogDao;
import com.admin.domain.SignupLog;
import com.admin.service.SignupLogService;

// 회원가입 관련 통계 Controller
@Controller
@RequestMapping(value="/admin/signuplog")
public class SignupLogController extends AdminController<SignupLog, Long, SignupLogService, SignupLogDao>{

}
