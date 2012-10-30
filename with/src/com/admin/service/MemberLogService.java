package com.admin.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.admin.dao.MemberLogDao;
import com.admin.domain.MemberLog;

public class MemberLogService extends MasterService<MemberLog, Long,MemberLogDao>{

	public List<MemberLog> show(int period, String startDay, String endDay, MemberLogDao dao) {
		
		// 일자별 가입자리스트를 가져오기위해
		// 현재
		Date date = new Date();
		Date day = new Date();
		
		java.sql.Date todate ;
		java.sql.Date qDate ;
		SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
	
		// 구할날자
		if (period != 0) {
			day.setTime(period * 24 * 60 * 60 * 1000L);
			//오늘 날짜 계산
			String toDay = simpleDate.format(date.getTime() - day.getTime());
			//계산된 날짜
			todate = java.sql.Date.valueOf(new String(toDay));
			//계산된 날짜 세팅
			toDay = simpleDate.format(date.getTime());
			qDate = java.sql.Date.valueOf(new String(toDay));
			
		}else{
			System.out.println(startDay);
			System.out.println(endDay);
			
			/*String sDay = simpleDate.format(startDay);
			String eDay = simpleDate.format(endDay);
			*/
			todate = java.sql.Date.valueOf(startDay);
			System.out.println(todate);
			qDate = java.sql.Date.valueOf(endDay);
			System.out.println(qDate);			
		}
		List<MemberLog> list = dao.show(todate,qDate);
		return list;
	}

}
