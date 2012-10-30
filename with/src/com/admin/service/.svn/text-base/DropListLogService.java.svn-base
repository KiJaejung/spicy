package com.admin.service;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.admin.dao.DropListLogDao;
import com.admin.domain.DropListLog;
import com.with.dao.MasterDao;

public class DropListLogService {
	public String delete(DropListLog domain, DropListLogDao dao) {
		Date today = new Date();
	    SimpleDateFormat simDate = new SimpleDateFormat("yyyy-MM-dd");
	    String todayStr = simDate.format(today);
	    java.sql.Date date = java.sql.Date.valueOf(new String(todayStr));
	    domain.setDropdate(date);
		String result = dao.delete(domain);
		return result;
	}
}