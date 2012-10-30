package com.with.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.with.dao.FriendStandbyDao;
import com.with.dao.MasterDao;
import com.with.domain.Friend;
import com.with.domain.FriendStandby;
import com.with.domain.Member;

public class FriendStandbyService extends MasterService<FriendStandby, Long, FriendStandbyDao>{

	public List<Member> requestList(Long id, FriendStandbyDao dao) {
		List<Member> domainList = dao.requestList(id);
		return domainList;
	}
	
	
	// 친구 신청을 한 날짜를 SET한다
	public String create(FriendStandby domain,FriendStandbyDao dao) {
		Date today = new Date();
	    SimpleDateFormat simDate = new SimpleDateFormat("yyyy-MM-dd");
	    String todayStr = simDate.format(today);
	    java.sql.Date date = java.sql.Date.valueOf(new String(todayStr));
		domain.setRequest_date(date);
		String result = dao.create(domain);
		return result;
	}

	// 친구 신청을 삭제한다
	public String delete(FriendStandby domain, FriendStandbyDao dao) {
		String result = dao.delete(domain);
		return null;
	}
}
