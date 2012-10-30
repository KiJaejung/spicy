package com.admin.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.admin.dao.WrittenLogDao;
import com.admin.domain.WrittenLog;

public class WrittenLogService extends MasterService<WrittenLog, Long, WrittenLogDao>{
	public List<WrittenLog> showStatistics(int period, String start, String end, WrittenLogDao dao){
		Date date = new Date();
		Date day  = new Date();
		java.sql.Date startDay;
		java.sql.Date endDay;
		SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
		
		if(period !=0){
			day.setTime(period * 24 * 60 * 60 * 1000L);
			String toDay = simpleDate.format(date.getTime() - day.getTime());
			startDay = java.sql.Date.valueOf(new String (toDay));
			toDay = simpleDate.format(date.getTime());
			endDay = java.sql.Date.valueOf(new String (toDay));
		}else{
			startDay = java.sql.Date.valueOf(start);
			endDay = java.sql.Date.valueOf(end);
		}
		List<WrittenLog> list = dao.showAll(startDay, endDay);
				
		
		return list;		
	}
}
