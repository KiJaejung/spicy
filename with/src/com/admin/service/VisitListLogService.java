package com.admin.service;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.admin.dao.VisitListLogDao;
import com.admin.domain.VisitListLog;
import com.with.domain.Member;

public class VisitListLogService {

	public void create(Member member){
		VisitListLogDao dao	= new VisitListLogDao();
		VisitListLog domain = new VisitListLog();
		domain.setMember_id(Integer.parseInt(String.valueOf(member.getId())));
		Date today = new Date();
	    SimpleDateFormat simDate = new SimpleDateFormat("yyyy-MM-dd");
	    String todayStr = simDate.format(today);
	    java.sql.Date date = java.sql.Date.valueOf(new String(todayStr));
	    domain.setVisitdate(date);
	    String result = dao.create(domain);
	    System.out.println("로그인 기록을 남겼느냐 : " + result);
	}
}
