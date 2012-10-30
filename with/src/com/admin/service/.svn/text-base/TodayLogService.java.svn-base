package com.admin.service;

import com.admin.dao.MemberLogDao;
import com.admin.dao.TodayLogDao;
import com.admin.domain.MemberLog;
import com.admin.domain.TodayLog;

public class TodayLogService extends MasterService<TodayLog, Long, TodayLogDao>{

	public TodayLog showStatistics(TodayLogDao dao){
		TodayLog bean = dao.show();
		return bean;
	}
	public TodayLog showAllStatistics(TodayLogDao dao){
		TodayLog bean_all = dao.showAll();
		return bean_all;
	}
}
